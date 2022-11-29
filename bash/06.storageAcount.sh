#!/bin/bash

#Changes
#Srini: 23.11 : Added --https-only true, required for updated policy to enforce secure transfer only.

. ./setEnv.sh

echo "Creating the storage account $SAG_AZ_SA_NAME..."

az storage account create \
  --name $SAG_AZ_SA_NAME \
  --resource-group "$SAG_AZ_RG_NAME" \
  --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
  --location $SAG_AZ_LOCATION \
  --sku Standard_LRS \
  --enable-large-file-share \
  --https-only true \
  --tags "Purpose=DevOps"

echo "Created the storage account $SAG_AZ_SA_NAME, result $?"

# access keys to retrieve with commands like
# az storage account keys list --account-name $SAG_AZ_SA_NAME --subscription "$SAG_AZ_SUBSCRIPTION_ID" --query [0].value -o tsv
