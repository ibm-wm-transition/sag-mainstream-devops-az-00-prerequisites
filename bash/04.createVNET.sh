#!/bin/bash

. ./setEnv.sh

echo "Creating the VNET $SAG_AZ_VNET_NAME"

az network vnet create \
--name "$SAG_AZ_VNET_NAME" \
--subscription "$SAG_AZ_SUBSCRIPTION_ID" \
--resource-group "$SAG_AZ_RG_NAME" \
--location "$SAG_AZ_LOCATION" \
--network-security-group "$SAG_AZ_NSG_NAME" \
--address-prefixes "$SAG_AZ_DEFAULT_CIDR" \
--subnet-name "$SAG_AZ_VM_SUBNET_NAME"

echo "Created the VNET $SAG_AZ_VNET_NAME, result $?"
