#!/bin/bash

. ./setEnv.sh

echo "Creating the storage account share $SAG_AZ_SA_SHARE_NAME..."

az storage share-rm create \
--subscription "$SAG_AZ_SUBSCRIPTION_ID" \
--resource-group "$SAG_AZ_RG_NAME" \
--storage-account "$SAG_AZ_SA_NAME" \
--name "$SAG_AZ_SA_SHARE_NAME" \
--access-tier "TransactionOptimized" \
--quota 1024

echo "Created the storage account share $SAG_AZ_SA_SHARE_NAME, result $?"

