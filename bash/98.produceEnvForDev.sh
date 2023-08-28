#!/bin/bash

. ./setEnv.sh

SAG_AZ_SA_KEY=$(az storage account keys list \
    --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
    --resource-group "$SAG_AZ_RG_NAME" \
    --account-name "$SAG_AZ_SA_NAME" \
    --query "[0].value" \
    --output tsv | tr -d '"')

echo "export SAG_AZ_SA_NAME='${SAG_AZ_SA_NAME}'"
echo "export SAG_AZ_SA_SHARE_NAME='${SAG_AZ_SA_SHARE_NAME}'"
echo "export SAG_AZ_SA_KEY='${SAG_AZ_SA_KEY}'"
echo ""
echo "# naming convention formulas, always check if they are correct!"
# shellcheck disable=SC2016 # disabled on purpose, shell code generation
echo 'export SAG_AZ_STORAGE_URL="https://${SAG_AZ_SA_NAME}.file.core.windows.net/"'
# shellcheck disable=SC2016 # disabled on purpose, shell code generation
echo 'export SAG_AZ_SMB_PATH="//${SAG_AZ_SA_NAME}.file.core.windows.net/${SAG_AZ_SA_SHARE_NAME}"'
