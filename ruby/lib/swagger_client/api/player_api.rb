=begin
#Sqaush Matrix API

#v1 documentation

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class PlayerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Find player by ID
    # Returns a single player if the request has access
    # @param id ID of player to fetch
    # @param [Hash] opts the optional parameters
    # @return [Player]
    def find_player_by_id(id, opts = {})
      data, _status_code, _headers = find_player_by_id_with_http_info(id, opts)
      return data
    end

    # Find player by ID
    # Returns a single player if the request has access
    # @param id ID of player to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(Player, Fixnum, Hash)>] Player data, response status code and response headers
    def find_player_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlayerApi.find_player_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PlayerApi.find_player_by_id"
      end
      # resource path
      local_var_path = "/players/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Player')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlayerApi#find_player_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # All Players
    # Returns page of players if the request has access
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page page number
    # @option opts [Integer] :page_size number of results per page
    # @return [Array<Player>]
    def find_players(opts = {})
      data, _status_code, _headers = find_players_with_http_info(opts)
      return data
    end

    # All Players
    # Returns page of players if the request has access
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page page number
    # @option opts [Integer] :page_size number of results per page
    # @return [Array<(Array<Player>, Fixnum, Hash)>] Array<Player> data, response status code and response headers
    def find_players_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlayerApi.find_players ..."
      end
      # resource path
      local_var_path = "/players"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Player>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlayerApi#find_players\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
