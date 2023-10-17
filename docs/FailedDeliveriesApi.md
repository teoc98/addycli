# FailedDeliveriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteASpecificFailedDelivery**](FailedDeliveriesApi.md#deleteASpecificFailedDelivery) | **DELETE** /api/v1/failed-deliveries/{id} | Delete a Specific Failed Delivery
[**getASpecificFailedDelivery**](FailedDeliveriesApi.md#getASpecificFailedDelivery) | **GET** /api/v1/failed-deliveries/{id} | Get a Specific Failed Delivery
[**getAllFailedDeliveries**](FailedDeliveriesApi.md#getAllFailedDeliveries) | **GET** /api/v1/failed-deliveries | Get All Failed Deliveries



## deleteASpecificFailedDelivery

Delete a Specific Failed Delivery

This endpoint deletes a specific failed delivery.

### Example

```bash
 deleteASpecificFailedDelivery id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the failed delivery to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getASpecificFailedDelivery

Get a Specific Failed Delivery

This endpoint retrieves a specific failed delivery.

### Example

```bash
 getASpecificFailedDelivery id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the failed delivery to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetASpecificFailedDelivery200Response**](GetASpecificFailedDelivery200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAllFailedDeliveries

Get All Failed Deliveries

This endpoint retrieves all failed deliveries.

### Example

```bash
 getAllFailedDeliveries X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetAllFailedDeliveries200Response**](GetAllFailedDeliveries200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

