=begin
#Sqaush Matrix API

#v1 documentation

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class Game
    attr_accessor :id

    attr_accessor :date

    attr_accessor :devision

    attr_accessor :event

    attr_accessor :round

    attr_accessor :position

    attr_accessor :player_a_points

    attr_accessor :player_b_points

    attr_accessor :player_a_games

    attr_accessor :player_b_games

    attr_accessor :player_a_rating

    attr_accessor :player_b_rating

    attr_accessor :player_a_rating_adjustment

    attr_accessor :player_b_rating_adjustment

    attr_accessor :match_id

    attr_accessor :player_a

    attr_accessor :player_b


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'date' => :'date',
        :'devision' => :'devision',
        :'event' => :'event',
        :'round' => :'round',
        :'position' => :'position',
        :'player_a_points' => :'player_a_points',
        :'player_b_points' => :'player_b_points',
        :'player_a_games' => :'player_a_games',
        :'player_b_games' => :'player_b_games',
        :'player_a_rating' => :'player_a_rating',
        :'player_b_rating' => :'player_b_rating',
        :'player_a_rating_adjustment' => :'player_a_rating_adjustment',
        :'player_b_rating_adjustment' => :'player_b_rating_adjustment',
        :'match_id' => :'match_id',
        :'player_a' => :'player_a',
        :'player_b' => :'player_b'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'date' => :'DateTime',
        :'devision' => :'String',
        :'event' => :'String',
        :'round' => :'String',
        :'position' => :'String',
        :'player_a_points' => :'Integer',
        :'player_b_points' => :'Integer',
        :'player_a_games' => :'Integer',
        :'player_b_games' => :'Integer',
        :'player_a_rating' => :'Float',
        :'player_b_rating' => :'Float',
        :'player_a_rating_adjustment' => :'Float',
        :'player_b_rating_adjustment' => :'Float',
        :'match_id' => :'Integer',
        :'player_a' => :'Player',
        :'player_b' => :'Player'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'devision')
        self.devision = attributes[:'devision']
      end

      if attributes.has_key?(:'event')
        self.event = attributes[:'event']
      end

      if attributes.has_key?(:'round')
        self.round = attributes[:'round']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'player_a_points')
        self.player_a_points = attributes[:'player_a_points']
      end

      if attributes.has_key?(:'player_b_points')
        self.player_b_points = attributes[:'player_b_points']
      end

      if attributes.has_key?(:'player_a_games')
        self.player_a_games = attributes[:'player_a_games']
      end

      if attributes.has_key?(:'player_b_games')
        self.player_b_games = attributes[:'player_b_games']
      end

      if attributes.has_key?(:'player_a_rating')
        self.player_a_rating = attributes[:'player_a_rating']
      end

      if attributes.has_key?(:'player_b_rating')
        self.player_b_rating = attributes[:'player_b_rating']
      end

      if attributes.has_key?(:'player_a_rating_adjustment')
        self.player_a_rating_adjustment = attributes[:'player_a_rating_adjustment']
      end

      if attributes.has_key?(:'player_b_rating_adjustment')
        self.player_b_rating_adjustment = attributes[:'player_b_rating_adjustment']
      end

      if attributes.has_key?(:'match_id')
        self.match_id = attributes[:'match_id']
      end

      if attributes.has_key?(:'player_a')
        self.player_a = attributes[:'player_a']
      end

      if attributes.has_key?(:'player_b')
        self.player_b = attributes[:'player_b']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @date.nil?
        invalid_properties.push("invalid value for 'date', date cannot be nil.")
      end

      if @event.nil?
        invalid_properties.push("invalid value for 'event', event cannot be nil.")
      end

      if @round.nil?
        invalid_properties.push("invalid value for 'round', round cannot be nil.")
      end

      if @position.nil?
        invalid_properties.push("invalid value for 'position', position cannot be nil.")
      end

      if @player_a_points.nil?
        invalid_properties.push("invalid value for 'player_a_points', player_a_points cannot be nil.")
      end

      if @player_b_points.nil?
        invalid_properties.push("invalid value for 'player_b_points', player_b_points cannot be nil.")
      end

      if @player_a_games.nil?
        invalid_properties.push("invalid value for 'player_a_games', player_a_games cannot be nil.")
      end

      if @player_b_games.nil?
        invalid_properties.push("invalid value for 'player_b_games', player_b_games cannot be nil.")
      end

      if @player_a_rating.nil?
        invalid_properties.push("invalid value for 'player_a_rating', player_a_rating cannot be nil.")
      end

      if @player_b_rating.nil?
        invalid_properties.push("invalid value for 'player_b_rating', player_b_rating cannot be nil.")
      end

      if @match_id.nil?
        invalid_properties.push("invalid value for 'match_id', match_id cannot be nil.")
      end

      if @player_a.nil?
        invalid_properties.push("invalid value for 'player_a', player_a cannot be nil.")
      end

      if @player_b.nil?
        invalid_properties.push("invalid value for 'player_b', player_b cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @date.nil?
      return false if @event.nil?
      return false if @round.nil?
      return false if @position.nil?
      return false if @player_a_points.nil?
      return false if @player_b_points.nil?
      return false if @player_a_games.nil?
      return false if @player_b_games.nil?
      return false if @player_a_rating.nil?
      return false if @player_b_rating.nil?
      return false if @match_id.nil?
      return false if @player_a.nil?
      return false if @player_b.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          date == o.date &&
          devision == o.devision &&
          event == o.event &&
          round == o.round &&
          position == o.position &&
          player_a_points == o.player_a_points &&
          player_b_points == o.player_b_points &&
          player_a_games == o.player_a_games &&
          player_b_games == o.player_b_games &&
          player_a_rating == o.player_a_rating &&
          player_b_rating == o.player_b_rating &&
          player_a_rating_adjustment == o.player_a_rating_adjustment &&
          player_b_rating_adjustment == o.player_b_rating_adjustment &&
          match_id == o.match_id &&
          player_a == o.player_a &&
          player_b == o.player_b
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, date, devision, event, round, position, player_a_points, player_b_points, player_a_games, player_b_games, player_a_rating, player_b_rating, player_a_rating_adjustment, player_b_rating_adjustment, match_id, player_a, player_b].hash
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
        temp_model = SwaggerClient.const_get(type).new
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
