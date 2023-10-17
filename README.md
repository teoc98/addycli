# addy.io Bash client

## Overview

This is a Bash client script for accessing addy.io service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*APITokenApi* | [**getDetailsAboutTheCurrentAPIToken**](docs/APITokenApi.md#getdetailsaboutthecurrentapitoken) | **GET** /api/v1/api-token-details | Get details about the current API token
*AccountDetailsApi* | [**getAllAccountDetails**](docs/AccountDetailsApi.md#getallaccountdetails) | **GET** /api/v1/account-details | Get All Account Details
*AliasBulkActionsApi* | [**bulkActivateSpecificAliases**](docs/AliasBulkActionsApi.md#bulkactivatespecificaliases) | **POST** /api/v1/aliases/activate/bulk | Bulk Activate Specific Aliases
*AliasBulkActionsApi* | [**bulkDeactivateSpecificAliases**](docs/AliasBulkActionsApi.md#bulkdeactivatespecificaliases) | **POST** /api/v1/aliases/deactivate/bulk | Bulk Deactivate Specific Aliases
*AliasBulkActionsApi* | [**bulkDeleteSpecificAliases**](docs/AliasBulkActionsApi.md#bulkdeletespecificaliases) | **POST** /api/v1/aliases/delete/bulk | Bulk Delete Specific Aliases
*AliasBulkActionsApi* | [**bulkForgetSpecificAliases**](docs/AliasBulkActionsApi.md#bulkforgetspecificaliases) | **POST** /api/v1/aliases/forget/bulk | Bulk Forget Specific Aliases
*AliasBulkActionsApi* | [**bulkGetSpecificAliases**](docs/AliasBulkActionsApi.md#bulkgetspecificaliases) | **POST** /api/v1/aliases/get/bulk | Bulk Get Specific Aliases
*AliasBulkActionsApi* | [**bulkRestoreSpecificAliases**](docs/AliasBulkActionsApi.md#bulkrestorespecificaliases) | **POST** /api/v1/aliases/restore/bulk | Bulk Restore Specific Aliases
*AliasBulkActionsApi* | [**bulkUpdateRecipientsForSpecificAliases**](docs/AliasBulkActionsApi.md#bulkupdaterecipientsforspecificaliases) | **POST** /api/v1/aliases/recipients/bulk | Bulk Update Recipients for Specific Aliases
*AliasesApi* | [**activateASpecificAlias**](docs/AliasesApi.md#activateaspecificalias) | **POST** /api/v1/active-aliases | Activate a Specific Alias
*AliasesApi* | [**createNewAlias**](docs/AliasesApi.md#createnewalias) | **POST** /api/v1/aliases | Create New Alias
*AliasesApi* | [**deactivateASpecificAlias**](docs/AliasesApi.md#deactivateaspecificalias) | **DELETE** /api/v1/active-aliases/{id} | Deactivate a Specific Alias
*AliasesApi* | [**deleteASpecificAlias**](docs/AliasesApi.md#deleteaspecificalias) | **DELETE** /api/v1/aliases/{id} | Delete a Specific Alias
*AliasesApi* | [**forgetASpecificAlias**](docs/AliasesApi.md#forgetaspecificalias) | **DELETE** /api/v1/aliases/{id}/forget | Forget a Specific Alias
*AliasesApi* | [**getASpecificAlias**](docs/AliasesApi.md#getaspecificalias) | **GET** /api/v1/aliases/{id} | Get a Specific Alias
*AliasesApi* | [**getAllAliases**](docs/AliasesApi.md#getallaliases) | **GET** /api/v1/aliases | Get All Aliases
*AliasesApi* | [**restoreASpecificDeletedAlias**](docs/AliasesApi.md#restoreaspecificdeletedalias) | **PATCH** /api/v1/aliases/{id}/restore | Restore a Specific Deleted Alias
*AliasesApi* | [**updateASpecificAlias**](docs/AliasesApi.md#updateaspecificalias) | **PATCH** /api/v1/aliases/{id} | Update a Specific Alias
*AliasesApi* | [**updateRecipientsForASpecificAlias**](docs/AliasesApi.md#updaterecipientsforaspecificalias) | **POST** /api/v1/alias-recipients | Update Recipients for a Specific Alias
*AppVersionApi* | [**getTheCurrentAddyioAppVersion**](docs/AppVersionApi.md#getthecurrentaddyioappversion) | **GET** /api/v1/app-version | Get The Current addy.io App Version
*DomainOptionsApi* | [**getAllDomainOptions**](docs/DomainOptionsApi.md#getalldomainoptions) | **GET** /api/v1/domain-options | Get All Domain Options
*DomainsApi* | [**activateASpecificDomain**](docs/DomainsApi.md#activateaspecificdomain) | **POST** /api/v1/active-domains | Activate a Specific Domain
*DomainsApi* | [**createNewDomain**](docs/DomainsApi.md#createnewdomain) | **POST** /api/v1/domains | Create New Domain
*DomainsApi* | [**deactivateASpecificDomain**](docs/DomainsApi.md#deactivateaspecificdomain) | **DELETE** /api/v1/active-domains/{id} | Deactivate a Specific Domain
*DomainsApi* | [**deleteASpecificDomain**](docs/DomainsApi.md#deleteaspecificdomain) | **DELETE** /api/v1/domains/{id} | Delete a Specific Domain
*DomainsApi* | [**disableCatchAllForASpecificDomain**](docs/DomainsApi.md#disablecatchallforaspecificdomain) | **DELETE** /api/v1/catch-all-domains/{id} | Disable catch-all for a Specific Domain
*DomainsApi* | [**enableCatchAllForASpecificDomain**](docs/DomainsApi.md#enablecatchallforaspecificdomain) | **POST** /api/v1/catch-all-domains | Enable catch-all for a Specific Domain
*DomainsApi* | [**getASpecificDomain**](docs/DomainsApi.md#getaspecificdomain) | **GET** /api/v1/domains/{id} | Get a Specific Domain
*DomainsApi* | [**getAllDomains**](docs/DomainsApi.md#getalldomains) | **GET** /api/v1/domains | Get All Domains
*DomainsApi* | [**updateASpecificDomain**](docs/DomainsApi.md#updateaspecificdomain) | **PATCH** /api/v1/domains/{id} | Update a Specific Domain
*DomainsApi* | [**updateDefaultRecipientForASpecificDomain**](docs/DomainsApi.md#updatedefaultrecipientforaspecificdomain) | **PATCH** /api/v1/domains/{id}/default-recipient | Update Default Recipient for a Specific Domain
*FailedDeliveriesApi* | [**deleteASpecificFailedDelivery**](docs/FailedDeliveriesApi.md#deleteaspecificfaileddelivery) | **DELETE** /api/v1/failed-deliveries/{id} | Delete a Specific Failed Delivery
*FailedDeliveriesApi* | [**getASpecificFailedDelivery**](docs/FailedDeliveriesApi.md#getaspecificfaileddelivery) | **GET** /api/v1/failed-deliveries/{id} | Get a Specific Failed Delivery
*FailedDeliveriesApi* | [**getAllFailedDeliveries**](docs/FailedDeliveriesApi.md#getallfaileddeliveries) | **GET** /api/v1/failed-deliveries | Get All Failed Deliveries
*RecipientsApi* | [**addPublicKeyForASpecificRecipient**](docs/RecipientsApi.md#addpublickeyforaspecificrecipient) | **PATCH** /api/v1/recipient-keys/{id} | Add Public Key for a Specific Recipient
*RecipientsApi* | [**allowASpecificRecipientToReplysendFromYourAliases**](docs/RecipientsApi.md#allowaspecificrecipienttoreplysendfromyouraliases) | **POST** /api/v1/allowed-recipients | Allow a Specific Recipient to reply/send from your aliases
*RecipientsApi* | [**createNewRecipient**](docs/RecipientsApi.md#createnewrecipient) | **POST** /api/v1/recipients | Create New Recipient
*RecipientsApi* | [**deleteASpecificRecipient**](docs/RecipientsApi.md#deleteaspecificrecipient) | **DELETE** /api/v1/recipients/{id} | Delete a Specific Recipient
*RecipientsApi* | [**disableEncryptionForASpecificRecipient**](docs/RecipientsApi.md#disableencryptionforaspecificrecipient) | **DELETE** /api/v1/encrypted-recipients/{id} | Disable Encryption for a Specific Recipient
*RecipientsApi* | [**disableInlinePGPInlineEncryptionForASpecificRecipient**](docs/RecipientsApi.md#disableinlinepgpinlineencryptionforaspecificrecipient) | **DELETE** /api/v1/inline-encrypted-recipients/{id} | Disable Inline (PGP/Inline) Encryption for a Specific Recipient
*RecipientsApi* | [**disableProtectedHeadershideSubjectForASpecificRecipient**](docs/RecipientsApi.md#disableprotectedheadershidesubjectforaspecificrecipient) | **DELETE** /api/v1/protected-headers-recipients/{id} | Disable Protected Headers (hide subject) for a Specific Recipient
*RecipientsApi* | [**disallowASpecificRecipientToReplysendFromYourAliases**](docs/RecipientsApi.md#disallowaspecificrecipienttoreplysendfromyouraliases) | **DELETE** /api/v1/allowed-recipients/{id} | Disallow a Specific Recipient to reply/send from your aliases
*RecipientsApi* | [**enableEncryptionForASpecificRecipient**](docs/RecipientsApi.md#enableencryptionforaspecificrecipient) | **POST** /api/v1/encrypted-recipients | Enable Encryption for a Specific Recipient
*RecipientsApi* | [**enableInlinePGPInlineEncryptionForASpecificRecipient**](docs/RecipientsApi.md#enableinlinepgpinlineencryptionforaspecificrecipient) | **POST** /api/v1/inline-encrypted-recipients | Enable Inline (PGP/Inline) Encryption for a Specific Recipient
*RecipientsApi* | [**enableProtectedHeadershideSubjectForASpecificRecipient**](docs/RecipientsApi.md#enableprotectedheadershidesubjectforaspecificrecipient) | **POST** /api/v1/protected-headers-recipients | Enable Protected Headers (hide subject) for a Specific Recipient
*RecipientsApi* | [**getASpecificRecipient**](docs/RecipientsApi.md#getaspecificrecipient) | **GET** /api/v1/recipients/{id} | Get a Specific Recipient
*RecipientsApi* | [**getAllRecipients**](docs/RecipientsApi.md#getallrecipients) | **GET** /api/v1/recipients | Get All Recipients
*RecipientsApi* | [**removePublicKeyForASpecificRecipient**](docs/RecipientsApi.md#removepublickeyforaspecificrecipient) | **DELETE** /api/v1/recipient-keys/{id} | Remove Public Key for a Specific Recipient
*RecipientsApi* | [**resendTheVerificationEmailForARecipient**](docs/RecipientsApi.md#resendtheverificationemailforarecipient) | **POST** /api/v1/recipients/email/resend | Resend the verification email for a recipient
*RulesApi* | [**activateASpecificRule**](docs/RulesApi.md#activateaspecificrule) | **POST** /api/v1/active-rules | Activate a Specific Rule
*RulesApi* | [**createNewRule**](docs/RulesApi.md#createnewrule) | **POST** /api/v1/rules | Create New Rule
*RulesApi* | [**deactivateASpecificRule**](docs/RulesApi.md#deactivateaspecificrule) | **DELETE** /api/v1/active-rules/{id} | Deactivate a Specific Rule
*RulesApi* | [**deleteASpecificRule**](docs/RulesApi.md#deleteaspecificrule) | **DELETE** /api/v1/rules/{id} | Delete a Specific Rule
*RulesApi* | [**getASpecificRule**](docs/RulesApi.md#getaspecificrule) | **GET** /api/v1/rules/{id} | Get a Specific Rule
*RulesApi* | [**getAllRules**](docs/RulesApi.md#getallrules) | **GET** /api/v1/rules | Get All Rules
*RulesApi* | [**updateASpecificRule**](docs/RulesApi.md#updateaspecificrule) | **PATCH** /api/v1/rules/{id} | Update a Specific Rule
*RulesApi* | [**updateTheOrderOfTheRules**](docs/RulesApi.md#updatetheorderoftherules) | **POST** /api/v1/reorder-rules | Update the order of the Rules
*UsernamesApi* | [**activateASpecificUsername**](docs/UsernamesApi.md#activateaspecificusername) | **POST** /api/v1/active-usernames | Activate a Specific Username
*UsernamesApi* | [**allowLoginForASpecificUsername**](docs/UsernamesApi.md#allowloginforaspecificusername) | **POST** /api/v1/loginable-usernames | Allow login for a Specific Username
*UsernamesApi* | [**createNewUsername**](docs/UsernamesApi.md#createnewusername) | **POST** /api/v1/usernames | Create New Username
*UsernamesApi* | [**deactivateASpecificUsername**](docs/UsernamesApi.md#deactivateaspecificusername) | **DELETE** /api/v1/active-usernames/{id} | Deactivate a Specific Username
*UsernamesApi* | [**deleteASpecificUsername**](docs/UsernamesApi.md#deleteaspecificusername) | **DELETE** /api/v1/usernames/{id} | Delete a Specific Username
*UsernamesApi* | [**disableCatchAllForASpecificUsername**](docs/UsernamesApi.md#disablecatchallforaspecificusername) | **DELETE** /api/v1/catch-all-usernames/{id} | Disable catch-all for a Specific Username
*UsernamesApi* | [**disallowLoginForASpecificUsername**](docs/UsernamesApi.md#disallowloginforaspecificusername) | **DELETE** /api/v1/loginable-usernames/{id} | Disallow login for a Specific Username
*UsernamesApi* | [**enableCatchAllForASpecificUsername**](docs/UsernamesApi.md#enablecatchallforaspecificusername) | **POST** /api/v1/catch-all-usernames | Enable catch-all for a Specific Username
*UsernamesApi* | [**getASpecificUsername**](docs/UsernamesApi.md#getaspecificusername) | **GET** /api/v1/usernames/{id} | Get a Specific Username
*UsernamesApi* | [**getAllUsernames**](docs/UsernamesApi.md#getallusernames) | **GET** /api/v1/usernames | Get All Usernames
*UsernamesApi* | [**updateASpecificUsername**](docs/UsernamesApi.md#updateaspecificusername) | **PATCH** /api/v1/usernames/{id} | Update a Specific Username
*UsernamesApi* | [**updateDefaultRecipientForASpecificUsername**](docs/UsernamesApi.md#updatedefaultrecipientforaspecificusername) | **PATCH** /api/v1/usernames/{id}/default-recipient | Update Default Recipient for a Specific Username


## Documentation For Models

 - [ActivateASpecificAlias200Response](docs/ActivateASpecificAlias200Response.md)
 - [ActivateASpecificAlias200ResponseData](docs/ActivateASpecificAlias200ResponseData.md)
 - [ActivateASpecificAliasRequest](docs/ActivateASpecificAliasRequest.md)
 - [ActivateASpecificDomainRequest](docs/ActivateASpecificDomainRequest.md)
 - [ActivateASpecificRuleRequest](docs/ActivateASpecificRuleRequest.md)
 - [ActivateASpecificUsernameRequest](docs/ActivateASpecificUsernameRequest.md)
 - [AddPublicKeyForASpecificRecipient200Response](docs/AddPublicKeyForASpecificRecipient200Response.md)
 - [AddPublicKeyForASpecificRecipient200ResponseData](docs/AddPublicKeyForASpecificRecipient200ResponseData.md)
 - [AddPublicKeyForASpecificRecipientRequest](docs/AddPublicKeyForASpecificRecipientRequest.md)
 - [BulkActivateSpecificAliases200Response](docs/BulkActivateSpecificAliases200Response.md)
 - [BulkActivateSpecificAliases200ResponseData](docs/BulkActivateSpecificAliases200ResponseData.md)
 - [BulkDeactivateSpecificAliases200Response](docs/BulkDeactivateSpecificAliases200Response.md)
 - [BulkDeactivateSpecificAliases200ResponseData](docs/BulkDeactivateSpecificAliases200ResponseData.md)
 - [BulkDeleteSpecificAliases200Response](docs/BulkDeleteSpecificAliases200Response.md)
 - [BulkDeleteSpecificAliases200ResponseData](docs/BulkDeleteSpecificAliases200ResponseData.md)
 - [BulkForgetSpecificAliases200Response](docs/BulkForgetSpecificAliases200Response.md)
 - [BulkForgetSpecificAliases200ResponseData](docs/BulkForgetSpecificAliases200ResponseData.md)
 - [BulkGetSpecificAliases200Response](docs/BulkGetSpecificAliases200Response.md)
 - [BulkGetSpecificAliases200ResponseDataInner](docs/BulkGetSpecificAliases200ResponseDataInner.md)
 - [BulkGetSpecificAliasesRequest](docs/BulkGetSpecificAliasesRequest.md)
 - [BulkRestoreSpecificAliases200Response](docs/BulkRestoreSpecificAliases200Response.md)
 - [BulkRestoreSpecificAliases200ResponseData](docs/BulkRestoreSpecificAliases200ResponseData.md)
 - [BulkUpdateRecipientsForSpecificAliases200Response](docs/BulkUpdateRecipientsForSpecificAliases200Response.md)
 - [BulkUpdateRecipientsForSpecificAliases200ResponseData](docs/BulkUpdateRecipientsForSpecificAliases200ResponseData.md)
 - [BulkUpdateRecipientsForSpecificAliasesRequest](docs/BulkUpdateRecipientsForSpecificAliasesRequest.md)
 - [CreateNewAlias201Response](docs/CreateNewAlias201Response.md)
 - [CreateNewAlias201ResponseData](docs/CreateNewAlias201ResponseData.md)
 - [CreateNewAliasRequest](docs/CreateNewAliasRequest.md)
 - [CreateNewDomain201Response](docs/CreateNewDomain201Response.md)
 - [CreateNewDomainRequest](docs/CreateNewDomainRequest.md)
 - [CreateNewRecipient201Response](docs/CreateNewRecipient201Response.md)
 - [CreateNewRecipient201ResponseData](docs/CreateNewRecipient201ResponseData.md)
 - [CreateNewRecipientRequest](docs/CreateNewRecipientRequest.md)
 - [CreateNewRule201Response](docs/CreateNewRule201Response.md)
 - [CreateNewRule201ResponseData](docs/CreateNewRule201ResponseData.md)
 - [CreateNewRule201ResponseDataActionsInner](docs/CreateNewRule201ResponseDataActionsInner.md)
 - [CreateNewRule201ResponseDataConditionsInner](docs/CreateNewRule201ResponseDataConditionsInner.md)
 - [CreateNewRuleRequest](docs/CreateNewRuleRequest.md)
 - [CreateNewRuleRequestActions](docs/CreateNewRuleRequestActions.md)
 - [CreateNewRuleRequestConditions](docs/CreateNewRuleRequestConditions.md)
 - [CreateNewUsername201Response](docs/CreateNewUsername201Response.md)
 - [CreateNewUsernameRequest](docs/CreateNewUsernameRequest.md)
 - [EnableCatchAllForASpecificDomain200Response](docs/EnableCatchAllForASpecificDomain200Response.md)
 - [EnableCatchAllForASpecificDomain200ResponseData](docs/EnableCatchAllForASpecificDomain200ResponseData.md)
 - [EnableEncryptionForASpecificRecipientRequest](docs/EnableEncryptionForASpecificRecipientRequest.md)
 - [EnableInlinePGPInlineEncryptionForASpecificRecipient200Response](docs/EnableInlinePGPInlineEncryptionForASpecificRecipient200Response.md)
 - [EnableInlinePGPInlineEncryptionForASpecificRecipient200ResponseData](docs/EnableInlinePGPInlineEncryptionForASpecificRecipient200ResponseData.md)
 - [EnableProtectedHeadershideSubjectForASpecificRecipient200Response](docs/EnableProtectedHeadershideSubjectForASpecificRecipient200Response.md)
 - [EnableProtectedHeadershideSubjectForASpecificRecipient200ResponseData](docs/EnableProtectedHeadershideSubjectForASpecificRecipient200ResponseData.md)
 - [GetASpecificAlias200Response](docs/GetASpecificAlias200Response.md)
 - [GetASpecificFailedDelivery200Response](docs/GetASpecificFailedDelivery200Response.md)
 - [GetAllAccountDetails200Response](docs/GetAllAccountDetails200Response.md)
 - [GetAllAccountDetails200ResponseDataInner](docs/GetAllAccountDetails200ResponseDataInner.md)
 - [GetAllAliases200Response](docs/GetAllAliases200Response.md)
 - [GetAllAliases200ResponseLinks](docs/GetAllAliases200ResponseLinks.md)
 - [GetAllAliases200ResponseMeta](docs/GetAllAliases200ResponseMeta.md)
 - [GetAllAliases200ResponseMetaLinksInner](docs/GetAllAliases200ResponseMetaLinksInner.md)
 - [GetAllDomainOptions200Response](docs/GetAllDomainOptions200Response.md)
 - [GetAllDomains200Response](docs/GetAllDomains200Response.md)
 - [GetAllDomains200ResponseDataInner](docs/GetAllDomains200ResponseDataInner.md)
 - [GetAllFailedDeliveries200Response](docs/GetAllFailedDeliveries200Response.md)
 - [GetAllFailedDeliveries200ResponseDataInner](docs/GetAllFailedDeliveries200ResponseDataInner.md)
 - [GetAllRecipients200Response](docs/GetAllRecipients200Response.md)
 - [GetAllRules200Response](docs/GetAllRules200Response.md)
 - [GetAllRules200ResponseDataInner](docs/GetAllRules200ResponseDataInner.md)
 - [GetAllRules200ResponseDataInnerActionsInner](docs/GetAllRules200ResponseDataInnerActionsInner.md)
 - [GetAllRules200ResponseDataInnerConditionsInner](docs/GetAllRules200ResponseDataInnerConditionsInner.md)
 - [GetAllUsernames200Response](docs/GetAllUsernames200Response.md)
 - [GetAllUsernames200ResponseDataInner](docs/GetAllUsernames200ResponseDataInner.md)
 - [GetDetailsAboutTheCurrentAPIToken200Response](docs/GetDetailsAboutTheCurrentAPIToken200Response.md)
 - [GetTheCurrentAddyioAppVersion200Response](docs/GetTheCurrentAddyioAppVersion200Response.md)
 - [ResendTheVerificationEmailForARecipientRequest](docs/ResendTheVerificationEmailForARecipientRequest.md)
 - [RestoreASpecificDeletedAlias200Response](docs/RestoreASpecificDeletedAlias200Response.md)
 - [RestoreASpecificDeletedAlias200ResponseData](docs/RestoreASpecificDeletedAlias200ResponseData.md)
 - [UpdateASpecificAlias200Response](docs/UpdateASpecificAlias200Response.md)
 - [UpdateASpecificAlias200ResponseData](docs/UpdateASpecificAlias200ResponseData.md)
 - [UpdateASpecificAliasRequest](docs/UpdateASpecificAliasRequest.md)
 - [UpdateASpecificDomain200Response](docs/UpdateASpecificDomain200Response.md)
 - [UpdateASpecificDomain200ResponseData](docs/UpdateASpecificDomain200ResponseData.md)
 - [UpdateASpecificDomainRequest](docs/UpdateASpecificDomainRequest.md)
 - [UpdateASpecificRule200Response](docs/UpdateASpecificRule200Response.md)
 - [UpdateASpecificRule200ResponseData](docs/UpdateASpecificRule200ResponseData.md)
 - [UpdateASpecificRuleRequest](docs/UpdateASpecificRuleRequest.md)
 - [UpdateASpecificUsername200Response](docs/UpdateASpecificUsername200Response.md)
 - [UpdateASpecificUsername200ResponseData](docs/UpdateASpecificUsername200ResponseData.md)
 - [UpdateASpecificUsernameRequest](docs/UpdateASpecificUsernameRequest.md)
 - [UpdateDefaultRecipientForASpecificDomain200Response](docs/UpdateDefaultRecipientForASpecificDomain200Response.md)
 - [UpdateDefaultRecipientForASpecificDomain200ResponseData](docs/UpdateDefaultRecipientForASpecificDomain200ResponseData.md)
 - [UpdateDefaultRecipientForASpecificDomainRequest](docs/UpdateDefaultRecipientForASpecificDomainRequest.md)
 - [UpdateDefaultRecipientForASpecificUsername200Response](docs/UpdateDefaultRecipientForASpecificUsername200Response.md)
 - [UpdateDefaultRecipientForASpecificUsername200ResponseData](docs/UpdateDefaultRecipientForASpecificUsername200ResponseData.md)
 - [UpdateRecipientsForASpecificAlias200Response](docs/UpdateRecipientsForASpecificAlias200Response.md)
 - [UpdateRecipientsForASpecificAlias200ResponseData](docs/UpdateRecipientsForASpecificAlias200ResponseData.md)
 - [UpdateRecipientsForASpecificAlias200ResponseDataRecipientsInner](docs/UpdateRecipientsForASpecificAlias200ResponseDataRecipientsInner.md)
 - [UpdateRecipientsForASpecificAliasRequest](docs/UpdateRecipientsForASpecificAliasRequest.md)
 - [UpdateTheOrderOfTheRulesRequest](docs/UpdateTheOrderOfTheRulesRequest.md)


## Documentation For Authorization


## default


- **Type**: HTTP Bearer Token authentication

