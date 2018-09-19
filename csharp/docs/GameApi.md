# IO.Swagger.Api.GameApi

All URIs are relative to *https://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindGameById**](GameApi.md#findgamebyid) | **GET** /games/{id} | Find game by ID
[**FindGames**](GameApi.md#findgames) | **GET** /games | All games


<a name="findgamebyid"></a>
# **FindGameById**
> Game FindGameById (long? id)

Find game by ID

Returns a single game if the request has access

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FindGameByIdExample
    {
        public void main()
        {
            var apiInstance = new GameApi();
            var id = 789;  // long? | ID of game to fetch

            try
            {
                // Find game by ID
                Game result = apiInstance.FindGameById(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GameApi.FindGameById: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **long?**| ID of game to fetch | 

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="findgames"></a>
# **FindGames**
> List<Game> FindGames (int? page = null, int? pageSize = null)

All games

Returns page of games if the request has access

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FindGamesExample
    {
        public void main()
        {
            var apiInstance = new GameApi();
            var page = 56;  // int? | page number (optional) 
            var pageSize = 56;  // int? | number of results per page (optional) 

            try
            {
                // All games
                List&lt;Game&gt; result = apiInstance.FindGames(page, pageSize);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GameApi.FindGames: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int?**| page number | [optional] 
 **pageSize** | **int?**| number of results per page | [optional] 

### Return type

[**List<Game>**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

