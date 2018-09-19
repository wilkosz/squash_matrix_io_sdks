# SwaggerClient::ClubApi

All URIs are relative to *http://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_club_by_id**](ClubApi.md#find_club_by_id) | **GET** /clubs/{id} | Find club by ID
[**find_clubs**](ClubApi.md#find_clubs) | **GET** /clubs | All clubs


# **find_club_by_id**
> Club find_club_by_id(id)

Find club by ID

Returns a single club if the request has access

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClubApi.new

id = 789 # Integer | ID of club to fetch


begin
  #Find club by ID
  result = api_instance.find_club_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClubApi->find_club_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of club to fetch | 

### Return type

[**Club**](Club.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_clubs**
> Array&lt;Club&gt; find_clubs(opts)

All clubs

Returns page of clubs if the request has access

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClubApi.new

opts = { 
  page: 56, # Integer | page number
  page_size: 56 # Integer | number of results per page
}

begin
  #All clubs
  result = api_instance.find_clubs(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClubApi->find_clubs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| page number | [optional] 
 **page_size** | **Integer**| number of results per page | [optional] 

### Return type

[**Array&lt;Club&gt;**](Club.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



