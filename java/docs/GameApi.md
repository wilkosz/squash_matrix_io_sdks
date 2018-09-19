# GameApi

All URIs are relative to *https://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findGameById**](GameApi.md#findGameById) | **GET** /games/{id} | Find game by ID
[**findGames**](GameApi.md#findGames) | **GET** /games | All games


<a name="findGameById"></a>
# **findGameById**
> Game findGameById(id)

Find game by ID

Returns a single game if the request has access

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.GameApi;


GameApi apiInstance = new GameApi();
Long id = 789L; // Long | ID of game to fetch
try {
    Game result = apiInstance.findGameById(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GameApi#findGameById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of game to fetch |

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="findGames"></a>
# **findGames**
> List&lt;Game&gt; findGames(page, pageSize)

All games

Returns page of games if the request has access

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.GameApi;


GameApi apiInstance = new GameApi();
Integer page = 56; // Integer | page number
Integer pageSize = 56; // Integer | number of results per page
try {
    List<Game> result = apiInstance.findGames(page, pageSize);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GameApi#findGames");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| page number | [optional]
 **pageSize** | **Integer**| number of results per page | [optional]

### Return type

[**List&lt;Game&gt;**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

