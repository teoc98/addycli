# RecipientsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPublicKeyForASpecificRecipient**](RecipientsApi.md#addPublicKeyForASpecificRecipient) | **PATCH** /api/v1/recipient-keys/{id} | Add Public Key for a Specific Recipient
[**allowASpecificRecipientToReplysendFromYourAliases**](RecipientsApi.md#allowASpecificRecipientToReplysendFromYourAliases) | **POST** /api/v1/allowed-recipients | Allow a Specific Recipient to reply/send from your aliases
[**createNewRecipient**](RecipientsApi.md#createNewRecipient) | **POST** /api/v1/recipients | Create New Recipient
[**deleteASpecificRecipient**](RecipientsApi.md#deleteASpecificRecipient) | **DELETE** /api/v1/recipients/{id} | Delete a Specific Recipient
[**disableEncryptionForASpecificRecipient**](RecipientsApi.md#disableEncryptionForASpecificRecipient) | **DELETE** /api/v1/encrypted-recipients/{id} | Disable Encryption for a Specific Recipient
[**disableInlinePGPInlineEncryptionForASpecificRecipient**](RecipientsApi.md#disableInlinePGPInlineEncryptionForASpecificRecipient) | **DELETE** /api/v1/inline-encrypted-recipients/{id} | Disable Inline (PGP/Inline) Encryption for a Specific Recipient
[**disableProtectedHeadershideSubjectForASpecificRecipient**](RecipientsApi.md#disableProtectedHeadershideSubjectForASpecificRecipient) | **DELETE** /api/v1/protected-headers-recipients/{id} | Disable Protected Headers (hide subject) for a Specific Recipient
[**disallowASpecificRecipientToReplysendFromYourAliases**](RecipientsApi.md#disallowASpecificRecipientToReplysendFromYourAliases) | **DELETE** /api/v1/allowed-recipients/{id} | Disallow a Specific Recipient to reply/send from your aliases
[**enableEncryptionForASpecificRecipient**](RecipientsApi.md#enableEncryptionForASpecificRecipient) | **POST** /api/v1/encrypted-recipients | Enable Encryption for a Specific Recipient
[**enableInlinePGPInlineEncryptionForASpecificRecipient**](RecipientsApi.md#enableInlinePGPInlineEncryptionForASpecificRecipient) | **POST** /api/v1/inline-encrypted-recipients | Enable Inline (PGP/Inline) Encryption for a Specific Recipient
[**enableProtectedHeadershideSubjectForASpecificRecipient**](RecipientsApi.md#enableProtectedHeadershideSubjectForASpecificRecipient) | **POST** /api/v1/protected-headers-recipients | Enable Protected Headers (hide subject) for a Specific Recipient
[**getASpecificRecipient**](RecipientsApi.md#getASpecificRecipient) | **GET** /api/v1/recipients/{id} | Get a Specific Recipient
[**getAllRecipients**](RecipientsApi.md#getAllRecipients) | **GET** /api/v1/recipients | Get All Recipients
[**removePublicKeyForASpecificRecipient**](RecipientsApi.md#removePublicKeyForASpecificRecipient) | **DELETE** /api/v1/recipient-keys/{id} | Remove Public Key for a Specific Recipient
[**resendTheVerificationEmailForARecipient**](RecipientsApi.md#resendTheVerificationEmailForARecipient) | **POST** /api/v1/recipients/email/resend | Resend the verification email for a recipient



## addPublicKeyForASpecificRecipient

Add Public Key for a Specific Recipient

This endpoint adds a public GPG/OpenPGP key for a specific recipient. Make sure to escape the json using something like - https://jsonformatter.org/json-escape

### Example

```bash
 addPublicKeyForASpecificRecipient id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to add the key for | [default to null]
 **addPublicKeyForASpecificRecipientRequest** | [**AddPublicKeyForASpecificRecipientRequest**](AddPublicKeyForASpecificRecipientRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**AddPublicKeyForASpecificRecipient200Response**](AddPublicKeyForASpecificRecipient200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## allowASpecificRecipientToReplysendFromYourAliases

Allow a Specific Recipient to reply/send from your aliases

This endpoint allows a specific recipient to reply/send.

### Example

```bash
 allowASpecificRecipientToReplysendFromYourAliases X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enableEncryptionForASpecificRecipientRequest** | [**EnableEncryptionForASpecificRecipientRequest**](EnableEncryptionForASpecificRecipientRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**AddPublicKeyForASpecificRecipient200Response**](AddPublicKeyForASpecificRecipient200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createNewRecipient

Create New Recipient

This endpoint creates a new recipient.

### Example

```bash
 createNewRecipient X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNewRecipientRequest** | [**CreateNewRecipientRequest**](CreateNewRecipientRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewRecipient201Response**](CreateNewRecipient201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteASpecificRecipient

Delete a Specific Recipient

This endpoint deletes a specific recipient.

### Example

```bash
 deleteASpecificRecipient id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disableEncryptionForASpecificRecipient

Disable Encryption for a Specific Recipient

This endpoint disables encryption for a specific recipient.

### Example

```bash
 disableEncryptionForASpecificRecipient id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to disable encryption for | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disableInlinePGPInlineEncryptionForASpecificRecipient

Disable Inline (PGP/Inline) Encryption for a Specific Recipient

This endpoint disables inline encryption for a specific recipient.

### Example

```bash
 disableInlinePGPInlineEncryptionForASpecificRecipient id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to disable inline encryption for | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disableProtectedHeadershideSubjectForASpecificRecipient

Disable Protected Headers (hide subject) for a Specific Recipient

This endpoint disables protected headers for a specific recipient.

### Example

```bash
 disableProtectedHeadershideSubjectForASpecificRecipient id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to disable protected headers for | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disallowASpecificRecipientToReplysendFromYourAliases

Disallow a Specific Recipient to reply/send from your aliases

This endpoint disallows a specific recipient to reply/send.

### Example

```bash
 disallowASpecificRecipientToReplysendFromYourAliases id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to disallow replies/sends for | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enableEncryptionForASpecificRecipient

Enable Encryption for a Specific Recipient

This endpoint enables encryption for a specific recipient.

### Example

```bash
 enableEncryptionForASpecificRecipient X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enableEncryptionForASpecificRecipientRequest** | [**EnableEncryptionForASpecificRecipientRequest**](EnableEncryptionForASpecificRecipientRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**AddPublicKeyForASpecificRecipient200Response**](AddPublicKeyForASpecificRecipient200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enableInlinePGPInlineEncryptionForASpecificRecipient

Enable Inline (PGP/Inline) Encryption for a Specific Recipient

This endpoint enables inline encryption for a specific recipient.

### Example

```bash
 enableInlinePGPInlineEncryptionForASpecificRecipient X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enableEncryptionForASpecificRecipientRequest** | [**EnableEncryptionForASpecificRecipientRequest**](EnableEncryptionForASpecificRecipientRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**EnableInlinePGPInlineEncryptionForASpecificRecipient200Response**](EnableInlinePGPInlineEncryptionForASpecificRecipient200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enableProtectedHeadershideSubjectForASpecificRecipient

Enable Protected Headers (hide subject) for a Specific Recipient

This endpoint enables protected headers which hides the message subject for a specific recipient.

### Example

```bash
 enableProtectedHeadershideSubjectForASpecificRecipient X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enableEncryptionForASpecificRecipientRequest** | [**EnableEncryptionForASpecificRecipientRequest**](EnableEncryptionForASpecificRecipientRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**EnableProtectedHeadershideSubjectForASpecificRecipient200Response**](EnableProtectedHeadershideSubjectForASpecificRecipient200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getASpecificRecipient

Get a Specific Recipient

This endpoint retrieves a specific recipient.

### Example

```bash
 getASpecificRecipient id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to retrieve | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**CreateNewRecipient201Response**](CreateNewRecipient201Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAllRecipients

Get All Recipients

This endpoint retrieves all recipients.

### Example

```bash
 getAllRecipients  filter[verified]=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterLeft_Square_BracketverifiedRight_Square_Bracket** | **string** | Choose to return recipients that are verified or unverified. Options: true, false. | [optional] [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

[**GetAllRecipients200Response**](GetAllRecipients200Response.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## removePublicKeyForASpecificRecipient

Remove Public Key for a Specific Recipient

This endpoint remnoves a public GPG/OpenPGP key for a specific recipient.

### Example

```bash
 removePublicKeyForASpecificRecipient id=value X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** | The id of the recipient to add the key for | [default to null]
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resendTheVerificationEmailForARecipient

Resend the verification email for a recipient

This endpoint can be used to resend the verification email when adding a new recipient

### Example

```bash
 resendTheVerificationEmailForARecipient X-Requested-With:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendTheVerificationEmailForARecipientRequest** | [**ResendTheVerificationEmailForARecipientRequest**](ResendTheVerificationEmailForARecipientRequest.md) |  |
 **xRequestedWith** | **string** |  | [optional] [default to null]

### Return type

**map**

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

