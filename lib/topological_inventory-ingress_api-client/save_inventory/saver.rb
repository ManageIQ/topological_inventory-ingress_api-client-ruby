require "topological_inventory-ingress_api-client/save_inventory/exception"

module TopologicalInventoryIngressApiClient
  module SaveInventory
    class Saver
      def initialize(client, logger)
        @client = client
        @logger = logger
      end

      attr_reader :client, :logger

      def save(data)
        save_wrapper(data) do |params|
          client.save_inventory_with_http_info(params)
        end
      end

      private

      def save_wrapper(data)
        max_tries         = 10
        sleep_time        = 10
        error             = nil
        (1..max_tries).each do |i|
          begin
            return yield(data)
          rescue TopologicalInventoryIngressApiClient::ApiError => e
            collections_names = data[:inventory].sweep_scope || data[:inventory].collections.map(&:name)

            logger.error("Error message: #{e.message}. Error headers: #{e&.response_headers}. Inventory: #{collections_names}")
            logger.error(e)

            sleep(i * sleep_time)

            error = e
          end
        end

        raise(
          TopologicalInventoryIngressApiClient::SaveInventory::Exception::UnableToSavePayload,
          "Unable to save payload after #{max_tries} tries. Error message: #{error.message}. "\
          "Error headers: #{error&.response_headers}. Payload #{data}"
        )
      end
    end
  end
end
