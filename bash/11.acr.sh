#!/bin/bash

. ./setEnv.sh

echo "Creating the Azure Container Registry $SAG_AZ_ACR_NAME..."

az acr create \
  --name $SAG_AZ_ACR_NAME \
  --resource-group "$SAG_AZ_RG_NAME" \
  --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
  --sku Basic

echo "Created the Azure Container Registry $SAG_AZ_ACR_NAME, result $?"
