# SwaggerClient::PlayerApi

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_player_by_id**](PlayerApi.md#find_player_by_id) | **GET** /players/{id} | Find player by ID
[**find_players**](PlayerApi.md#find_players) | **GET** /players | All Players


# **find_player_by_id**
> Player find_player_by_id(id)

Find player by ID

Returns a single player if the request has access

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PlayerApi.new

id = 789 # Integer | ID of player to fetch


begin
  #Find player by ID
  result = api_instance.find_player_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PlayerApi->find_player_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of player to fetch | 

### Return type

[**Player**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_players**
> Array&lt;Player&gt; find_players(opts)

All Players

Returns page of players if the request has access

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PlayerApi.new

opts = { 
  page: 56, # Integer | page number
  page_size: 56 # Integer | number of results per page
}

begin
  #All Players
  result = api_instance.find_players(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PlayerApi->find_players: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| page number | [optional] 
 **page_size** | **Integer**| number of results per page | [optional] 

### Return type

[**Array&lt;Player&gt;**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



