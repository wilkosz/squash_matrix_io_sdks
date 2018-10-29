# SquashMatrixApi.DefaultApi

All URIs are relative to *https://api.squashmatrix.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clubsGet**](DefaultApi.md#clubsGet) | **GET** /clubs | Get page of clubs
[**clubsSquashMatrixIdGet**](DefaultApi.md#clubsSquashMatrixIdGet) | **GET** /clubs/{squashMatrixId} | Get club by Squash Matrix ID
[**gamesGameIdGet**](DefaultApi.md#gamesGameIdGet) | **GET** /games/{gameId} | Get game by ID
[**gamesGet**](DefaultApi.md#gamesGet) | **GET** /games | Get page of games
[**playersGet**](DefaultApi.md#playersGet) | **GET** /players | Get page of players
[**playersSquashMatrixIdGet**](DefaultApi.md#playersSquashMatrixIdGet) | **GET** /players/{squashMatrixId} | Get player by Squash Matrix ID


<a name="clubsGet"></a>
# **clubsGet**
> InlineResponse200 clubsGet(opts)

Get page of clubs

### Example
```javascript
import SquashMatrixApi from 'squash-matrix-api';

let apiInstance = new SquashMatrixApi.DefaultApi();

let opts = { 
  'page': 56, // Number | The page of clubs
  'pageSize': 56 // Number | The size of page
};
apiInstance.clubsGet(opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| The page of clubs | [optional] 
 **pageSize** | **Number**| The size of page | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="clubsSquashMatrixIdGet"></a>
# **clubsSquashMatrixIdGet**
> InlineResponse2001 clubsSquashMatrixIdGet(squashMatrixId)

Get club by Squash Matrix ID

### Example
```javascript
import SquashMatrixApi from 'squash-matrix-api';

let apiInstance = new SquashMatrixApi.DefaultApi();

let squashMatrixId = 56; // Number | Squash Matrix ID of club

apiInstance.clubsSquashMatrixIdGet(squashMatrixId).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **squashMatrixId** | **Number**| Squash Matrix ID of club | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="gamesGameIdGet"></a>
# **gamesGameIdGet**
> InlineResponse2005 gamesGameIdGet(gameId)

Get game by ID

### Example
```javascript
import SquashMatrixApi from 'squash-matrix-api';

let apiInstance = new SquashMatrixApi.DefaultApi();

let gameId = 56; // Number | Numeric ID of game

apiInstance.gamesGameIdGet(gameId).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gameId** | **Number**| Numeric ID of game | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="gamesGet"></a>
# **gamesGet**
> InlineResponse2004 gamesGet(opts)

Get page of games

### Example
```javascript
import SquashMatrixApi from 'squash-matrix-api';

let apiInstance = new SquashMatrixApi.DefaultApi();

let opts = { 
  'page': 56, // Number | The page of games
  'pageSize': 56 // Number | The size of page
};
apiInstance.gamesGet(opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| The page of games | [optional] 
 **pageSize** | **Number**| The size of page | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="playersGet"></a>
# **playersGet**
> InlineResponse2002 playersGet(opts)

Get page of players

### Example
```javascript
import SquashMatrixApi from 'squash-matrix-api';

let apiInstance = new SquashMatrixApi.DefaultApi();

let opts = { 
  'page': 56, // Number | The page of players
  'pageSize': 56 // Number | The size of page
};
apiInstance.playersGet(opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| The page of players | [optional] 
 **pageSize** | **Number**| The size of page | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="playersSquashMatrixIdGet"></a>
# **playersSquashMatrixIdGet**
> InlineResponse2003 playersSquashMatrixIdGet(squashMatrixId)

Get player by Squash Matrix ID

### Example
```javascript
import SquashMatrixApi from 'squash-matrix-api';

let apiInstance = new SquashMatrixApi.DefaultApi();

let squashMatrixId = 56; // Number | Squash Matrix ID of player

apiInstance.playersSquashMatrixIdGet(squashMatrixId).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **squashMatrixId** | **Number**| Squash Matrix ID of player | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

