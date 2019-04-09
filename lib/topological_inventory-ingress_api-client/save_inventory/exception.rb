module TopologicalInventoryIngressApiClient
  module SaveInventory
    class Exception
      class Error < StandardError; end
      class UnableToSavePayload < Error; end
    end
  end
end
