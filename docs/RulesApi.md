# RulesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateASpecificRule**](RulesApi.md#activateASpecificRule) | **POST** /api/v1/active-rules | Activate a Specific Rule
[**createNewRule**](RulesApi.md#createNewRule) | **POST** /api/v1/rules | Create New Rule
[**deactivateASpecificRule**](RulesApi.md#deactivateASpecificRule) | **DELETE** /api/v1/active-rules/{id} | Deactivate a Specific Rule
[**deleteASpecificRule**](RulesApi.md#deleteASpecificRule) | **DELETE** /api/v1/rules/{id} | Delete a Specific Rule
[**getASpecificRule**](RulesApi.md#getASpecificRule) | **GET** /api/v1/rules/{id} | Get a Specific Rule
[**getAllRules**](RulesApi.md#getAllRules) | **GET** /api/v1/rules | Get All Rules
[**updateASpecificRule**](RulesApi.md#updateASpecificRule) | **PATCH** /api/v1/rules/{id} | Update a Specific Rule
[**updateTheOrderOfTheRules**](RulesApi.md#updateTheOrderOfTheRules) | **POST** /api/v1/reorder-rules | Update the order of the Rules



## activateASpecificRule

Activate a Specific Rule

This endpoint activates a specific Rule.

### Example

```bash
 activateASpecificRule X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateASpecificRuleRequest** | [**ActivateASpecificRuleRequest**](ActivateASpecificRuleRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewRule201Response**](CreateNewRule201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createNewRule

Create New Rule

This endpoint creates a new rule.

### Example

```bash
 createNewRule X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNewRuleRequest** | [**CreateNewRuleRequest**](CreateNewRuleRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewRule201Response**](CreateNewRule201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deactivateASpecificRule

Deactivate a Specific Rule

This endpoint deactivates a specific rule.

### Example

```bash
 deactivateASpecificRule id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the rule to deactivate | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteASpecificRule

Delete a Specific Rule

This endpoint deletes a specific rule.

### Example

```bash
 deleteASpecificRule id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the rule to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getASpecificRule

Get a Specific Rule

This endpoint retrieves a specific rule.

### Example

```bash
 getASpecificRule id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the rule to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewRule201Response**](CreateNewRule201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAllRules

Get All Rules

This endpoint retrieves all rules.

### Example

```bash
 getAllRules X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetAllRules200Response**](GetAllRules200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateASpecificRule

Update a Specific Rule

This endpoint updates a specific rule.

### Example

```bash
 updateASpecificRule id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the rule to retrieve | [default to null]
 **updateASpecificRuleRequest** | [**UpdateASpecificRuleRequest**](UpdateASpecificRuleRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**UpdateASpecificRule200Response**](UpdateASpecificRule200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTheOrderOfTheRules

Update the order of the Rules

This endpoint updates the order of the rules.

### Example

```bash
 updateTheOrderOfTheRules X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateTheOrderOfTheRulesRequest** | [**UpdateTheOrderOfTheRulesRequest**](UpdateTheOrderOfTheRulesRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

**map**

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

