# IO.Swagger.Api.ClubApi

All URIs are relative to *https://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindClubById**](ClubApi.md#findclubbyid) | **GET** /clubs/{id} | Find club by ID
[**FindClubs**](ClubApi.md#findclubs) | **GET** /clubs | All clubs


<a name="findclubbyid"></a>
# **FindClubById**
> Club FindClubById (long? id)

Find club by ID

Returns a single club if the request has access

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FindClubByIdExample
    {
        public void main()
        {
            var apiInstance = new ClubApi();
            var id = 789;  // long? | ID of club to fetch

            try
            {
                // Find club by ID
                Club result = apiInstance.FindClubById(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ClubApi.FindClubById: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **long?**| ID of club to fetch | 

### Return type

[**Club**](Club.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="findclubs"></a>
# **FindClubs**
> List<Club> FindClubs (int? page = null, int? pageSize = null)

All clubs

Returns page of clubs if the request has access

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class FindClubsExample
    {
        public void main()
        {
            var apiInstance = new ClubApi();
            var page = 56;  // int? | page number (optional) 
            var pageSize = 56;  // int? | number of results per page (optional) 

            try
            {
                // All clubs
                List&lt;Club&gt; result = apiInstance.FindClubs(page, pageSize);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ClubApi.FindClubs: " + e.Message );
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

[**List<Club>**](Club.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

