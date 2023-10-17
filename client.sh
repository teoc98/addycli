#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for addy.io.
#
# LICENSE:
# 
#
# CONTACT:
# 
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["getDetailsAboutTheCurrentAPIToken:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllAccountDetails:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["bulkActivateSpecificAliases:::BulkGetSpecificAliasesRequest"]=1
operation_parameters_minimum_occurrences["bulkActivateSpecificAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["bulkDeactivateSpecificAliases:::BulkGetSpecificAliasesRequest"]=1
operation_parameters_minimum_occurrences["bulkDeactivateSpecificAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["bulkDeleteSpecificAliases:::BulkGetSpecificAliasesRequest"]=1
operation_parameters_minimum_occurrences["bulkDeleteSpecificAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["bulkForgetSpecificAliases:::BulkGetSpecificAliasesRequest"]=1
operation_parameters_minimum_occurrences["bulkForgetSpecificAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["bulkGetSpecificAliases:::BulkGetSpecificAliasesRequest"]=1
operation_parameters_minimum_occurrences["bulkGetSpecificAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["bulkRestoreSpecificAliases:::BulkGetSpecificAliasesRequest"]=1
operation_parameters_minimum_occurrences["bulkRestoreSpecificAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["bulkUpdateRecipientsForSpecificAliases:::BulkUpdateRecipientsForSpecificAliasesRequest"]=1
operation_parameters_minimum_occurrences["bulkUpdateRecipientsForSpecificAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["activateASpecificAlias:::ActivateASpecificAliasRequest"]=1
operation_parameters_minimum_occurrences["activateASpecificAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["createNewAlias:::CreateNewAliasRequest"]=1
operation_parameters_minimum_occurrences["createNewAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deactivateASpecificAlias:::id"]=1
operation_parameters_minimum_occurrences["deactivateASpecificAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deleteASpecificAlias:::id"]=1
operation_parameters_minimum_occurrences["deleteASpecificAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["forgetASpecificAlias:::id"]=1
operation_parameters_minimum_occurrences["forgetASpecificAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getASpecificAlias:::id"]=1
operation_parameters_minimum_occurrences["getASpecificAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllAliases:::filter[deleted]"]=0
operation_parameters_minimum_occurrences["getAllAliases:::filter[active]"]=0
operation_parameters_minimum_occurrences["getAllAliases:::filter[search]"]=0
operation_parameters_minimum_occurrences["getAllAliases:::sort"]=0
operation_parameters_minimum_occurrences["getAllAliases:::page[number]"]=0
operation_parameters_minimum_occurrences["getAllAliases:::page[size]"]=0
operation_parameters_minimum_occurrences["getAllAliases:::with"]=0
operation_parameters_minimum_occurrences["getAllAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["restoreASpecificDeletedAlias:::id"]=1
operation_parameters_minimum_occurrences["restoreASpecificDeletedAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateASpecificAlias:::id"]=1
operation_parameters_minimum_occurrences["updateASpecificAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateASpecificAlias:::UpdateASpecificAliasRequest"]=0
operation_parameters_minimum_occurrences["updateRecipientsForASpecificAlias:::UpdateRecipientsForASpecificAliasRequest"]=1
operation_parameters_minimum_occurrences["updateRecipientsForASpecificAlias:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getTheCurrentAddyioAppVersion:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllDomainOptions:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["activateASpecificDomain:::ActivateASpecificDomainRequest"]=1
operation_parameters_minimum_occurrences["activateASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["createNewDomain:::CreateNewDomainRequest"]=1
operation_parameters_minimum_occurrences["createNewDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deactivateASpecificDomain:::id"]=1
operation_parameters_minimum_occurrences["deactivateASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deleteASpecificDomain:::id"]=1
operation_parameters_minimum_occurrences["deleteASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["disableCatchAllForASpecificDomain:::id"]=1
operation_parameters_minimum_occurrences["disableCatchAllForASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["enableCatchAllForASpecificDomain:::ActivateASpecificDomainRequest"]=1
operation_parameters_minimum_occurrences["enableCatchAllForASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getASpecificDomain:::id"]=1
operation_parameters_minimum_occurrences["getASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllDomains:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateASpecificDomain:::id"]=1
operation_parameters_minimum_occurrences["updateASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateASpecificDomain:::UpdateASpecificDomainRequest"]=0
operation_parameters_minimum_occurrences["updateDefaultRecipientForASpecificDomain:::id"]=1
operation_parameters_minimum_occurrences["updateDefaultRecipientForASpecificDomain:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateDefaultRecipientForASpecificDomain:::UpdateDefaultRecipientForASpecificDomainRequest"]=0
operation_parameters_minimum_occurrences["deleteASpecificFailedDelivery:::id"]=1
operation_parameters_minimum_occurrences["deleteASpecificFailedDelivery:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getASpecificFailedDelivery:::id"]=1
operation_parameters_minimum_occurrences["getASpecificFailedDelivery:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllFailedDeliveries:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["addPublicKeyForASpecificRecipient:::id"]=1
operation_parameters_minimum_occurrences["addPublicKeyForASpecificRecipient:::AddPublicKeyForASpecificRecipientRequest"]=1
operation_parameters_minimum_occurrences["addPublicKeyForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["allowASpecificRecipientToReplysendFromYourAliases:::EnableEncryptionForASpecificRecipientRequest"]=1
operation_parameters_minimum_occurrences["allowASpecificRecipientToReplysendFromYourAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["createNewRecipient:::CreateNewRecipientRequest"]=1
operation_parameters_minimum_occurrences["createNewRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deleteASpecificRecipient:::id"]=1
operation_parameters_minimum_occurrences["deleteASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["disableEncryptionForASpecificRecipient:::id"]=1
operation_parameters_minimum_occurrences["disableEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["disableInlinePGPInlineEncryptionForASpecificRecipient:::id"]=1
operation_parameters_minimum_occurrences["disableInlinePGPInlineEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["disableProtectedHeadershideSubjectForASpecificRecipient:::id"]=1
operation_parameters_minimum_occurrences["disableProtectedHeadershideSubjectForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["disallowASpecificRecipientToReplysendFromYourAliases:::id"]=1
operation_parameters_minimum_occurrences["disallowASpecificRecipientToReplysendFromYourAliases:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["enableEncryptionForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=1
operation_parameters_minimum_occurrences["enableEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["enableInlinePGPInlineEncryptionForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=1
operation_parameters_minimum_occurrences["enableInlinePGPInlineEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["enableProtectedHeadershideSubjectForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=1
operation_parameters_minimum_occurrences["enableProtectedHeadershideSubjectForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getASpecificRecipient:::id"]=1
operation_parameters_minimum_occurrences["getASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllRecipients:::filter[verified]"]=0
operation_parameters_minimum_occurrences["getAllRecipients:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["removePublicKeyForASpecificRecipient:::id"]=1
operation_parameters_minimum_occurrences["removePublicKeyForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["resendTheVerificationEmailForARecipient:::ResendTheVerificationEmailForARecipientRequest"]=1
operation_parameters_minimum_occurrences["resendTheVerificationEmailForARecipient:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["activateASpecificRule:::ActivateASpecificRuleRequest"]=1
operation_parameters_minimum_occurrences["activateASpecificRule:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["createNewRule:::CreateNewRuleRequest"]=1
operation_parameters_minimum_occurrences["createNewRule:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deactivateASpecificRule:::id"]=1
operation_parameters_minimum_occurrences["deactivateASpecificRule:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deleteASpecificRule:::id"]=1
operation_parameters_minimum_occurrences["deleteASpecificRule:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getASpecificRule:::id"]=1
operation_parameters_minimum_occurrences["getASpecificRule:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllRules:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateASpecificRule:::id"]=1
operation_parameters_minimum_occurrences["updateASpecificRule:::UpdateASpecificRuleRequest"]=1
operation_parameters_minimum_occurrences["updateASpecificRule:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateTheOrderOfTheRules:::UpdateTheOrderOfTheRulesRequest"]=1
operation_parameters_minimum_occurrences["updateTheOrderOfTheRules:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["activateASpecificUsername:::ActivateASpecificUsernameRequest"]=1
operation_parameters_minimum_occurrences["activateASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["allowLoginForASpecificUsername:::ActivateASpecificUsernameRequest"]=1
operation_parameters_minimum_occurrences["allowLoginForASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["createNewUsername:::CreateNewUsernameRequest"]=1
operation_parameters_minimum_occurrences["createNewUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deactivateASpecificUsername:::id"]=1
operation_parameters_minimum_occurrences["deactivateASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["deleteASpecificUsername:::id"]=1
operation_parameters_minimum_occurrences["deleteASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["disableCatchAllForASpecificUsername:::id"]=1
operation_parameters_minimum_occurrences["disableCatchAllForASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["disallowLoginForASpecificUsername:::id"]=1
operation_parameters_minimum_occurrences["disallowLoginForASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["enableCatchAllForASpecificUsername:::ActivateASpecificUsernameRequest"]=1
operation_parameters_minimum_occurrences["enableCatchAllForASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getASpecificUsername:::id"]=1
operation_parameters_minimum_occurrences["getASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["getAllUsernames:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateASpecificUsername:::id"]=1
operation_parameters_minimum_occurrences["updateASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateASpecificUsername:::UpdateASpecificUsernameRequest"]=0
operation_parameters_minimum_occurrences["updateDefaultRecipientForASpecificUsername:::id"]=1
operation_parameters_minimum_occurrences["updateDefaultRecipientForASpecificUsername:::X-Requested-With"]=0
operation_parameters_minimum_occurrences["updateDefaultRecipientForASpecificUsername:::UpdateDefaultRecipientForASpecificDomainRequest"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["getDetailsAboutTheCurrentAPIToken:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllAccountDetails:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["bulkActivateSpecificAliases:::BulkGetSpecificAliasesRequest"]=0
operation_parameters_maximum_occurrences["bulkActivateSpecificAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["bulkDeactivateSpecificAliases:::BulkGetSpecificAliasesRequest"]=0
operation_parameters_maximum_occurrences["bulkDeactivateSpecificAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["bulkDeleteSpecificAliases:::BulkGetSpecificAliasesRequest"]=0
operation_parameters_maximum_occurrences["bulkDeleteSpecificAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["bulkForgetSpecificAliases:::BulkGetSpecificAliasesRequest"]=0
operation_parameters_maximum_occurrences["bulkForgetSpecificAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["bulkGetSpecificAliases:::BulkGetSpecificAliasesRequest"]=0
operation_parameters_maximum_occurrences["bulkGetSpecificAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["bulkRestoreSpecificAliases:::BulkGetSpecificAliasesRequest"]=0
operation_parameters_maximum_occurrences["bulkRestoreSpecificAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["bulkUpdateRecipientsForSpecificAliases:::BulkUpdateRecipientsForSpecificAliasesRequest"]=0
operation_parameters_maximum_occurrences["bulkUpdateRecipientsForSpecificAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["activateASpecificAlias:::ActivateASpecificAliasRequest"]=0
operation_parameters_maximum_occurrences["activateASpecificAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["createNewAlias:::CreateNewAliasRequest"]=0
operation_parameters_maximum_occurrences["createNewAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deactivateASpecificAlias:::id"]=0
operation_parameters_maximum_occurrences["deactivateASpecificAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deleteASpecificAlias:::id"]=0
operation_parameters_maximum_occurrences["deleteASpecificAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["forgetASpecificAlias:::id"]=0
operation_parameters_maximum_occurrences["forgetASpecificAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getASpecificAlias:::id"]=0
operation_parameters_maximum_occurrences["getASpecificAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllAliases:::filter[deleted]"]=0
operation_parameters_maximum_occurrences["getAllAliases:::filter[active]"]=0
operation_parameters_maximum_occurrences["getAllAliases:::filter[search]"]=0
operation_parameters_maximum_occurrences["getAllAliases:::sort"]=0
operation_parameters_maximum_occurrences["getAllAliases:::page[number]"]=0
operation_parameters_maximum_occurrences["getAllAliases:::page[size]"]=0
operation_parameters_maximum_occurrences["getAllAliases:::with"]=0
operation_parameters_maximum_occurrences["getAllAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["restoreASpecificDeletedAlias:::id"]=0
operation_parameters_maximum_occurrences["restoreASpecificDeletedAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateASpecificAlias:::id"]=0
operation_parameters_maximum_occurrences["updateASpecificAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateASpecificAlias:::UpdateASpecificAliasRequest"]=0
operation_parameters_maximum_occurrences["updateRecipientsForASpecificAlias:::UpdateRecipientsForASpecificAliasRequest"]=0
operation_parameters_maximum_occurrences["updateRecipientsForASpecificAlias:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getTheCurrentAddyioAppVersion:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllDomainOptions:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["activateASpecificDomain:::ActivateASpecificDomainRequest"]=0
operation_parameters_maximum_occurrences["activateASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["createNewDomain:::CreateNewDomainRequest"]=0
operation_parameters_maximum_occurrences["createNewDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deactivateASpecificDomain:::id"]=0
operation_parameters_maximum_occurrences["deactivateASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deleteASpecificDomain:::id"]=0
operation_parameters_maximum_occurrences["deleteASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["disableCatchAllForASpecificDomain:::id"]=0
operation_parameters_maximum_occurrences["disableCatchAllForASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["enableCatchAllForASpecificDomain:::ActivateASpecificDomainRequest"]=0
operation_parameters_maximum_occurrences["enableCatchAllForASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getASpecificDomain:::id"]=0
operation_parameters_maximum_occurrences["getASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllDomains:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateASpecificDomain:::id"]=0
operation_parameters_maximum_occurrences["updateASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateASpecificDomain:::UpdateASpecificDomainRequest"]=0
operation_parameters_maximum_occurrences["updateDefaultRecipientForASpecificDomain:::id"]=0
operation_parameters_maximum_occurrences["updateDefaultRecipientForASpecificDomain:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateDefaultRecipientForASpecificDomain:::UpdateDefaultRecipientForASpecificDomainRequest"]=0
operation_parameters_maximum_occurrences["deleteASpecificFailedDelivery:::id"]=0
operation_parameters_maximum_occurrences["deleteASpecificFailedDelivery:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getASpecificFailedDelivery:::id"]=0
operation_parameters_maximum_occurrences["getASpecificFailedDelivery:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllFailedDeliveries:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["addPublicKeyForASpecificRecipient:::id"]=0
operation_parameters_maximum_occurrences["addPublicKeyForASpecificRecipient:::AddPublicKeyForASpecificRecipientRequest"]=0
operation_parameters_maximum_occurrences["addPublicKeyForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["allowASpecificRecipientToReplysendFromYourAliases:::EnableEncryptionForASpecificRecipientRequest"]=0
operation_parameters_maximum_occurrences["allowASpecificRecipientToReplysendFromYourAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["createNewRecipient:::CreateNewRecipientRequest"]=0
operation_parameters_maximum_occurrences["createNewRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deleteASpecificRecipient:::id"]=0
operation_parameters_maximum_occurrences["deleteASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["disableEncryptionForASpecificRecipient:::id"]=0
operation_parameters_maximum_occurrences["disableEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["disableInlinePGPInlineEncryptionForASpecificRecipient:::id"]=0
operation_parameters_maximum_occurrences["disableInlinePGPInlineEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["disableProtectedHeadershideSubjectForASpecificRecipient:::id"]=0
operation_parameters_maximum_occurrences["disableProtectedHeadershideSubjectForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["disallowASpecificRecipientToReplysendFromYourAliases:::id"]=0
operation_parameters_maximum_occurrences["disallowASpecificRecipientToReplysendFromYourAliases:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["enableEncryptionForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=0
operation_parameters_maximum_occurrences["enableEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["enableInlinePGPInlineEncryptionForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=0
operation_parameters_maximum_occurrences["enableInlinePGPInlineEncryptionForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["enableProtectedHeadershideSubjectForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=0
operation_parameters_maximum_occurrences["enableProtectedHeadershideSubjectForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getASpecificRecipient:::id"]=0
operation_parameters_maximum_occurrences["getASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllRecipients:::filter[verified]"]=0
operation_parameters_maximum_occurrences["getAllRecipients:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["removePublicKeyForASpecificRecipient:::id"]=0
operation_parameters_maximum_occurrences["removePublicKeyForASpecificRecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["resendTheVerificationEmailForARecipient:::ResendTheVerificationEmailForARecipientRequest"]=0
operation_parameters_maximum_occurrences["resendTheVerificationEmailForARecipient:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["activateASpecificRule:::ActivateASpecificRuleRequest"]=0
operation_parameters_maximum_occurrences["activateASpecificRule:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["createNewRule:::CreateNewRuleRequest"]=0
operation_parameters_maximum_occurrences["createNewRule:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deactivateASpecificRule:::id"]=0
operation_parameters_maximum_occurrences["deactivateASpecificRule:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deleteASpecificRule:::id"]=0
operation_parameters_maximum_occurrences["deleteASpecificRule:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getASpecificRule:::id"]=0
operation_parameters_maximum_occurrences["getASpecificRule:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllRules:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateASpecificRule:::id"]=0
operation_parameters_maximum_occurrences["updateASpecificRule:::UpdateASpecificRuleRequest"]=0
operation_parameters_maximum_occurrences["updateASpecificRule:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateTheOrderOfTheRules:::UpdateTheOrderOfTheRulesRequest"]=0
operation_parameters_maximum_occurrences["updateTheOrderOfTheRules:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["activateASpecificUsername:::ActivateASpecificUsernameRequest"]=0
operation_parameters_maximum_occurrences["activateASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["allowLoginForASpecificUsername:::ActivateASpecificUsernameRequest"]=0
operation_parameters_maximum_occurrences["allowLoginForASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["createNewUsername:::CreateNewUsernameRequest"]=0
operation_parameters_maximum_occurrences["createNewUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deactivateASpecificUsername:::id"]=0
operation_parameters_maximum_occurrences["deactivateASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["deleteASpecificUsername:::id"]=0
operation_parameters_maximum_occurrences["deleteASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["disableCatchAllForASpecificUsername:::id"]=0
operation_parameters_maximum_occurrences["disableCatchAllForASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["disallowLoginForASpecificUsername:::id"]=0
operation_parameters_maximum_occurrences["disallowLoginForASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["enableCatchAllForASpecificUsername:::ActivateASpecificUsernameRequest"]=0
operation_parameters_maximum_occurrences["enableCatchAllForASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getASpecificUsername:::id"]=0
operation_parameters_maximum_occurrences["getASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["getAllUsernames:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateASpecificUsername:::id"]=0
operation_parameters_maximum_occurrences["updateASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateASpecificUsername:::UpdateASpecificUsernameRequest"]=0
operation_parameters_maximum_occurrences["updateDefaultRecipientForASpecificUsername:::id"]=0
operation_parameters_maximum_occurrences["updateDefaultRecipientForASpecificUsername:::X-Requested-With"]=0
operation_parameters_maximum_occurrences["updateDefaultRecipientForASpecificUsername:::UpdateDefaultRecipientForASpecificDomainRequest"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["getDetailsAboutTheCurrentAPIToken:::X-Requested-With"]=""
operation_parameters_collection_type["getAllAccountDetails:::X-Requested-With"]=""
operation_parameters_collection_type["bulkActivateSpecificAliases:::BulkGetSpecificAliasesRequest"]=""
operation_parameters_collection_type["bulkActivateSpecificAliases:::X-Requested-With"]=""
operation_parameters_collection_type["bulkDeactivateSpecificAliases:::BulkGetSpecificAliasesRequest"]=""
operation_parameters_collection_type["bulkDeactivateSpecificAliases:::X-Requested-With"]=""
operation_parameters_collection_type["bulkDeleteSpecificAliases:::BulkGetSpecificAliasesRequest"]=""
operation_parameters_collection_type["bulkDeleteSpecificAliases:::X-Requested-With"]=""
operation_parameters_collection_type["bulkForgetSpecificAliases:::BulkGetSpecificAliasesRequest"]=""
operation_parameters_collection_type["bulkForgetSpecificAliases:::X-Requested-With"]=""
operation_parameters_collection_type["bulkGetSpecificAliases:::BulkGetSpecificAliasesRequest"]=""
operation_parameters_collection_type["bulkGetSpecificAliases:::X-Requested-With"]=""
operation_parameters_collection_type["bulkRestoreSpecificAliases:::BulkGetSpecificAliasesRequest"]=""
operation_parameters_collection_type["bulkRestoreSpecificAliases:::X-Requested-With"]=""
operation_parameters_collection_type["bulkUpdateRecipientsForSpecificAliases:::BulkUpdateRecipientsForSpecificAliasesRequest"]=""
operation_parameters_collection_type["bulkUpdateRecipientsForSpecificAliases:::X-Requested-With"]=""
operation_parameters_collection_type["activateASpecificAlias:::ActivateASpecificAliasRequest"]=""
operation_parameters_collection_type["activateASpecificAlias:::X-Requested-With"]=""
operation_parameters_collection_type["createNewAlias:::CreateNewAliasRequest"]=""
operation_parameters_collection_type["createNewAlias:::X-Requested-With"]=""
operation_parameters_collection_type["deactivateASpecificAlias:::id"]=""
operation_parameters_collection_type["deactivateASpecificAlias:::X-Requested-With"]=""
operation_parameters_collection_type["deleteASpecificAlias:::id"]=""
operation_parameters_collection_type["deleteASpecificAlias:::X-Requested-With"]=""
operation_parameters_collection_type["forgetASpecificAlias:::id"]=""
operation_parameters_collection_type["forgetASpecificAlias:::X-Requested-With"]=""
operation_parameters_collection_type["getASpecificAlias:::id"]=""
operation_parameters_collection_type["getASpecificAlias:::X-Requested-With"]=""
operation_parameters_collection_type["getAllAliases:::filter[deleted]"]=""
operation_parameters_collection_type["getAllAliases:::filter[active]"]=""
operation_parameters_collection_type["getAllAliases:::filter[search]"]=""
operation_parameters_collection_type["getAllAliases:::sort"]=""
operation_parameters_collection_type["getAllAliases:::page[number]"]=""
operation_parameters_collection_type["getAllAliases:::page[size]"]=""
operation_parameters_collection_type["getAllAliases:::with"]=""
operation_parameters_collection_type["getAllAliases:::X-Requested-With"]=""
operation_parameters_collection_type["restoreASpecificDeletedAlias:::id"]=""
operation_parameters_collection_type["restoreASpecificDeletedAlias:::X-Requested-With"]=""
operation_parameters_collection_type["updateASpecificAlias:::id"]=""
operation_parameters_collection_type["updateASpecificAlias:::X-Requested-With"]=""
operation_parameters_collection_type["updateASpecificAlias:::UpdateASpecificAliasRequest"]=""
operation_parameters_collection_type["updateRecipientsForASpecificAlias:::UpdateRecipientsForASpecificAliasRequest"]=""
operation_parameters_collection_type["updateRecipientsForASpecificAlias:::X-Requested-With"]=""
operation_parameters_collection_type["getTheCurrentAddyioAppVersion:::X-Requested-With"]=""
operation_parameters_collection_type["getAllDomainOptions:::X-Requested-With"]=""
operation_parameters_collection_type["activateASpecificDomain:::ActivateASpecificDomainRequest"]=""
operation_parameters_collection_type["activateASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["createNewDomain:::CreateNewDomainRequest"]=""
operation_parameters_collection_type["createNewDomain:::X-Requested-With"]=""
operation_parameters_collection_type["deactivateASpecificDomain:::id"]=""
operation_parameters_collection_type["deactivateASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["deleteASpecificDomain:::id"]=""
operation_parameters_collection_type["deleteASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["disableCatchAllForASpecificDomain:::id"]=""
operation_parameters_collection_type["disableCatchAllForASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["enableCatchAllForASpecificDomain:::ActivateASpecificDomainRequest"]=""
operation_parameters_collection_type["enableCatchAllForASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["getASpecificDomain:::id"]=""
operation_parameters_collection_type["getASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["getAllDomains:::X-Requested-With"]=""
operation_parameters_collection_type["updateASpecificDomain:::id"]=""
operation_parameters_collection_type["updateASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["updateASpecificDomain:::UpdateASpecificDomainRequest"]=""
operation_parameters_collection_type["updateDefaultRecipientForASpecificDomain:::id"]=""
operation_parameters_collection_type["updateDefaultRecipientForASpecificDomain:::X-Requested-With"]=""
operation_parameters_collection_type["updateDefaultRecipientForASpecificDomain:::UpdateDefaultRecipientForASpecificDomainRequest"]=""
operation_parameters_collection_type["deleteASpecificFailedDelivery:::id"]=""
operation_parameters_collection_type["deleteASpecificFailedDelivery:::X-Requested-With"]=""
operation_parameters_collection_type["getASpecificFailedDelivery:::id"]=""
operation_parameters_collection_type["getASpecificFailedDelivery:::X-Requested-With"]=""
operation_parameters_collection_type["getAllFailedDeliveries:::X-Requested-With"]=""
operation_parameters_collection_type["addPublicKeyForASpecificRecipient:::id"]=""
operation_parameters_collection_type["addPublicKeyForASpecificRecipient:::AddPublicKeyForASpecificRecipientRequest"]=""
operation_parameters_collection_type["addPublicKeyForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["allowASpecificRecipientToReplysendFromYourAliases:::EnableEncryptionForASpecificRecipientRequest"]=""
operation_parameters_collection_type["allowASpecificRecipientToReplysendFromYourAliases:::X-Requested-With"]=""
operation_parameters_collection_type["createNewRecipient:::CreateNewRecipientRequest"]=""
operation_parameters_collection_type["createNewRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["deleteASpecificRecipient:::id"]=""
operation_parameters_collection_type["deleteASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["disableEncryptionForASpecificRecipient:::id"]=""
operation_parameters_collection_type["disableEncryptionForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["disableInlinePGPInlineEncryptionForASpecificRecipient:::id"]=""
operation_parameters_collection_type["disableInlinePGPInlineEncryptionForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["disableProtectedHeadershideSubjectForASpecificRecipient:::id"]=""
operation_parameters_collection_type["disableProtectedHeadershideSubjectForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["disallowASpecificRecipientToReplysendFromYourAliases:::id"]=""
operation_parameters_collection_type["disallowASpecificRecipientToReplysendFromYourAliases:::X-Requested-With"]=""
operation_parameters_collection_type["enableEncryptionForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=""
operation_parameters_collection_type["enableEncryptionForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["enableInlinePGPInlineEncryptionForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=""
operation_parameters_collection_type["enableInlinePGPInlineEncryptionForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["enableProtectedHeadershideSubjectForASpecificRecipient:::EnableEncryptionForASpecificRecipientRequest"]=""
operation_parameters_collection_type["enableProtectedHeadershideSubjectForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["getASpecificRecipient:::id"]=""
operation_parameters_collection_type["getASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["getAllRecipients:::filter[verified]"]=""
operation_parameters_collection_type["getAllRecipients:::X-Requested-With"]=""
operation_parameters_collection_type["removePublicKeyForASpecificRecipient:::id"]=""
operation_parameters_collection_type["removePublicKeyForASpecificRecipient:::X-Requested-With"]=""
operation_parameters_collection_type["resendTheVerificationEmailForARecipient:::ResendTheVerificationEmailForARecipientRequest"]=""
operation_parameters_collection_type["resendTheVerificationEmailForARecipient:::X-Requested-With"]=""
operation_parameters_collection_type["activateASpecificRule:::ActivateASpecificRuleRequest"]=""
operation_parameters_collection_type["activateASpecificRule:::X-Requested-With"]=""
operation_parameters_collection_type["createNewRule:::CreateNewRuleRequest"]=""
operation_parameters_collection_type["createNewRule:::X-Requested-With"]=""
operation_parameters_collection_type["deactivateASpecificRule:::id"]=""
operation_parameters_collection_type["deactivateASpecificRule:::X-Requested-With"]=""
operation_parameters_collection_type["deleteASpecificRule:::id"]=""
operation_parameters_collection_type["deleteASpecificRule:::X-Requested-With"]=""
operation_parameters_collection_type["getASpecificRule:::id"]=""
operation_parameters_collection_type["getASpecificRule:::X-Requested-With"]=""
operation_parameters_collection_type["getAllRules:::X-Requested-With"]=""
operation_parameters_collection_type["updateASpecificRule:::id"]=""
operation_parameters_collection_type["updateASpecificRule:::UpdateASpecificRuleRequest"]=""
operation_parameters_collection_type["updateASpecificRule:::X-Requested-With"]=""
operation_parameters_collection_type["updateTheOrderOfTheRules:::UpdateTheOrderOfTheRulesRequest"]=""
operation_parameters_collection_type["updateTheOrderOfTheRules:::X-Requested-With"]=""
operation_parameters_collection_type["activateASpecificUsername:::ActivateASpecificUsernameRequest"]=""
operation_parameters_collection_type["activateASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["allowLoginForASpecificUsername:::ActivateASpecificUsernameRequest"]=""
operation_parameters_collection_type["allowLoginForASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["createNewUsername:::CreateNewUsernameRequest"]=""
operation_parameters_collection_type["createNewUsername:::X-Requested-With"]=""
operation_parameters_collection_type["deactivateASpecificUsername:::id"]=""
operation_parameters_collection_type["deactivateASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["deleteASpecificUsername:::id"]=""
operation_parameters_collection_type["deleteASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["disableCatchAllForASpecificUsername:::id"]=""
operation_parameters_collection_type["disableCatchAllForASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["disallowLoginForASpecificUsername:::id"]=""
operation_parameters_collection_type["disallowLoginForASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["enableCatchAllForASpecificUsername:::ActivateASpecificUsernameRequest"]=""
operation_parameters_collection_type["enableCatchAllForASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["getASpecificUsername:::id"]=""
operation_parameters_collection_type["getASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["getAllUsernames:::X-Requested-With"]=""
operation_parameters_collection_type["updateASpecificUsername:::id"]=""
operation_parameters_collection_type["updateASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["updateASpecificUsername:::UpdateASpecificUsernameRequest"]=""
operation_parameters_collection_type["updateDefaultRecipientForASpecificUsername:::id"]=""
operation_parameters_collection_type["updateDefaultRecipientForASpecificUsername:::X-Requested-With"]=""
operation_parameters_collection_type["updateDefaultRecipientForASpecificUsername:::UpdateDefaultRecipientForASpecificDomainRequest"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}addy.io command line client (API version 1.0.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[aPIToken]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getDetailsAboutTheCurrentAPIToken${OFF};Get details about the current API token (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[accountDetails]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getAllAccountDetails${OFF};Get All Account Details (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[aliasBulkActions]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}bulkActivateSpecificAliases${OFF};Bulk Activate Specific Aliases (AUTH)
  ${CYAN}bulkDeactivateSpecificAliases${OFF};Bulk Deactivate Specific Aliases (AUTH)
  ${CYAN}bulkDeleteSpecificAliases${OFF};Bulk Delete Specific Aliases (AUTH)
  ${CYAN}bulkForgetSpecificAliases${OFF};Bulk Forget Specific Aliases (AUTH)
  ${CYAN}bulkGetSpecificAliases${OFF};Bulk Get Specific Aliases (AUTH)
  ${CYAN}bulkRestoreSpecificAliases${OFF};Bulk Restore Specific Aliases (AUTH)
  ${CYAN}bulkUpdateRecipientsForSpecificAliases${OFF};Bulk Update Recipients for Specific Aliases (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[aliases]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}activateASpecificAlias${OFF};Activate a Specific Alias (AUTH)
  ${CYAN}createNewAlias${OFF};Create New Alias (AUTH)
  ${CYAN}deactivateASpecificAlias${OFF};Deactivate a Specific Alias (AUTH)
  ${CYAN}deleteASpecificAlias${OFF};Delete a Specific Alias (AUTH)
  ${CYAN}forgetASpecificAlias${OFF};Forget a Specific Alias (AUTH)
  ${CYAN}getASpecificAlias${OFF};Get a Specific Alias (AUTH)
  ${CYAN}getAllAliases${OFF};Get All Aliases (AUTH)
  ${CYAN}restoreASpecificDeletedAlias${OFF};Restore a Specific Deleted Alias (AUTH)
  ${CYAN}updateASpecificAlias${OFF};Update a Specific Alias (AUTH)
  ${CYAN}updateRecipientsForASpecificAlias${OFF};Update Recipients for a Specific Alias (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[appVersion]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getTheCurrentAddyioAppVersion${OFF};Get The Current addy.io App Version (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[domainOptions]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getAllDomainOptions${OFF};Get All Domain Options (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[domains]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}activateASpecificDomain${OFF};Activate a Specific Domain (AUTH)
  ${CYAN}createNewDomain${OFF};Create New Domain (AUTH)
  ${CYAN}deactivateASpecificDomain${OFF};Deactivate a Specific Domain (AUTH)
  ${CYAN}deleteASpecificDomain${OFF};Delete a Specific Domain (AUTH)
  ${CYAN}disableCatchAllForASpecificDomain${OFF};Disable catch-all for a Specific Domain (AUTH)
  ${CYAN}enableCatchAllForASpecificDomain${OFF};Enable catch-all for a Specific Domain (AUTH)
  ${CYAN}getASpecificDomain${OFF};Get a Specific Domain (AUTH)
  ${CYAN}getAllDomains${OFF};Get All Domains (AUTH)
  ${CYAN}updateASpecificDomain${OFF};Update a Specific Domain (AUTH)
  ${CYAN}updateDefaultRecipientForASpecificDomain${OFF};Update Default Recipient for a Specific Domain (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[failedDeliveries]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}deleteASpecificFailedDelivery${OFF};Delete a Specific Failed Delivery (AUTH)
  ${CYAN}getASpecificFailedDelivery${OFF};Get a Specific Failed Delivery (AUTH)
  ${CYAN}getAllFailedDeliveries${OFF};Get All Failed Deliveries (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[recipients]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}addPublicKeyForASpecificRecipient${OFF};Add Public Key for a Specific Recipient (AUTH)
  ${CYAN}allowASpecificRecipientToReplysendFromYourAliases${OFF};Allow a Specific Recipient to reply/send from your aliases (AUTH)
  ${CYAN}createNewRecipient${OFF};Create New Recipient (AUTH)
  ${CYAN}deleteASpecificRecipient${OFF};Delete a Specific Recipient (AUTH)
  ${CYAN}disableEncryptionForASpecificRecipient${OFF};Disable Encryption for a Specific Recipient (AUTH)
  ${CYAN}disableInlinePGPInlineEncryptionForASpecificRecipient${OFF};Disable Inline (PGP/Inline) Encryption for a Specific Recipient (AUTH)
  ${CYAN}disableProtectedHeadershideSubjectForASpecificRecipient${OFF};Disable Protected Headers (hide subject) for a Specific Recipient (AUTH)
  ${CYAN}disallowASpecificRecipientToReplysendFromYourAliases${OFF};Disallow a Specific Recipient to reply/send from your aliases (AUTH)
  ${CYAN}enableEncryptionForASpecificRecipient${OFF};Enable Encryption for a Specific Recipient (AUTH)
  ${CYAN}enableInlinePGPInlineEncryptionForASpecificRecipient${OFF};Enable Inline (PGP/Inline) Encryption for a Specific Recipient (AUTH)
  ${CYAN}enableProtectedHeadershideSubjectForASpecificRecipient${OFF};Enable Protected Headers (hide subject) for a Specific Recipient (AUTH)
  ${CYAN}getASpecificRecipient${OFF};Get a Specific Recipient (AUTH)
  ${CYAN}getAllRecipients${OFF};Get All Recipients (AUTH)
  ${CYAN}removePublicKeyForASpecificRecipient${OFF};Remove Public Key for a Specific Recipient (AUTH)
  ${CYAN}resendTheVerificationEmailForARecipient${OFF};Resend the verification email for a recipient (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[rules]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}activateASpecificRule${OFF};Activate a Specific Rule (AUTH)
  ${CYAN}createNewRule${OFF};Create New Rule (AUTH)
  ${CYAN}deactivateASpecificRule${OFF};Deactivate a Specific Rule (AUTH)
  ${CYAN}deleteASpecificRule${OFF};Delete a Specific Rule (AUTH)
  ${CYAN}getASpecificRule${OFF};Get a Specific Rule (AUTH)
  ${CYAN}getAllRules${OFF};Get All Rules (AUTH)
  ${CYAN}updateASpecificRule${OFF};Update a Specific Rule (AUTH)
  ${CYAN}updateTheOrderOfTheRules${OFF};Update the order of the Rules (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[usernames]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}activateASpecificUsername${OFF};Activate a Specific Username (AUTH)
  ${CYAN}allowLoginForASpecificUsername${OFF};Allow login for a Specific Username (AUTH)
  ${CYAN}createNewUsername${OFF};Create New Username (AUTH)
  ${CYAN}deactivateASpecificUsername${OFF};Deactivate a Specific Username (AUTH)
  ${CYAN}deleteASpecificUsername${OFF};Delete a Specific Username (AUTH)
  ${CYAN}disableCatchAllForASpecificUsername${OFF};Disable catch-all for a Specific Username (AUTH)
  ${CYAN}disallowLoginForASpecificUsername${OFF};Disallow login for a Specific Username (AUTH)
  ${CYAN}enableCatchAllForASpecificUsername${OFF};Enable catch-all for a Specific Username (AUTH)
  ${CYAN}getASpecificUsername${OFF};Get a Specific Username (AUTH)
  ${CYAN}getAllUsernames${OFF};Get All Usernames (AUTH)
  ${CYAN}updateASpecificUsername${OFF};Update a Specific Username (AUTH)
  ${CYAN}updateDefaultRecipientForASpecificUsername${OFF};Update Default Recipient for a Specific Username (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://app.addy.io')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}addy.io command line client (API version 1.0.0)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: "
    echo ""
read -r -d '' appdescription <<EOF

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}addy.io command line client (API version 1.0.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for getDetailsAboutTheCurrentAPIToken operation
#
##############################################################################
print_getDetailsAboutTheCurrentAPIToken_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getDetailsAboutTheCurrentAPIToken - Get details about the current API token${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves details about the current API token." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllAccountDetails operation
#
##############################################################################
print_getAllAccountDetails_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllAccountDetails - Get All Account Details${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all account details." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for bulkActivateSpecificAliases operation
#
##############################################################################
print_bulkActivateSpecificAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}bulkActivateSpecificAliases - Bulk Activate Specific Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint activates specific aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for bulkDeactivateSpecificAliases operation
#
##############################################################################
print_bulkDeactivateSpecificAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}bulkDeactivateSpecificAliases - Bulk Deactivate Specific Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deactivates specific aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for bulkDeleteSpecificAliases operation
#
##############################################################################
print_bulkDeleteSpecificAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}bulkDeleteSpecificAliases - Bulk Delete Specific Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deletes specific aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for bulkForgetSpecificAliases operation
#
##############################################################################
print_bulkForgetSpecificAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}bulkForgetSpecificAliases - Bulk Forget Specific Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint forgets specific aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for bulkGetSpecificAliases operation
#
##############################################################################
print_bulkGetSpecificAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}bulkGetSpecificAliases - Bulk Get Specific Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint gets specific aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for bulkRestoreSpecificAliases operation
#
##############################################################################
print_bulkRestoreSpecificAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}bulkRestoreSpecificAliases - Bulk Restore Specific Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint restores specific aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for bulkUpdateRecipientsForSpecificAliases operation
#
##############################################################################
print_bulkUpdateRecipientsForSpecificAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}bulkUpdateRecipientsForSpecificAliases - Bulk Update Recipients for Specific Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates the recipients for specific aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for activateASpecificAlias operation
#
##############################################################################
print_activateASpecificAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}activateASpecificAlias - Activate a Specific Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint activates a specific alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createNewAlias operation
#
##############################################################################
print_createNewAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createNewAlias - Create New Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint creates a new alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deactivateASpecificAlias operation
#
##############################################################################
print_deactivateASpecificAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deactivateASpecificAlias - Deactivate a Specific Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deactivates a specific alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the alias to deactivate ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteASpecificAlias operation
#
##############################################################################
print_deleteASpecificAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteASpecificAlias - Delete a Specific Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deletes a specific alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the alias to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for forgetASpecificAlias operation
#
##############################################################################
print_forgetASpecificAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}forgetASpecificAlias - Forget a Specific Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint forgets a specific alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the alias to forget ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getASpecificAlias operation
#
##############################################################################
print_getASpecificAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getASpecificAlias - Get a Specific Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves a specific alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the alias to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllAliases operation
#
##############################################################################
print_getAllAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllAliases - Get All Aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all aliases." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter[deleted]${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Choose to return alias with deleted or only deleted. Options: with, only.${YELLOW} Specify as: filter[deleted]=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter[active]${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Choose to return active or inactive aliases. Options: true, false.${YELLOW} Specify as: filter[active]=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter[search]${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Search aliases by email and description.${YELLOW} Specify as: filter[search]=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sort${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Choose what to sort the aliases by, prepend \"-\" for descending results. Options: local_part, domain, email, emails_forwarded, emails_blocked, emails_replied, emails_sent, active, created_at, updated_at, deleted_at${YELLOW} Specify as: sort=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page[number]${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Paginate the alias results.${YELLOW} Specify as: page[number]=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page[size]${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Paginate the alias results, default 100, min 1 max 100.${YELLOW} Specify as: page[size]=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}with${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Return aliases with their attached recipients. Options: recipients${YELLOW} Specify as: with=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for restoreASpecificDeletedAlias operation
#
##############################################################################
print_restoreASpecificDeletedAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}restoreASpecificDeletedAlias - Restore a Specific Deleted Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint restores a specific deleted alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the alias to restore ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateASpecificAlias operation
#
##############################################################################
print_updateASpecificAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateASpecificAlias - Update a Specific Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates a specific alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the alias to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateRecipientsForASpecificAlias operation
#
##############################################################################
print_updateRecipientsForASpecificAlias_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateRecipientsForASpecificAlias - Update Recipients for a Specific Alias${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates the recipients for a specific alias." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getTheCurrentAddyioAppVersion operation
#
##############################################################################
print_getTheCurrentAddyioAppVersion_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getTheCurrentAddyioAppVersion - Get The Current addy.io App Version${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves details about the current addy.io version (only available for self-hosted instances)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllDomainOptions operation
#
##############################################################################
print_getAllDomainOptions_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllDomainOptions - Get All Domain Options${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all domain options." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for activateASpecificDomain operation
#
##############################################################################
print_activateASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}activateASpecificDomain - Activate a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint activates a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createNewDomain operation
#
##############################################################################
print_createNewDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createNewDomain - Create New Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint creates a new domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deactivateASpecificDomain operation
#
##############################################################################
print_deactivateASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deactivateASpecificDomain - Deactivate a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deactivates a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the domain to deactivate ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteASpecificDomain operation
#
##############################################################################
print_deleteASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteASpecificDomain - Delete a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deletes a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the domain to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for disableCatchAllForASpecificDomain operation
#
##############################################################################
print_disableCatchAllForASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}disableCatchAllForASpecificDomain - Disable catch-all for a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint disables catch-all for a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the domain to disable catch-all ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for enableCatchAllForASpecificDomain operation
#
##############################################################################
print_enableCatchAllForASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}enableCatchAllForASpecificDomain - Enable catch-all for a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint enables catch-all a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getASpecificDomain operation
#
##############################################################################
print_getASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getASpecificDomain - Get a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the domain to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllDomains operation
#
##############################################################################
print_getAllDomains_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllDomains - Get All Domains${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all domains." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateASpecificDomain operation
#
##############################################################################
print_updateASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateASpecificDomain - Update a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the domain to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateDefaultRecipientForASpecificDomain operation
#
##############################################################################
print_updateDefaultRecipientForASpecificDomain_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateDefaultRecipientForASpecificDomain - Update Default Recipient for a Specific Domain${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates the default recipient for a specific domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the domain to update ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteASpecificFailedDelivery operation
#
##############################################################################
print_deleteASpecificFailedDelivery_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteASpecificFailedDelivery - Delete a Specific Failed Delivery${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deletes a specific failed delivery." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the failed delivery to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getASpecificFailedDelivery operation
#
##############################################################################
print_getASpecificFailedDelivery_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getASpecificFailedDelivery - Get a Specific Failed Delivery${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves a specific failed delivery." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the failed delivery to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllFailedDeliveries operation
#
##############################################################################
print_getAllFailedDeliveries_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllFailedDeliveries - Get All Failed Deliveries${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all failed deliveries." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for addPublicKeyForASpecificRecipient operation
#
##############################################################################
print_addPublicKeyForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}addPublicKeyForASpecificRecipient - Add Public Key for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint adds a public GPG/OpenPGP key for a specific recipient. Make sure to escape the json using something like - https://jsonformatter.org/json-escape" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to add the key for ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for allowASpecificRecipientToReplysendFromYourAliases operation
#
##############################################################################
print_allowASpecificRecipientToReplysendFromYourAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}allowASpecificRecipientToReplysendFromYourAliases - Allow a Specific Recipient to reply/send from your aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint allows a specific recipient to reply/send." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createNewRecipient operation
#
##############################################################################
print_createNewRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createNewRecipient - Create New Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint creates a new recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteASpecificRecipient operation
#
##############################################################################
print_deleteASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteASpecificRecipient - Delete a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deletes a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for disableEncryptionForASpecificRecipient operation
#
##############################################################################
print_disableEncryptionForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}disableEncryptionForASpecificRecipient - Disable Encryption for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint disables encryption for a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to disable encryption for ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for disableInlinePGPInlineEncryptionForASpecificRecipient operation
#
##############################################################################
print_disableInlinePGPInlineEncryptionForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}disableInlinePGPInlineEncryptionForASpecificRecipient - Disable Inline (PGP/Inline) Encryption for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint disables inline encryption for a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to disable inline encryption for ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for disableProtectedHeadershideSubjectForASpecificRecipient operation
#
##############################################################################
print_disableProtectedHeadershideSubjectForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}disableProtectedHeadershideSubjectForASpecificRecipient - Disable Protected Headers (hide subject) for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint disables protected headers for a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to disable protected headers for ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for disallowASpecificRecipientToReplysendFromYourAliases operation
#
##############################################################################
print_disallowASpecificRecipientToReplysendFromYourAliases_help() {
    echo ""
    echo -e "${BOLD}${WHITE}disallowASpecificRecipientToReplysendFromYourAliases - Disallow a Specific Recipient to reply/send from your aliases${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint disallows a specific recipient to reply/send." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to disallow replies/sends for ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for enableEncryptionForASpecificRecipient operation
#
##############################################################################
print_enableEncryptionForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}enableEncryptionForASpecificRecipient - Enable Encryption for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint enables encryption for a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for enableInlinePGPInlineEncryptionForASpecificRecipient operation
#
##############################################################################
print_enableInlinePGPInlineEncryptionForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}enableInlinePGPInlineEncryptionForASpecificRecipient - Enable Inline (PGP/Inline) Encryption for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint enables inline encryption for a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for enableProtectedHeadershideSubjectForASpecificRecipient operation
#
##############################################################################
print_enableProtectedHeadershideSubjectForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}enableProtectedHeadershideSubjectForASpecificRecipient - Enable Protected Headers (hide subject) for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint enables protected headers which hides the message subject for a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getASpecificRecipient operation
#
##############################################################################
print_getASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getASpecificRecipient - Get a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllRecipients operation
#
##############################################################################
print_getAllRecipients_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllRecipients - Get All Recipients${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all recipients." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter[verified]${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Choose to return recipients that are verified or unverified. Options: true, false.${YELLOW} Specify as: filter[verified]=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for removePublicKeyForASpecificRecipient operation
#
##############################################################################
print_removePublicKeyForASpecificRecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}removePublicKeyForASpecificRecipient - Remove Public Key for a Specific Recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint remnoves a public GPG/OpenPGP key for a specific recipient." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the recipient to add the key for ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for resendTheVerificationEmailForARecipient operation
#
##############################################################################
print_resendTheVerificationEmailForARecipient_help() {
    echo ""
    echo -e "${BOLD}${WHITE}resendTheVerificationEmailForARecipient - Resend the verification email for a recipient${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint can be used to resend the verification email when adding a new recipient" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for activateASpecificRule operation
#
##############################################################################
print_activateASpecificRule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}activateASpecificRule - Activate a Specific Rule${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint activates a specific Rule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createNewRule operation
#
##############################################################################
print_createNewRule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createNewRule - Create New Rule${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint creates a new rule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deactivateASpecificRule operation
#
##############################################################################
print_deactivateASpecificRule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deactivateASpecificRule - Deactivate a Specific Rule${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deactivates a specific rule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the rule to deactivate ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteASpecificRule operation
#
##############################################################################
print_deleteASpecificRule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteASpecificRule - Delete a Specific Rule${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deletes a specific rule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the rule to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getASpecificRule operation
#
##############################################################################
print_getASpecificRule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getASpecificRule - Get a Specific Rule${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves a specific rule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the rule to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllRules operation
#
##############################################################################
print_getAllRules_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllRules - Get All Rules${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all rules." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateASpecificRule operation
#
##############################################################################
print_updateASpecificRule_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateASpecificRule - Update a Specific Rule${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates a specific rule." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the rule to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateTheOrderOfTheRules operation
#
##############################################################################
print_updateTheOrderOfTheRules_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateTheOrderOfTheRules - Update the order of the Rules${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates the order of the rules." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for activateASpecificUsername operation
#
##############################################################################
print_activateASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}activateASpecificUsername - Activate a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint activates a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for allowLoginForASpecificUsername operation
#
##############################################################################
print_allowLoginForASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}allowLoginForASpecificUsername - Allow login for a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint gives a specific username the ability to login to your account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createNewUsername operation
#
##############################################################################
print_createNewUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createNewUsername - Create New Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint creates a new username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deactivateASpecificUsername operation
#
##############################################################################
print_deactivateASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deactivateASpecificUsername - Deactivate a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deactivates a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the username to deactivate ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteASpecificUsername operation
#
##############################################################################
print_deleteASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteASpecificUsername - Delete a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint deletes a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the username to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for disableCatchAllForASpecificUsername operation
#
##############################################################################
print_disableCatchAllForASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}disableCatchAllForASpecificUsername - Disable catch-all for a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint disables catch-all for a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the username to disable catch-all ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for disallowLoginForASpecificUsername operation
#
##############################################################################
print_disallowLoginForASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}disallowLoginForASpecificUsername - Disallow login for a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint prevents a specific username from being able to login to your account." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the username ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for enableCatchAllForASpecificUsername operation
#
##############################################################################
print_enableCatchAllForASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}enableCatchAllForASpecificUsername - Enable catch-all for a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint enables catch-all a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getASpecificUsername operation
#
##############################################################################
print_getASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getASpecificUsername - Get a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the username to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllUsernames operation
#
##############################################################################
print_getAllUsernames_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllUsernames - Get All Usernames${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint retrieves all usernames." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateASpecificUsername operation
#
##############################################################################
print_updateASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateASpecificUsername - Update a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the username to retrieve ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateDefaultRecipientForASpecificUsername operation
#
##############################################################################
print_updateDefaultRecipientForASpecificUsername_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateDefaultRecipientForASpecificUsername - Update Default Recipient for a Specific Username${OFF}${BLUE}(AUTH - )${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This endpoint updates the default recipient for a specific username." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The id of the username to update ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}X-Requested-With${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: X-Requested-With:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call getDetailsAboutTheCurrentAPIToken operation
#
##############################################################################
call_getDetailsAboutTheCurrentAPIToken() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/api-token-details" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllAccountDetails operation
#
##############################################################################
call_getAllAccountDetails() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/account-details" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call bulkActivateSpecificAliases operation
#
##############################################################################
call_bulkActivateSpecificAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/activate/bulk" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call bulkDeactivateSpecificAliases operation
#
##############################################################################
call_bulkDeactivateSpecificAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/deactivate/bulk" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call bulkDeleteSpecificAliases operation
#
##############################################################################
call_bulkDeleteSpecificAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/delete/bulk" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call bulkForgetSpecificAliases operation
#
##############################################################################
call_bulkForgetSpecificAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/forget/bulk" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call bulkGetSpecificAliases operation
#
##############################################################################
call_bulkGetSpecificAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/get/bulk" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call bulkRestoreSpecificAliases operation
#
##############################################################################
call_bulkRestoreSpecificAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/restore/bulk" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call bulkUpdateRecipientsForSpecificAliases operation
#
##############################################################################
call_bulkUpdateRecipientsForSpecificAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/recipients/bulk" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call activateASpecificAlias operation
#
##############################################################################
call_activateASpecificAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-aliases" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createNewAlias operation
#
##############################################################################
call_createNewAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deactivateASpecificAlias operation
#
##############################################################################
call_deactivateASpecificAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-aliases/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteASpecificAlias operation
#
##############################################################################
call_deleteASpecificAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call forgetASpecificAlias operation
#
##############################################################################
call_forgetASpecificAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/{id}/forget" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getASpecificAlias operation
#
##############################################################################
call_getASpecificAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllAliases operation
#
##############################################################################
call_getAllAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter[deleted] filter[active] filter[search] sort page[number] page[size] with  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call restoreASpecificDeletedAlias operation
#
##############################################################################
call_restoreASpecificDeletedAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/{id}/restore" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateASpecificAlias operation
#
##############################################################################
call_updateASpecificAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/aliases/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call updateRecipientsForASpecificAlias operation
#
##############################################################################
call_updateRecipientsForASpecificAlias() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/alias-recipients" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getTheCurrentAddyioAppVersion operation
#
##############################################################################
call_getTheCurrentAddyioAppVersion() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/app-version" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllDomainOptions operation
#
##############################################################################
call_getAllDomainOptions() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/domain-options" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call activateASpecificDomain operation
#
##############################################################################
call_activateASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createNewDomain operation
#
##############################################################################
call_createNewDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deactivateASpecificDomain operation
#
##############################################################################
call_deactivateASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-domains/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteASpecificDomain operation
#
##############################################################################
call_deleteASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/domains/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call disableCatchAllForASpecificDomain operation
#
##############################################################################
call_disableCatchAllForASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/catch-all-domains/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call enableCatchAllForASpecificDomain operation
#
##############################################################################
call_enableCatchAllForASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/catch-all-domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getASpecificDomain operation
#
##############################################################################
call_getASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/domains/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllDomains operation
#
##############################################################################
call_getAllDomains() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateASpecificDomain operation
#
##############################################################################
call_updateASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/domains/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call updateDefaultRecipientForASpecificDomain operation
#
##############################################################################
call_updateDefaultRecipientForASpecificDomain() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/domains/{id}/default-recipient" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteASpecificFailedDelivery operation
#
##############################################################################
call_deleteASpecificFailedDelivery() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/failed-deliveries/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getASpecificFailedDelivery operation
#
##############################################################################
call_getASpecificFailedDelivery() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/failed-deliveries/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllFailedDeliveries operation
#
##############################################################################
call_getAllFailedDeliveries() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/failed-deliveries" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call addPublicKeyForASpecificRecipient operation
#
##############################################################################
call_addPublicKeyForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/recipient-keys/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call allowASpecificRecipientToReplysendFromYourAliases operation
#
##############################################################################
call_allowASpecificRecipientToReplysendFromYourAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/allowed-recipients" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createNewRecipient operation
#
##############################################################################
call_createNewRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/recipients" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteASpecificRecipient operation
#
##############################################################################
call_deleteASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/recipients/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call disableEncryptionForASpecificRecipient operation
#
##############################################################################
call_disableEncryptionForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/encrypted-recipients/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call disableInlinePGPInlineEncryptionForASpecificRecipient operation
#
##############################################################################
call_disableInlinePGPInlineEncryptionForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/inline-encrypted-recipients/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call disableProtectedHeadershideSubjectForASpecificRecipient operation
#
##############################################################################
call_disableProtectedHeadershideSubjectForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/protected-headers-recipients/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call disallowASpecificRecipientToReplysendFromYourAliases operation
#
##############################################################################
call_disallowASpecificRecipientToReplysendFromYourAliases() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/allowed-recipients/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call enableEncryptionForASpecificRecipient operation
#
##############################################################################
call_enableEncryptionForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/encrypted-recipients" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call enableInlinePGPInlineEncryptionForASpecificRecipient operation
#
##############################################################################
call_enableInlinePGPInlineEncryptionForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/inline-encrypted-recipients" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call enableProtectedHeadershideSubjectForASpecificRecipient operation
#
##############################################################################
call_enableProtectedHeadershideSubjectForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/protected-headers-recipients" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getASpecificRecipient operation
#
##############################################################################
call_getASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/recipients/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllRecipients operation
#
##############################################################################
call_getAllRecipients() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter[verified]  )
    local path

    if ! path=$(build_request_path "/api/v1/recipients" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call removePublicKeyForASpecificRecipient operation
#
##############################################################################
call_removePublicKeyForASpecificRecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/recipient-keys/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call resendTheVerificationEmailForARecipient operation
#
##############################################################################
call_resendTheVerificationEmailForARecipient() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/recipients/email/resend" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call activateASpecificRule operation
#
##############################################################################
call_activateASpecificRule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-rules" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createNewRule operation
#
##############################################################################
call_createNewRule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/rules" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deactivateASpecificRule operation
#
##############################################################################
call_deactivateASpecificRule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-rules/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteASpecificRule operation
#
##############################################################################
call_deleteASpecificRule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/rules/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getASpecificRule operation
#
##############################################################################
call_getASpecificRule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/rules/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllRules operation
#
##############################################################################
call_getAllRules() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/rules" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateASpecificRule operation
#
##############################################################################
call_updateASpecificRule() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/rules/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call updateTheOrderOfTheRules operation
#
##############################################################################
call_updateTheOrderOfTheRules() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/reorder-rules" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call activateASpecificUsername operation
#
##############################################################################
call_activateASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-usernames" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call allowLoginForASpecificUsername operation
#
##############################################################################
call_allowLoginForASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/loginable-usernames" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createNewUsername operation
#
##############################################################################
call_createNewUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/usernames" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deactivateASpecificUsername operation
#
##############################################################################
call_deactivateASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/active-usernames/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteASpecificUsername operation
#
##############################################################################
call_deleteASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/usernames/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call disableCatchAllForASpecificUsername operation
#
##############################################################################
call_disableCatchAllForASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/catch-all-usernames/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call disallowLoginForASpecificUsername operation
#
##############################################################################
call_disallowLoginForASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/loginable-usernames/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call enableCatchAllForASpecificUsername operation
#
##############################################################################
call_enableCatchAllForASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/catch-all-usernames" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getASpecificUsername operation
#
##############################################################################
call_getASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/usernames/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getAllUsernames operation
#
##############################################################################
call_getAllUsernames() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/usernames" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateASpecificUsername operation
#
##############################################################################
call_updateASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/usernames/{id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call updateDefaultRecipientForASpecificUsername operation
#
##############################################################################
call_updateDefaultRecipientForASpecificUsername() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v1/usernames/{id}/default-recipient" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    getDetailsAboutTheCurrentAPIToken)
    operation="getDetailsAboutTheCurrentAPIToken"
    ;;
    getAllAccountDetails)
    operation="getAllAccountDetails"
    ;;
    bulkActivateSpecificAliases)
    operation="bulkActivateSpecificAliases"
    ;;
    bulkDeactivateSpecificAliases)
    operation="bulkDeactivateSpecificAliases"
    ;;
    bulkDeleteSpecificAliases)
    operation="bulkDeleteSpecificAliases"
    ;;
    bulkForgetSpecificAliases)
    operation="bulkForgetSpecificAliases"
    ;;
    bulkGetSpecificAliases)
    operation="bulkGetSpecificAliases"
    ;;
    bulkRestoreSpecificAliases)
    operation="bulkRestoreSpecificAliases"
    ;;
    bulkUpdateRecipientsForSpecificAliases)
    operation="bulkUpdateRecipientsForSpecificAliases"
    ;;
    activateASpecificAlias)
    operation="activateASpecificAlias"
    ;;
    createNewAlias)
    operation="createNewAlias"
    ;;
    deactivateASpecificAlias)
    operation="deactivateASpecificAlias"
    ;;
    deleteASpecificAlias)
    operation="deleteASpecificAlias"
    ;;
    forgetASpecificAlias)
    operation="forgetASpecificAlias"
    ;;
    getASpecificAlias)
    operation="getASpecificAlias"
    ;;
    getAllAliases)
    operation="getAllAliases"
    ;;
    restoreASpecificDeletedAlias)
    operation="restoreASpecificDeletedAlias"
    ;;
    updateASpecificAlias)
    operation="updateASpecificAlias"
    ;;
    updateRecipientsForASpecificAlias)
    operation="updateRecipientsForASpecificAlias"
    ;;
    getTheCurrentAddyioAppVersion)
    operation="getTheCurrentAddyioAppVersion"
    ;;
    getAllDomainOptions)
    operation="getAllDomainOptions"
    ;;
    activateASpecificDomain)
    operation="activateASpecificDomain"
    ;;
    createNewDomain)
    operation="createNewDomain"
    ;;
    deactivateASpecificDomain)
    operation="deactivateASpecificDomain"
    ;;
    deleteASpecificDomain)
    operation="deleteASpecificDomain"
    ;;
    disableCatchAllForASpecificDomain)
    operation="disableCatchAllForASpecificDomain"
    ;;
    enableCatchAllForASpecificDomain)
    operation="enableCatchAllForASpecificDomain"
    ;;
    getASpecificDomain)
    operation="getASpecificDomain"
    ;;
    getAllDomains)
    operation="getAllDomains"
    ;;
    updateASpecificDomain)
    operation="updateASpecificDomain"
    ;;
    updateDefaultRecipientForASpecificDomain)
    operation="updateDefaultRecipientForASpecificDomain"
    ;;
    deleteASpecificFailedDelivery)
    operation="deleteASpecificFailedDelivery"
    ;;
    getASpecificFailedDelivery)
    operation="getASpecificFailedDelivery"
    ;;
    getAllFailedDeliveries)
    operation="getAllFailedDeliveries"
    ;;
    addPublicKeyForASpecificRecipient)
    operation="addPublicKeyForASpecificRecipient"
    ;;
    allowASpecificRecipientToReplysendFromYourAliases)
    operation="allowASpecificRecipientToReplysendFromYourAliases"
    ;;
    createNewRecipient)
    operation="createNewRecipient"
    ;;
    deleteASpecificRecipient)
    operation="deleteASpecificRecipient"
    ;;
    disableEncryptionForASpecificRecipient)
    operation="disableEncryptionForASpecificRecipient"
    ;;
    disableInlinePGPInlineEncryptionForASpecificRecipient)
    operation="disableInlinePGPInlineEncryptionForASpecificRecipient"
    ;;
    disableProtectedHeadershideSubjectForASpecificRecipient)
    operation="disableProtectedHeadershideSubjectForASpecificRecipient"
    ;;
    disallowASpecificRecipientToReplysendFromYourAliases)
    operation="disallowASpecificRecipientToReplysendFromYourAliases"
    ;;
    enableEncryptionForASpecificRecipient)
    operation="enableEncryptionForASpecificRecipient"
    ;;
    enableInlinePGPInlineEncryptionForASpecificRecipient)
    operation="enableInlinePGPInlineEncryptionForASpecificRecipient"
    ;;
    enableProtectedHeadershideSubjectForASpecificRecipient)
    operation="enableProtectedHeadershideSubjectForASpecificRecipient"
    ;;
    getASpecificRecipient)
    operation="getASpecificRecipient"
    ;;
    getAllRecipients)
    operation="getAllRecipients"
    ;;
    removePublicKeyForASpecificRecipient)
    operation="removePublicKeyForASpecificRecipient"
    ;;
    resendTheVerificationEmailForARecipient)
    operation="resendTheVerificationEmailForARecipient"
    ;;
    activateASpecificRule)
    operation="activateASpecificRule"
    ;;
    createNewRule)
    operation="createNewRule"
    ;;
    deactivateASpecificRule)
    operation="deactivateASpecificRule"
    ;;
    deleteASpecificRule)
    operation="deleteASpecificRule"
    ;;
    getASpecificRule)
    operation="getASpecificRule"
    ;;
    getAllRules)
    operation="getAllRules"
    ;;
    updateASpecificRule)
    operation="updateASpecificRule"
    ;;
    updateTheOrderOfTheRules)
    operation="updateTheOrderOfTheRules"
    ;;
    activateASpecificUsername)
    operation="activateASpecificUsername"
    ;;
    allowLoginForASpecificUsername)
    operation="allowLoginForASpecificUsername"
    ;;
    createNewUsername)
    operation="createNewUsername"
    ;;
    deactivateASpecificUsername)
    operation="deactivateASpecificUsername"
    ;;
    deleteASpecificUsername)
    operation="deleteASpecificUsername"
    ;;
    disableCatchAllForASpecificUsername)
    operation="disableCatchAllForASpecificUsername"
    ;;
    disallowLoginForASpecificUsername)
    operation="disallowLoginForASpecificUsername"
    ;;
    enableCatchAllForASpecificUsername)
    operation="enableCatchAllForASpecificUsername"
    ;;
    getASpecificUsername)
    operation="getASpecificUsername"
    ;;
    getAllUsernames)
    operation="getAllUsernames"
    ;;
    updateASpecificUsername)
    operation="updateASpecificUsername"
    ;;
    updateDefaultRecipientForASpecificUsername)
    operation="updateDefaultRecipientForASpecificUsername"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    getDetailsAboutTheCurrentAPIToken)
    call_getDetailsAboutTheCurrentAPIToken
    ;;
    getAllAccountDetails)
    call_getAllAccountDetails
    ;;
    bulkActivateSpecificAliases)
    call_bulkActivateSpecificAliases
    ;;
    bulkDeactivateSpecificAliases)
    call_bulkDeactivateSpecificAliases
    ;;
    bulkDeleteSpecificAliases)
    call_bulkDeleteSpecificAliases
    ;;
    bulkForgetSpecificAliases)
    call_bulkForgetSpecificAliases
    ;;
    bulkGetSpecificAliases)
    call_bulkGetSpecificAliases
    ;;
    bulkRestoreSpecificAliases)
    call_bulkRestoreSpecificAliases
    ;;
    bulkUpdateRecipientsForSpecificAliases)
    call_bulkUpdateRecipientsForSpecificAliases
    ;;
    activateASpecificAlias)
    call_activateASpecificAlias
    ;;
    createNewAlias)
    call_createNewAlias
    ;;
    deactivateASpecificAlias)
    call_deactivateASpecificAlias
    ;;
    deleteASpecificAlias)
    call_deleteASpecificAlias
    ;;
    forgetASpecificAlias)
    call_forgetASpecificAlias
    ;;
    getASpecificAlias)
    call_getASpecificAlias
    ;;
    getAllAliases)
    call_getAllAliases
    ;;
    restoreASpecificDeletedAlias)
    call_restoreASpecificDeletedAlias
    ;;
    updateASpecificAlias)
    call_updateASpecificAlias
    ;;
    updateRecipientsForASpecificAlias)
    call_updateRecipientsForASpecificAlias
    ;;
    getTheCurrentAddyioAppVersion)
    call_getTheCurrentAddyioAppVersion
    ;;
    getAllDomainOptions)
    call_getAllDomainOptions
    ;;
    activateASpecificDomain)
    call_activateASpecificDomain
    ;;
    createNewDomain)
    call_createNewDomain
    ;;
    deactivateASpecificDomain)
    call_deactivateASpecificDomain
    ;;
    deleteASpecificDomain)
    call_deleteASpecificDomain
    ;;
    disableCatchAllForASpecificDomain)
    call_disableCatchAllForASpecificDomain
    ;;
    enableCatchAllForASpecificDomain)
    call_enableCatchAllForASpecificDomain
    ;;
    getASpecificDomain)
    call_getASpecificDomain
    ;;
    getAllDomains)
    call_getAllDomains
    ;;
    updateASpecificDomain)
    call_updateASpecificDomain
    ;;
    updateDefaultRecipientForASpecificDomain)
    call_updateDefaultRecipientForASpecificDomain
    ;;
    deleteASpecificFailedDelivery)
    call_deleteASpecificFailedDelivery
    ;;
    getASpecificFailedDelivery)
    call_getASpecificFailedDelivery
    ;;
    getAllFailedDeliveries)
    call_getAllFailedDeliveries
    ;;
    addPublicKeyForASpecificRecipient)
    call_addPublicKeyForASpecificRecipient
    ;;
    allowASpecificRecipientToReplysendFromYourAliases)
    call_allowASpecificRecipientToReplysendFromYourAliases
    ;;
    createNewRecipient)
    call_createNewRecipient
    ;;
    deleteASpecificRecipient)
    call_deleteASpecificRecipient
    ;;
    disableEncryptionForASpecificRecipient)
    call_disableEncryptionForASpecificRecipient
    ;;
    disableInlinePGPInlineEncryptionForASpecificRecipient)
    call_disableInlinePGPInlineEncryptionForASpecificRecipient
    ;;
    disableProtectedHeadershideSubjectForASpecificRecipient)
    call_disableProtectedHeadershideSubjectForASpecificRecipient
    ;;
    disallowASpecificRecipientToReplysendFromYourAliases)
    call_disallowASpecificRecipientToReplysendFromYourAliases
    ;;
    enableEncryptionForASpecificRecipient)
    call_enableEncryptionForASpecificRecipient
    ;;
    enableInlinePGPInlineEncryptionForASpecificRecipient)
    call_enableInlinePGPInlineEncryptionForASpecificRecipient
    ;;
    enableProtectedHeadershideSubjectForASpecificRecipient)
    call_enableProtectedHeadershideSubjectForASpecificRecipient
    ;;
    getASpecificRecipient)
    call_getASpecificRecipient
    ;;
    getAllRecipients)
    call_getAllRecipients
    ;;
    removePublicKeyForASpecificRecipient)
    call_removePublicKeyForASpecificRecipient
    ;;
    resendTheVerificationEmailForARecipient)
    call_resendTheVerificationEmailForARecipient
    ;;
    activateASpecificRule)
    call_activateASpecificRule
    ;;
    createNewRule)
    call_createNewRule
    ;;
    deactivateASpecificRule)
    call_deactivateASpecificRule
    ;;
    deleteASpecificRule)
    call_deleteASpecificRule
    ;;
    getASpecificRule)
    call_getASpecificRule
    ;;
    getAllRules)
    call_getAllRules
    ;;
    updateASpecificRule)
    call_updateASpecificRule
    ;;
    updateTheOrderOfTheRules)
    call_updateTheOrderOfTheRules
    ;;
    activateASpecificUsername)
    call_activateASpecificUsername
    ;;
    allowLoginForASpecificUsername)
    call_allowLoginForASpecificUsername
    ;;
    createNewUsername)
    call_createNewUsername
    ;;
    deactivateASpecificUsername)
    call_deactivateASpecificUsername
    ;;
    deleteASpecificUsername)
    call_deleteASpecificUsername
    ;;
    disableCatchAllForASpecificUsername)
    call_disableCatchAllForASpecificUsername
    ;;
    disallowLoginForASpecificUsername)
    call_disallowLoginForASpecificUsername
    ;;
    enableCatchAllForASpecificUsername)
    call_enableCatchAllForASpecificUsername
    ;;
    getASpecificUsername)
    call_getASpecificUsername
    ;;
    getAllUsernames)
    call_getAllUsernames
    ;;
    updateASpecificUsername)
    call_updateASpecificUsername
    ;;
    updateDefaultRecipientForASpecificUsername)
    call_updateDefaultRecipientForASpecificUsername
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
