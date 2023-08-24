#!/bin/bash

. ./setEnv.sh

SAG_AZ_STORAGE_URL=$(az storage account show \
    --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
    --resource-group $SAG_AZ_RG_NAME \
    --name $SAG_AZ_SA_NAME \
    --query "primaryEndpoints.file" \
    --output tsv | tr -d '"')
echo "export SAG_AZ_STORAGE_URL=${SAG_AZ_STORAGE_URL}"

SAG_AZ_SA_KEY=$(az storage account keys list \
    --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
    --resource-group $SAG_AZ_RG_NAME \
    --account-name $SAG_AZ_SA_NAME \
    --query "[0].value" \
    --output tsv | tr -d '"')
echo "export SAG_AZ_SA_KEY=${SAG_AZ_SA_KEY}"

# shellcheck disable=SC2308,SC2046
SAG_AZ_SMB_PATH=$(echo "$SAG_AZ_STORAGE_URL" | cut -c7-$(expr length "$SAG_AZ_STORAGE_URL"))$SAG_AZ_SA_SHARE_NAME
echo "export SAG_AZ_SMB_PATH=${SAG_AZ_SMB_PATH}"

echo "export SAG_AZ_SA_NAME=${SAG_AZ_SA_NAME}"
