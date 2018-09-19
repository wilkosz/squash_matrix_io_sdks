# PlayerApi

All URIs are relative to *https://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findPlayerById**](PlayerApi.md#findPlayerById) | **GET** /players/{id} | Find player by ID
[**findPlayers**](PlayerApi.md#findPlayers) | **GET** /players | All Players


<a name="findPlayerById"></a>
# **findPlayerById**
> Player findPlayerById(id)

Find player by ID

Returns a single player if the request has access

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PlayerApi;


PlayerApi apiInstance = new PlayerApi();
Long id = 789L; // Long | ID of player to fetch
try {
    Player result = apiInstance.findPlayerById(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PlayerApi#findPlayerById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of player to fetch |

### Return type

[**Player**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="findPlayers"></a>
# **findPlayers**
> List&lt;Player&gt; findPlayers(page, pageSize)

All Players

Returns page of players if the request has access

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PlayerApi;


PlayerApi apiInstance = new PlayerApi();
Integer page = 56; // Integer | page number
Integer pageSize = 56; // Integer | number of results per page
try {
    List<Player> result = apiInstance.findPlayers(page, pageSize);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PlayerApi#findPlayers");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| page number | [optional]
 **pageSize** | **Integer**| number of results per page | [optional]

### Return type

[**List&lt;Player&gt;**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

