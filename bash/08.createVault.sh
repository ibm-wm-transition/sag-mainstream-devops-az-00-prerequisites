#!/bin/bash

. ./setEnv.sh

echo "Creating the vault $SAG_AZ_VAULT_NAME..."

az keyvault create \
--name "$SAG_AZ_VAULT_NAME" \
--subscription "$SAG_AZ_SUBSCRIPTION_ID" \
--resource-group "$SAG_AZ_RG_NAME" \
--public-network-access Disabled \
--bypass AzureServices \
--default-action Deny \
--location "$SAG_AZ_LOCATION" \
--tags Purpose=DevOps

echo "Created the storage account share $SAG_AZ_VAULT_NAME, result $?"


az keyvault secret set --name Test --value test --vault-name "$SAG_AZ_VAULT_NAME" --subscription "$SAG_AZ_SUBSCRIPTION_ID" 
