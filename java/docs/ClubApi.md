# ClubApi

All URIs are relative to *https://localhost:3000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findClubById**](ClubApi.md#findClubById) | **GET** /clubs/{id} | Find club by ID
[**findClubs**](ClubApi.md#findClubs) | **GET** /clubs | All clubs


<a name="findClubById"></a>
# **findClubById**
> Club findClubById(id)

Find club by ID

Returns a single club if the request has access

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ClubApi;


ClubApi apiInstance = new ClubApi();
Long id = 789L; // Long | ID of club to fetch
try {
    Club result = apiInstance.findClubById(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClubApi#findClubById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of club to fetch |

### Return type

[**Club**](Club.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="findClubs"></a>
# **findClubs**
> List&lt;Club&gt; findClubs(page, pageSize)

All clubs

Returns page of clubs if the request has access

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ClubApi;


ClubApi apiInstance = new ClubApi();
Integer page = 56; // Integer | page number
Integer pageSize = 56; // Integer | number of results per page
try {
    List<Club> result = apiInstance.findClubs(page, pageSize);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClubApi#findClubs");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| page number | [optional]
 **pageSize** | **Integer**| number of results per page | [optional]

### Return type

[**List&lt;Club&gt;**](Club.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

