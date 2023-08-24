#!/bin/bash

. ./setEnv.sh

echo "Creating the NSG $SAG_AZ_NSG_NAME"

az network nsg create \
--name "$SAG_AZ_NSG_NAME" \
--subscription "$SAG_AZ_SUBSCRIPTION_ID" \
--resource-group "$SAG_AZ_RG_NAME" \
--location "$SAG_AZ_LOCATION"

echo "Created the NSG $SAG_AZ_NSG_NAME, result $?"
