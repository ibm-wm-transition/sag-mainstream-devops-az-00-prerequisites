#!/bin/bash

. ./setEnv.sh

# shellcheck disable=SC2046
if [ $(az group exists --name "$SAG_AZ_RG_NAME") = true ]; then
  echo "Resource group $SAG_AZ_RG_NAME already exists"
else
  echo "Creating the resource group $SAG_AZ_RG_NAME"

  az group create \
  --name "$SAG_AZ_RG_NAME" \
  --subscription "$SAG_AZ_SUBSCRIPTION_ID" \
  --location "$SAG_AZ_LOCATION"

  echo "Created the resource group $SAG_AZ_RG_NAME, result $?"
fi
