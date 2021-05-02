=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module VictorOpsClient
  # Incidents contain the following fields (all should be considered optional)
  class IncidentInfo
    # The VictorOps incident number
    attr_accessor :incident_number

    # The time the incident started  The format of the start time is in `yyyy-MM-dd'T'HH:mm:ssZ`.
    attr_accessor :start_time

    # The current phase of the incident can be resolved, triggered (UNACKED) or acknowledged (ACKED).
    attr_accessor :current_phase

    # The number of alerts received for this incident
    attr_accessor :alert_count

    # The time of the last alert received for the incident  The format of the last alert time is in `yyyy-MM-dd'T'HH:mm:ssZ`.
    attr_accessor :last_alert_time

    # The UUID of the last alert for the incident
    attr_accessor :last_alert_id

    # The unique identification of the entity being monitored that caused the incident
    attr_accessor :entity_id

    # The host on which the incident occurred
    attr_accessor :host

    # The service name causing the incident (if any)
    attr_accessor :service

    # A list of the Victorops usernames of the users that were paged for the incident.
    attr_accessor :paged_users

    # The teams that were paged for the incident  This is a list of the team slugs of the teams that were paged.  The team slug is in the format `team-[\\w\\d]{16}`
    attr_accessor :paged_teams

    # The escalation policy summaries that were triggered for the incident
    attr_accessor :paged_policies

    # Transitions of the incident state over time
    attr_accessor :transitions

    # The UUID of the first alert for this incident.  You can use this id to call the get alert endpoint in the Alerts section (`/api-public/v1/alerts/{uuid}`) to get more information about the alert that started this incident.  The state message field for the first alert will have the original, more detailed description of the incident.
    attr_accessor :first_alert_uuid

    # This is the name of the creator of this incident. If this incident was manually triggered, this is the username of the user that triggered it. If this incident was not manually triggered, this is the name of the service that triggered it.  The format for manual creation is `vouser-{username}`.  The format for a system creating an incident is `{service-name}`.
    attr_accessor :monitor_name

    # The type of the monitor of the incident, as named in the monitorName, that triggered the incident. Either manual (if a user created the incident) or the name of the service that triggered the incident
    attr_accessor :monitor_type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'incident_number' => :'incidentNumber',
        :'start_time' => :'startTime',
        :'current_phase' => :'currentPhase',
        :'alert_count' => :'alertCount',
        :'last_alert_time' => :'lastAlertTime',
        :'last_alert_id' => :'lastAlertId',
        :'entity_id' => :'entityId',
        :'host' => :'host',
        :'service' => :'service',
        :'paged_users' => :'pagedUsers',
        :'paged_teams' => :'pagedTeams',
        :'paged_policies' => :'pagedPolicies',
        :'transitions' => :'transitions',
        :'first_alert_uuid' => :'firstAlertUuid',
        :'monitor_name' => :'monitorName',
        :'monitor_type' => :'monitorType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'incident_number' => :'String',
        :'start_time' => :'String',
        :'current_phase' => :'String',
        :'alert_count' => :'Float',
        :'last_alert_time' => :'String',
        :'last_alert_id' => :'String',
        :'entity_id' => :'String',
        :'host' => :'String',
        :'service' => :'String',
        :'paged_users' => :'Array<String>',
        :'paged_teams' => :'Array<String>',
        :'paged_policies' => :'Array<EscalationPolicyInfo>',
        :'transitions' => :'Array<IncidentTransition>',
        :'first_alert_uuid' => :'String',
        :'monitor_name' => :'String',
        :'monitor_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'incidentNumber')
        self.incident_number = attributes[:'incidentNumber']
      end

      if attributes.has_key?(:'startTime')
        self.start_time = attributes[:'startTime']
      end

      if attributes.has_key?(:'currentPhase')
        self.current_phase = attributes[:'currentPhase']
      end

      if attributes.has_key?(:'alertCount')
        self.alert_count = attributes[:'alertCount']
      end

      if attributes.has_key?(:'lastAlertTime')
        self.last_alert_time = attributes[:'lastAlertTime']
      end

      if attributes.has_key?(:'lastAlertId')
        self.last_alert_id = attributes[:'lastAlertId']
      end

      if attributes.has_key?(:'entityId')
        self.entity_id = attributes[:'entityId']
      end

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.has_key?(:'pagedUsers')
        if (value = attributes[:'pagedUsers']).is_a?(Array)
          self.paged_users = value
        end
      end

      if attributes.has_key?(:'pagedTeams')
        if (value = attributes[:'pagedTeams']).is_a?(Array)
          self.paged_teams = value
        end
      end

      if attributes.has_key?(:'pagedPolicies')
        if (value = attributes[:'pagedPolicies']).is_a?(Array)
          self.paged_policies = value
        end
      end

      if attributes.has_key?(:'transitions')
        if (value = attributes[:'transitions']).is_a?(Array)
          self.transitions = value
        end
      end

      if attributes.has_key?(:'firstAlertUuid')
        self.first_alert_uuid = attributes[:'firstAlertUuid']
      end

      if attributes.has_key?(:'monitorName')
        self.monitor_name = attributes[:'monitorName']
      end

      if attributes.has_key?(:'monitorType')
        self.monitor_type = attributes[:'monitorType']
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
      current_phase_validator = EnumAttributeValidator.new('String', ['RESOLVED', 'UNACKED', 'ACKED'])
      return false unless current_phase_validator.valid?(@current_phase)
      monitor_type_validator = EnumAttributeValidator.new('String', ['UNKNOWN', 'PINGDOM', 'NAGIOS', 'HEALTHCHECKER', 'API', 'Cloudwatch', 'NewRelic', 'Zabbix', 'Email', 'Splunk', 'ServiceNow', 'Manual', 'etc'])
      return false unless monitor_type_validator.valid?(@monitor_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_phase Object to be assigned
    def current_phase=(current_phase)
      validator = EnumAttributeValidator.new('String', ['RESOLVED', 'UNACKED', 'ACKED'])
      unless validator.valid?(current_phase)
        fail ArgumentError, 'invalid value for "current_phase", must be one of #{validator.allowable_values}.'
      end
      @current_phase = current_phase
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] monitor_type Object to be assigned
    def monitor_type=(monitor_type)
      validator = EnumAttributeValidator.new('String', ['UNKNOWN', 'PINGDOM', 'NAGIOS', 'HEALTHCHECKER', 'API', 'Cloudwatch', 'NewRelic', 'Zabbix', 'Email', 'Splunk', 'ServiceNow', 'Manual', 'etc'])
      unless validator.valid?(monitor_type)
        fail ArgumentError, 'invalid value for "monitor_type", must be one of #{validator.allowable_values}.'
      end
      @monitor_type = monitor_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          incident_number == o.incident_number &&
          start_time == o.start_time &&
          current_phase == o.current_phase &&
          alert_count == o.alert_count &&
          last_alert_time == o.last_alert_time &&
          last_alert_id == o.last_alert_id &&
          entity_id == o.entity_id &&
          host == o.host &&
          service == o.service &&
          paged_users == o.paged_users &&
          paged_teams == o.paged_teams &&
          paged_policies == o.paged_policies &&
          transitions == o.transitions &&
          first_alert_uuid == o.first_alert_uuid &&
          monitor_name == o.monitor_name &&
          monitor_type == o.monitor_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [incident_number, start_time, current_phase, alert_count, last_alert_time, last_alert_id, entity_id, host, service, paged_users, paged_teams, paged_policies, transitions, first_alert_uuid, monitor_name, monitor_type].hash
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