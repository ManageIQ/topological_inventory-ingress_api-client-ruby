=begin
#Topological Inventory Ingress API

#Topological Inventory Ingress API

OpenAPI spec version: 0.0.2
Contact: agrare@redhat.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module TopologicalInventory
  module IngressApi
    module Client

      class ContainerNode
        attr_accessor :source_ref

        attr_accessor :resource_version

        attr_accessor :name

        attr_accessor :cpus

        attr_accessor :memory

        attr_accessor :source_created_at

        attr_accessor :source_deleted_at

        attr_accessor :resource_timestamp


        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'source_ref' => :'source_ref',
            :'resource_version' => :'resource_version',
            :'name' => :'name',
            :'cpus' => :'cpus',
            :'memory' => :'memory',
            :'source_created_at' => :'source_created_at',
            :'source_deleted_at' => :'source_deleted_at',
            :'resource_timestamp' => :'resource_timestamp'
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            :'source_ref' => :'String',
            :'resource_version' => :'String',
            :'name' => :'String',
            :'cpus' => :'Integer',
            :'memory' => :'Integer',
            :'source_created_at' => :'DateTime',
            :'source_deleted_at' => :'DateTime',
            :'resource_timestamp' => :'DateTime'
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

          if attributes.has_key?(:'source_ref')
            self.source_ref = attributes[:'source_ref']
          end

          if attributes.has_key?(:'resource_version')
            self.resource_version = attributes[:'resource_version']
          end

          if attributes.has_key?(:'name')
            self.name = attributes[:'name']
          end

          if attributes.has_key?(:'cpus')
            self.cpus = attributes[:'cpus']
          end

          if attributes.has_key?(:'memory')
            self.memory = attributes[:'memory']
          end

          if attributes.has_key?(:'source_created_at')
            self.source_created_at = attributes[:'source_created_at']
          end

          if attributes.has_key?(:'source_deleted_at')
            self.source_deleted_at = attributes[:'source_deleted_at']
          end

          if attributes.has_key?(:'resource_timestamp')
            self.resource_timestamp = attributes[:'resource_timestamp']
          end

        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @source_ref.nil?
            invalid_properties.push("invalid value for 'source_ref', source_ref cannot be nil.")
          end

          return invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @source_ref.nil?
          return true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              source_ref == o.source_ref &&
              resource_version == o.resource_version &&
              name == o.name &&
              cpus == o.cpus &&
              memory == o.memory &&
              source_created_at == o.source_created_at &&
              source_deleted_at == o.source_deleted_at &&
              resource_timestamp == o.resource_timestamp
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [source_ref, resource_version, name, cpus, memory, source_created_at, source_deleted_at, resource_timestamp].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          self.class.swagger_types.each_pair do |key, type|
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end # or else data not found in attributes(hash), not an issue as the data can be optional
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :DateTime
            DateTime.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :BOOLEAN
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            temp_model = TopologicalInventory::IngressApi::Client.const_get(type).new
            temp_model.build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
        end

        # Returns the object in the form of hash
        # @return [Hash] Returns the object in the form of hash
        def to_hash
          hash = {}
          self.class.attribute_map.each_pair do |attr, param|
            value = self.send(attr)
            next if value.nil?
            hash[param] = _to_hash(value)
          end
          hash
        end

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map{ |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end

      end

    end
  end
end
