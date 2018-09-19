# IO.Swagger.Api.PlayerApi

All URIs are relative to *https://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindPlayerById**](PlayerApi.md#findplayerbyid) | **GET** /players/{id} | Find player by ID
[**FindPlayers**](PlayerApi.md#findplayers) | **GET** /players | All Players


<a name="findplayerbyid"></a>
# **FindPlayerById**
> Player FindPlayerById (long? id)

Find player by ID

Returns a single player if the request has access

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FindPlayerByIdExample
    {
        public void main()
        {
            var apiInstance = new PlayerApi();
            var id = 789;  // long? | ID of player to fetch

            try
            {
                // Find player by ID
                Player result = apiInstance.FindPlayerById(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PlayerApi.FindPlayerById: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **long?**| ID of player to fetch | 

### Return type

[**Player**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="findplayers"></a>
# **FindPlayers**
> List<Player> FindPlayers (int? page = null, int? pageSize = null)

All Players

Returns page of players if the request has access

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FindPlayersExample
    {
        public void main()
        {
            var apiInstance = new PlayerApi();
            var page = 56;  // int? | page number (optional) 
            var pageSize = 56;  // int? | number of results per page (optional) 

            try
            {
                // All Players
                List&lt;Player&gt; result = apiInstance.FindPlayers(page, pageSize);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling PlayerApi.FindPlayers: " + e.Message );
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

[**List<Player>**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

