# SwaggerClient::GameApi

All URIs are relative to *https://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_game_by_id**](GameApi.md#find_game_by_id) | **GET** /games/{id} | Find game by ID
[**find_games**](GameApi.md#find_games) | **GET** /games | All games


# **find_game_by_id**
> Game find_game_by_id(id)

Find game by ID

Returns a single game if the request has access

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GameApi.new

id = 789 # Integer | ID of game to fetch


begin
  #Find game by ID
  result = api_instance.find_game_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GameApi->find_game_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of game to fetch | 

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_games**
> Array&lt;Game&gt; find_games(opts)

All games

Returns page of games if the request has access

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GameApi.new

opts = { 
  page: 56, # Integer | page number
  page_size: 56 # Integer | number of results per page
}

begin
  #All games
  result = api_instance.find_games(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GameApi->find_games: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| page number | [optional] 
 **page_size** | **Integer**| number of results per page | [optional] 

### Return type

[**Array&lt;Game&gt;**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



