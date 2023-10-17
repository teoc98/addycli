# DomainsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateASpecificDomain**](DomainsApi.md#activateASpecificDomain) | **POST** /api/v1/active-domains | Activate a Specific Domain
[**createNewDomain**](DomainsApi.md#createNewDomain) | **POST** /api/v1/domains | Create New Domain
[**deactivateASpecificDomain**](DomainsApi.md#deactivateASpecificDomain) | **DELETE** /api/v1/active-domains/{id} | Deactivate a Specific Domain
[**deleteASpecificDomain**](DomainsApi.md#deleteASpecificDomain) | **DELETE** /api/v1/domains/{id} | Delete a Specific Domain
[**disableCatchAllForASpecificDomain**](DomainsApi.md#disableCatchAllForASpecificDomain) | **DELETE** /api/v1/catch-all-domains/{id} | Disable catch-all for a Specific Domain
[**enableCatchAllForASpecificDomain**](DomainsApi.md#enableCatchAllForASpecificDomain) | **POST** /api/v1/catch-all-domains | Enable catch-all for a Specific Domain
[**getASpecificDomain**](DomainsApi.md#getASpecificDomain) | **GET** /api/v1/domains/{id} | Get a Specific Domain
[**getAllDomains**](DomainsApi.md#getAllDomains) | **GET** /api/v1/domains | Get All Domains
[**updateASpecificDomain**](DomainsApi.md#updateASpecificDomain) | **PATCH** /api/v1/domains/{id} | Update a Specific Domain
[**updateDefaultRecipientForASpecificDomain**](DomainsApi.md#updateDefaultRecipientForASpecificDomain) | **PATCH** /api/v1/domains/{id}/default-recipient | Update Default Recipient for a Specific Domain



## activateASpecificDomain

Activate a Specific Domain

This endpoint activates a specific domain.

### Example

```bash
 activateASpecificDomain X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateASpecificDomainRequest** | [**ActivateASpecificDomainRequest**](ActivateASpecificDomainRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewDomain201Response**](CreateNewDomain201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createNewDomain

Create New Domain

This endpoint creates a new domain.

### Example

```bash
 createNewDomain X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNewDomainRequest** | [**CreateNewDomainRequest**](CreateNewDomainRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewDomain201Response**](CreateNewDomain201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deactivateASpecificDomain

Deactivate a Specific Domain

This endpoint deactivates a specific domain.

### Example

```bash
 deactivateASpecificDomain id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the domain to deactivate | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteASpecificDomain

Delete a Specific Domain

This endpoint deletes a specific domain.

### Example

```bash
 deleteASpecificDomain id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the domain to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disableCatchAllForASpecificDomain

Disable catch-all for a Specific Domain

This endpoint disables catch-all for a specific domain.

### Example

```bash
 disableCatchAllForASpecificDomain id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the domain to disable catch-all | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enableCatchAllForASpecificDomain

Enable catch-all for a Specific Domain

This endpoint enables catch-all a specific domain.

### Example

```bash
 enableCatchAllForASpecificDomain X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateASpecificDomainRequest** | [**ActivateASpecificDomainRequest**](ActivateASpecificDomainRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**EnableCatchAllForASpecificDomain200Response**](EnableCatchAllForASpecificDomain200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getASpecificDomain

Get a Specific Domain

This endpoint retrieves a specific domain.

### Example

```bash
 getASpecificDomain id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the domain to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewDomain201Response**](CreateNewDomain201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAllDomains

Get All Domains

This endpoint retrieves all domains.

### Example

```bash
 getAllDomains X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetAllDomains200Response**](GetAllDomains200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateASpecificDomain

Update a Specific Domain

This endpoint updates a specific domain.

### Example

```bash
 updateASpecificDomain id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the domain to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]
 **updateASpecificDomainRequest** | [**UpdateASpecificDomainRequest**](UpdateASpecificDomainRequest.md) |  | [optional]

### Return type

[**UpdateASpecificDomain200Response**](UpdateASpecificDomain200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDefaultRecipientForASpecificDomain

Update Default Recipient for a Specific Domain

This endpoint updates the default recipient for a specific domain.

### Example

```bash
 updateDefaultRecipientForASpecificDomain id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the domain to update | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]
 **updateDefaultRecipientForASpecificDomainRequest** | [**UpdateDefaultRecipientForASpecificDomainRequest**](UpdateDefaultRecipientForASpecificDomainRequest.md) |  | [optional]

### Return type

[**UpdateDefaultRecipientForASpecificDomain200Response**](UpdateDefaultRecipientForASpecificDomain200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

