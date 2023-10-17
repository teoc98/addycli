# AliasesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateASpecificAlias**](AliasesApi.md#activateASpecificAlias) | **POST** /api/v1/active-aliases | Activate a Specific Alias
[**createNewAlias**](AliasesApi.md#createNewAlias) | **POST** /api/v1/aliases | Create New Alias
[**deactivateASpecificAlias**](AliasesApi.md#deactivateASpecificAlias) | **DELETE** /api/v1/active-aliases/{id} | Deactivate a Specific Alias
[**deleteASpecificAlias**](AliasesApi.md#deleteASpecificAlias) | **DELETE** /api/v1/aliases/{id} | Delete a Specific Alias
[**forgetASpecificAlias**](AliasesApi.md#forgetASpecificAlias) | **DELETE** /api/v1/aliases/{id}/forget | Forget a Specific Alias
[**getASpecificAlias**](AliasesApi.md#getASpecificAlias) | **GET** /api/v1/aliases/{id} | Get a Specific Alias
[**getAllAliases**](AliasesApi.md#getAllAliases) | **GET** /api/v1/aliases | Get All Aliases
[**restoreASpecificDeletedAlias**](AliasesApi.md#restoreASpecificDeletedAlias) | **PATCH** /api/v1/aliases/{id}/restore | Restore a Specific Deleted Alias
[**updateASpecificAlias**](AliasesApi.md#updateASpecificAlias) | **PATCH** /api/v1/aliases/{id} | Update a Specific Alias
[**updateRecipientsForASpecificAlias**](AliasesApi.md#updateRecipientsForASpecificAlias) | **POST** /api/v1/alias-recipients | Update Recipients for a Specific Alias



## activateASpecificAlias

Activate a Specific Alias

This endpoint activates a specific alias.

### Example

```bash
 activateASpecificAlias X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateASpecificAliasRequest** | [**ActivateASpecificAliasRequest**](ActivateASpecificAliasRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**ActivateASpecificAlias200Response**](ActivateASpecificAlias200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createNewAlias

Create New Alias

This endpoint creates a new alias.

### Example

```bash
 createNewAlias X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNewAliasRequest** | [**CreateNewAliasRequest**](CreateNewAliasRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewAlias201Response**](CreateNewAlias201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deactivateASpecificAlias

Deactivate a Specific Alias

This endpoint deactivates a specific alias.

### Example

```bash
 deactivateASpecificAlias id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the alias to deactivate | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteASpecificAlias

Delete a Specific Alias

This endpoint deletes a specific alias.

### Example

```bash
 deleteASpecificAlias id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the alias to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## forgetASpecificAlias

Forget a Specific Alias

This endpoint forgets a specific alias.

### Example

```bash
 forgetASpecificAlias id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the alias to forget | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getASpecificAlias

Get a Specific Alias

This endpoint retrieves a specific alias.

### Example

```bash
 getASpecificAlias id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the alias to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetASpecificAlias200Response**](GetASpecificAlias200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAllAliases

Get All Aliases

This endpoint retrieves all aliases.

### Example

```bash
 getAllAliases  filter[deleted]=value  filter[active]=value  filter[search]=value  sort=value  page[number]=value  page[size]=value  with=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterLeft_Square_BracketdeletedRight_Square_Bracket** | **string** | Choose to return alias with deleted or only deleted. Options: with, only. | [optional] [default to null]
 **filterLeft_Square_BracketactiveRight_Square_Bracket** | **string** | Choose to return active or inactive aliases. Options: true, false. | [optional] [default to null]
 **filterLeft_Square_BracketsearchRight_Square_Bracket** | **string** | Search aliases by email and description. | [optional] [default to null]
 **sort** | **string** | Choose what to sort the aliases by, prepend \"-\" for descending results. Options: local_part, domain, email, emails_forwarded, emails_blocked, emails_replied, emails_sent, active, created_at, updated_at, deleted_at | [optional] [default to null]
 **pageLeft_Square_BracketnumberRight_Square_Bracket** | **integer** | Paginate the alias results. | [optional] [default to null]
 **pageLeft_Square_BracketsizeRight_Square_Bracket** | **integer** | Paginate the alias results, default 100, min 1 max 100. | [optional] [default to null]
 **with** | **string** | Return aliases with their attached recipients. Options: recipients | [optional] [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetAllAliases200Response**](GetAllAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## restoreASpecificDeletedAlias

Restore a Specific Deleted Alias

This endpoint restores a specific deleted alias.

### Example

```bash
 restoreASpecificDeletedAlias id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the alias to restore | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**RestoreASpecificDeletedAlias200Response**](RestoreASpecificDeletedAlias200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateASpecificAlias

Update a Specific Alias

This endpoint updates a specific alias.

### Example

```bash
 updateASpecificAlias id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the alias to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]
 **updateASpecificAliasRequest** | [**UpdateASpecificAliasRequest**](UpdateASpecificAliasRequest.md) |  | [optional]

### Return type

[**UpdateASpecificAlias200Response**](UpdateASpecificAlias200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateRecipientsForASpecificAlias

Update Recipients for a Specific Alias

This endpoint updates the recipients for a specific alias.

### Example

```bash
 updateRecipientsForASpecificAlias X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateRecipientsForASpecificAliasRequest** | [**UpdateRecipientsForASpecificAliasRequest**](UpdateRecipientsForASpecificAliasRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**UpdateRecipientsForASpecificAlias200Response**](UpdateRecipientsForASpecificAlias200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

