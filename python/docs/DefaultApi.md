# SquashMatrixAPI.DefaultApi

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
> InlineResponse200 clubs_get(page=page, page_size=page_size)

Get page of clubs

### Example
```python
from __future__ import print_function
import time
import SquashMatrixAPI
from SquashMatrixAPI.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = SquashMatrixAPI.DefaultApi()
page = 56 # int | The page of clubs (optional)
page_size = 56 # int | The size of page (optional)

try:
    # Get page of clubs
    api_response = api_instance.clubs_get(page=page, page_size=page_size)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->clubs_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page of clubs | [optional] 
 **page_size** | **int**| The size of page | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clubs_squash_matrix_id_get**
> InlineResponse2001 clubs_squash_matrix_id_get(squash_matrix_id)

Get club by Squash Matrix ID

### Example
```python
from __future__ import print_function
import time
import SquashMatrixAPI
from SquashMatrixAPI.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = SquashMatrixAPI.DefaultApi()
squash_matrix_id = 56 # int | Squash Matrix ID of club

try:
    # Get club by Squash Matrix ID
    api_response = api_instance.clubs_squash_matrix_id_get(squash_matrix_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->clubs_squash_matrix_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **squash_matrix_id** | **int**| Squash Matrix ID of club | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **games_game_id_get**
> InlineResponse2005 games_game_id_get(game_id)

Get game by ID

### Example
```python
from __future__ import print_function
import time
import SquashMatrixAPI
from SquashMatrixAPI.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = SquashMatrixAPI.DefaultApi()
game_id = 56 # int | Numeric ID of game

try:
    # Get game by ID
    api_response = api_instance.games_game_id_get(game_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->games_game_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game_id** | **int**| Numeric ID of game | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **games_get**
> InlineResponse2004 games_get(page=page, page_size=page_size)

Get page of games

### Example
```python
from __future__ import print_function
import time
import SquashMatrixAPI
from SquashMatrixAPI.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = SquashMatrixAPI.DefaultApi()
page = 56 # int | The page of games (optional)
page_size = 56 # int | The size of page (optional)

try:
    # Get page of games
    api_response = api_instance.games_get(page=page, page_size=page_size)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->games_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page of games | [optional] 
 **page_size** | **int**| The size of page | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **players_get**
> InlineResponse2002 players_get(page=page, page_size=page_size)

Get page of players

### Example
```python
from __future__ import print_function
import time
import SquashMatrixAPI
from SquashMatrixAPI.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = SquashMatrixAPI.DefaultApi()
page = 56 # int | The page of players (optional)
page_size = 56 # int | The size of page (optional)

try:
    # Get page of players
    api_response = api_instance.players_get(page=page, page_size=page_size)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->players_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page of players | [optional] 
 **page_size** | **int**| The size of page | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **players_squash_matrix_id_get**
> InlineResponse2003 players_squash_matrix_id_get(squash_matrix_id)

Get player by Squash Matrix ID

### Example
```python
from __future__ import print_function
import time
import SquashMatrixAPI
from SquashMatrixAPI.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = SquashMatrixAPI.DefaultApi()
squash_matrix_id = 56 # int | Squash Matrix ID of player

try:
    # Get player by Squash Matrix ID
    api_response = api_instance.players_squash_matrix_id_get(squash_matrix_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->players_squash_matrix_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **squash_matrix_id** | **int**| Squash Matrix ID of player | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

