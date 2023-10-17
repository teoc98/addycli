# UsernamesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateASpecificUsername**](UsernamesApi.md#activateASpecificUsername) | **POST** /api/v1/active-usernames | Activate a Specific Username
[**allowLoginForASpecificUsername**](UsernamesApi.md#allowLoginForASpecificUsername) | **POST** /api/v1/loginable-usernames | Allow login for a Specific Username
[**createNewUsername**](UsernamesApi.md#createNewUsername) | **POST** /api/v1/usernames | Create New Username
[**deactivateASpecificUsername**](UsernamesApi.md#deactivateASpecificUsername) | **DELETE** /api/v1/active-usernames/{id} | Deactivate a Specific Username
[**deleteASpecificUsername**](UsernamesApi.md#deleteASpecificUsername) | **DELETE** /api/v1/usernames/{id} | Delete a Specific Username
[**disableCatchAllForASpecificUsername**](UsernamesApi.md#disableCatchAllForASpecificUsername) | **DELETE** /api/v1/catch-all-usernames/{id} | Disable catch-all for a Specific Username
[**disallowLoginForASpecificUsername**](UsernamesApi.md#disallowLoginForASpecificUsername) | **DELETE** /api/v1/loginable-usernames/{id} | Disallow login for a Specific Username
[**enableCatchAllForASpecificUsername**](UsernamesApi.md#enableCatchAllForASpecificUsername) | **POST** /api/v1/catch-all-usernames | Enable catch-all for a Specific Username
[**getASpecificUsername**](UsernamesApi.md#getASpecificUsername) | **GET** /api/v1/usernames/{id} | Get a Specific Username
[**getAllUsernames**](UsernamesApi.md#getAllUsernames) | **GET** /api/v1/usernames | Get All Usernames
[**updateASpecificUsername**](UsernamesApi.md#updateASpecificUsername) | **PATCH** /api/v1/usernames/{id} | Update a Specific Username
[**updateDefaultRecipientForASpecificUsername**](UsernamesApi.md#updateDefaultRecipientForASpecificUsername) | **PATCH** /api/v1/usernames/{id}/default-recipient | Update Default Recipient for a Specific Username



## activateASpecificUsername

Activate a Specific Username

This endpoint activates a specific username.

### Example

```bash
 activateASpecificUsername X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateASpecificUsernameRequest** | [**ActivateASpecificUsernameRequest**](ActivateASpecificUsernameRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewUsername201Response**](CreateNewUsername201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## allowLoginForASpecificUsername

Allow login for a Specific Username

This endpoint gives a specific username the ability to login to your account.

### Example

```bash
 allowLoginForASpecificUsername X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateASpecificUsernameRequest** | [**ActivateASpecificUsernameRequest**](ActivateASpecificUsernameRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewUsername201Response**](CreateNewUsername201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createNewUsername

Create New Username

This endpoint creates a new username.

### Example

```bash
 createNewUsername X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNewUsernameRequest** | [**CreateNewUsernameRequest**](CreateNewUsernameRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewUsername201Response**](CreateNewUsername201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deactivateASpecificUsername

Deactivate a Specific Username

This endpoint deactivates a specific username.

### Example

```bash
 deactivateASpecificUsername id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the username to deactivate | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteASpecificUsername

Delete a Specific Username

This endpoint deletes a specific username.

### Example

```bash
 deleteASpecificUsername id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the username to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disableCatchAllForASpecificUsername

Disable catch-all for a Specific Username

This endpoint disables catch-all for a specific username.

### Example

```bash
 disableCatchAllForASpecificUsername id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the username to disable catch-all | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disallowLoginForASpecificUsername

Disallow login for a Specific Username

This endpoint prevents a specific username from being able to login to your account.

### Example

```bash
 disallowLoginForASpecificUsername id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the username | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enableCatchAllForASpecificUsername

Enable catch-all for a Specific Username

This endpoint enables catch-all a specific username.

### Example

```bash
 enableCatchAllForASpecificUsername X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateASpecificUsernameRequest** | [**ActivateASpecificUsernameRequest**](ActivateASpecificUsernameRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewUsername201Response**](CreateNewUsername201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getASpecificUsername

Get a Specific Username

This endpoint retrieves a specific username.

### Example

```bash
 getASpecificUsername id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the username to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewUsername201Response**](CreateNewUsername201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAllUsernames

Get All Usernames

This endpoint retrieves all usernames.

### Example

```bash
 getAllUsernames X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetAllUsernames200Response**](GetAllUsernames200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateASpecificUsername

Update a Specific Username

This endpoint updates a specific username.

### Example

```bash
 updateASpecificUsername id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the username to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]
 **updateASpecificUsernameRequest** | [**UpdateASpecificUsernameRequest**](UpdateASpecificUsernameRequest.md) |  | [optional]

### Return type

[**UpdateASpecificUsername200Response**](UpdateASpecificUsername200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDefaultRecipientForASpecificUsername

Update Default Recipient for a Specific Username

This endpoint updates the default recipient for a specific username.

### Example

```bash
 updateDefaultRecipientForASpecificUsername id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the username to update | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]
 **updateDefaultRecipientForASpecificDomainRequest** | [**UpdateDefaultRecipientForASpecificDomainRequest**](UpdateDefaultRecipientForASpecificDomainRequest.md) |  | [optional]

### Return type

[**UpdateDefaultRecipientForASpecificUsername200Response**](UpdateDefaultRecipientForASpecificUsername200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

