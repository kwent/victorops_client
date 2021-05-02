=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module VictorOpsClient
  # Alert details. All fields should be considered optional.
  class GetAlertResponse
    # The type of alert; INFO, WARNING, ACKNOWLEDGEMENT, CRITICAL, RECOVERY 
    attr_accessor :message_type

    # Identifies the entity (host, service, etc.) this alert was about. 
    attr_accessor :entity_id

    # Timestamp of the alert in seconds since epoch.
    attr_accessor :timestamp

    # The time this entity entered its current state (seconds since epoch).
    attr_accessor :state_start_time

    # Any additional status information from the alert item.
    attr_accessor :state_message

    # The name of the monitoring system software (eg. nagios, icinga, sensu, etc.)
    attr_accessor :monitoring_tool

    # Used within VictorOps to display a human-readable name for the entity.
    attr_accessor :entity_display_name

    # A user entered comment for the acknowledgment.
    attr_accessor :ack_msg

    # The user that acknowledged the incident.
    attr_accessor :ack_author

    # The full, raw alert details JSON string (i.e. parse the string into a JSON object) 
    attr_accessor :raw

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'message_type' => :'messageType',
        :'entity_id' => :'entityId',
        :'timestamp' => :'timestamp',
        :'state_start_time' => :'stateStartTime',
        :'state_message' => :'stateMessage',
        :'monitoring_tool' => :'monitoringTool',
        :'entity_display_name' => :'entityDisplayName',
        :'ack_msg' => :'ackMsg',
        :'ack_author' => :'ackAuthor',
        :'raw' => :'raw'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'message_type' => :'String',
        :'entity_id' => :'String',
        :'timestamp' => :'Float',
        :'state_start_time' => :'Float',
        :'state_message' => :'String',
        :'monitoring_tool' => :'String',
        :'entity_display_name' => :'String',
        :'ack_msg' => :'String',
        :'ack_author' => :'String',
        :'raw' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'messageType')
        self.message_type = attributes[:'messageType']
      end

      if attributes.has_key?(:'entityId')
        self.entity_id = attributes[:'entityId']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'stateStartTime')
        self.state_start_time = attributes[:'stateStartTime']
      end

      if attributes.has_key?(:'stateMessage')
        self.state_message = attributes[:'stateMessage']
      end

      if attributes.has_key?(:'monitoringTool')
        self.monitoring_tool = attributes[:'monitoringTool']
      end

      if attributes.has_key?(:'entityDisplayName')
        self.entity_display_name = attributes[:'entityDisplayName']
      end

      if attributes.has_key?(:'ackMsg')
        self.ack_msg = attributes[:'ackMsg']
      end

      if attributes.has_key?(:'ackAuthor')
        self.ack_author = attributes[:'ackAuthor']
      end

      if attributes.has_key?(:'raw')
        self.raw = attributes[:'raw']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          message_type == o.message_type &&
          entity_id == o.entity_id &&
          timestamp == o.timestamp &&
          state_start_time == o.state_start_time &&
          state_message == o.state_message &&
          monitoring_tool == o.monitoring_tool &&
          entity_display_name == o.entity_display_name &&
          ack_msg == o.ack_msg &&
          ack_author == o.ack_author &&
          raw == o.raw
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [message_type, entity_id, timestamp, state_start_time, state_message, monitoring_tool, entity_display_name, ack_msg, ack_author, raw].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = VictorOpsClient.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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