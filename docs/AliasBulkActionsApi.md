# AliasBulkActionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkActivateSpecificAliases**](AliasBulkActionsApi.md#bulkActivateSpecificAliases) | **POST** /api/v1/aliases/activate/bulk | Bulk Activate Specific Aliases
[**bulkDeactivateSpecificAliases**](AliasBulkActionsApi.md#bulkDeactivateSpecificAliases) | **POST** /api/v1/aliases/deactivate/bulk | Bulk Deactivate Specific Aliases
[**bulkDeleteSpecificAliases**](AliasBulkActionsApi.md#bulkDeleteSpecificAliases) | **POST** /api/v1/aliases/delete/bulk | Bulk Delete Specific Aliases
[**bulkForgetSpecificAliases**](AliasBulkActionsApi.md#bulkForgetSpecificAliases) | **POST** /api/v1/aliases/forget/bulk | Bulk Forget Specific Aliases
[**bulkGetSpecificAliases**](AliasBulkActionsApi.md#bulkGetSpecificAliases) | **POST** /api/v1/aliases/get/bulk | Bulk Get Specific Aliases
[**bulkRestoreSpecificAliases**](AliasBulkActionsApi.md#bulkRestoreSpecificAliases) | **POST** /api/v1/aliases/restore/bulk | Bulk Restore Specific Aliases
[**bulkUpdateRecipientsForSpecificAliases**](AliasBulkActionsApi.md#bulkUpdateRecipientsForSpecificAliases) | **POST** /api/v1/aliases/recipients/bulk | Bulk Update Recipients for Specific Aliases



## bulkActivateSpecificAliases

Bulk Activate Specific Aliases

This endpoint activates specific aliases.

### Example

```bash
 bulkActivateSpecificAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkGetSpecificAliasesRequest** | [**BulkGetSpecificAliasesRequest**](BulkGetSpecificAliasesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**BulkActivateSpecificAliases200Response**](BulkActivateSpecificAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bulkDeactivateSpecificAliases

Bulk Deactivate Specific Aliases

This endpoint deactivates specific aliases.

### Example

```bash
 bulkDeactivateSpecificAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkGetSpecificAliasesRequest** | [**BulkGetSpecificAliasesRequest**](BulkGetSpecificAliasesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**BulkDeactivateSpecificAliases200Response**](BulkDeactivateSpecificAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bulkDeleteSpecificAliases

Bulk Delete Specific Aliases

This endpoint deletes specific aliases.

### Example

```bash
 bulkDeleteSpecificAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkGetSpecificAliasesRequest** | [**BulkGetSpecificAliasesRequest**](BulkGetSpecificAliasesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**BulkDeleteSpecificAliases200Response**](BulkDeleteSpecificAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bulkForgetSpecificAliases

Bulk Forget Specific Aliases

This endpoint forgets specific aliases.

### Example

```bash
 bulkForgetSpecificAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkGetSpecificAliasesRequest** | [**BulkGetSpecificAliasesRequest**](BulkGetSpecificAliasesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**BulkForgetSpecificAliases200Response**](BulkForgetSpecificAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bulkGetSpecificAliases

Bulk Get Specific Aliases

This endpoint gets specific aliases.

### Example

```bash
 bulkGetSpecificAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkGetSpecificAliasesRequest** | [**BulkGetSpecificAliasesRequest**](BulkGetSpecificAliasesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**BulkGetSpecificAliases200Response**](BulkGetSpecificAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bulkRestoreSpecificAliases

Bulk Restore Specific Aliases

This endpoint restores specific aliases.

### Example

```bash
 bulkRestoreSpecificAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkGetSpecificAliasesRequest** | [**BulkGetSpecificAliasesRequest**](BulkGetSpecificAliasesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**BulkRestoreSpecificAliases200Response**](BulkRestoreSpecificAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## bulkUpdateRecipientsForSpecificAliases

Bulk Update Recipients for Specific Aliases

This endpoint updates the recipients for specific aliases.

### Example

```bash
 bulkUpdateRecipientsForSpecificAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkUpdateRecipientsForSpecificAliasesRequest** | [**BulkUpdateRecipientsForSpecificAliasesRequest**](BulkUpdateRecipientsForSpecificAliasesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**BulkUpdateRecipientsForSpecificAliases200Response**](BulkUpdateRecipientsForSpecificAliases200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

