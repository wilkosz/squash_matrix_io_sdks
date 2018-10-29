# SquashMatrixAPI::DefaultApi

All URIs are relative to *https://api.squashmatrix.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clubs_get**](DefaultApi.md#clubs_get) | **GET** /clubs | Get page of clubs
[**clubs_squash_matrix_id_get**](DefaultApi.md#clubs_squash_matrix_id_get) | **GET** /clubs/{squashMatrixId} | Get club by Squash Matrix ID
[**games_game_id_get**](DefaultApi.md#games_game_id_get) | **GET** /games/{gameId} | Get game by ID
[**games_get**](DefaultApi.md#games_get) | **GET** /games | Get page of games
[**players_get**](DefaultApi.md#players_get) | **GET** /players | Get page of players
[**players_squash_matrix_id_get**](DefaultApi.md#players_squash_matrix_id_get) | **GET** /players/{squashMatrixId} | Get player by Squash Matrix ID


# **clubs_get**
> InlineResponse200 clubs_get(opts)

Get page of clubs

### Example
```ruby
# load the gem
require 'squash_matrix_api'

api_instance = SquashMatrixAPI::DefaultApi.new

opts = { 
  page: 56, # Integer | The page of clubs
  page_size: 56 # Integer | The size of page
}

begin
  #Get page of clubs
  result = api_instance.clubs_get(opts)
  p result
rescue SquashMatrixAPI::ApiError => e
  puts "Exception when calling DefaultApi->clubs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page of clubs | [optional] 
 **page_size** | **Integer**| The size of page | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **clubs_squash_matrix_id_get**
> InlineResponse2001 clubs_squash_matrix_id_get(squash_matrix_id)

Get club by Squash Matrix ID

### Example
```ruby
# load the gem
require 'squash_matrix_api'

api_instance = SquashMatrixAPI::DefaultApi.new

squash_matrix_id = 56 # Integer | Squash Matrix ID of club


begin
  #Get club by Squash Matrix ID
  result = api_instance.clubs_squash_matrix_id_get(squash_matrix_id)
  p result
rescue SquashMatrixAPI::ApiError => e
  puts "Exception when calling DefaultApi->clubs_squash_matrix_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **squash_matrix_id** | **Integer**| Squash Matrix ID of club | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **games_game_id_get**
> InlineResponse2005 games_game_id_get(game_id)

Get game by ID

### Example
```ruby
# load the gem
require 'squash_matrix_api'

api_instance = SquashMatrixAPI::DefaultApi.new

game_id = 56 # Integer | Numeric ID of game


begin
  #Get game by ID
  result = api_instance.games_game_id_get(game_id)
  p result
rescue SquashMatrixAPI::ApiError => e
  puts "Exception when calling DefaultApi->games_game_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game_id** | **Integer**| Numeric ID of game | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **games_get**
> InlineResponse2004 games_get(opts)

Get page of games

### Example
```ruby
# load the gem
require 'squash_matrix_api'

api_instance = SquashMatrixAPI::DefaultApi.new

opts = { 
  page: 56, # Integer | The page of games
  page_size: 56 # Integer | The size of page
}

begin
  #Get page of games
  result = api_instance.games_get(opts)
  p result
rescue SquashMatrixAPI::ApiError => e
  puts "Exception when calling DefaultApi->games_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page of games | [optional] 
 **page_size** | **Integer**| The size of page | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **players_get**
> InlineResponse2002 players_get(opts)

Get page of players

### Example
```ruby
# load the gem
require 'squash_matrix_api'

api_instance = SquashMatrixAPI::DefaultApi.new

opts = { 
  page: 56, # Integer | The page of players
  page_size: 56 # Integer | The size of page
}

begin
  #Get page of players
  result = api_instance.players_get(opts)
  p result
rescue SquashMatrixAPI::ApiError => e
  puts "Exception when calling DefaultApi->players_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page of players | [optional] 
 **page_size** | **Integer**| The size of page | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **players_squash_matrix_id_get**
> InlineResponse2003 players_squash_matrix_id_get(squash_matrix_id)

Get player by Squash Matrix ID

### Example
```ruby
# load the gem
require 'squash_matrix_api'

api_instance = SquashMatrixAPI::DefaultApi.new

squash_matrix_id = 56 # Integer | Squash Matrix ID of player


begin
  #Get player by Squash Matrix ID
  result = api_instance.players_squash_matrix_id_get(squash_matrix_id)
  p result
rescue SquashMatrixAPI::ApiError => e
  puts "Exception when calling DefaultApi->players_squash_matrix_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **squash_matrix_id** | **Integer**| Squash Matrix ID of player | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



