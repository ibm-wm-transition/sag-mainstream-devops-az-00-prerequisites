#!/bin/bash

. ./setEnv.sh

echo "Creating the VMSS $SAG_AZ_VMSS_NAME"

az vmss create \
--name "$SAG_AZ_VMSS_NAME" \
--resource-group "$SAG_AZ_RG_NAME" \
--subscription "$SAG_AZ_SUBSCRIPTION_ID" \
--image "$SAG_AZ_VMSS_IMAGE" \
--vm-sku Standard_DS2_v2 \
--storage-sku StandardSSD_LRS \
--authentication-type SSH \
--instance-count 0 \
--disable-overprovision \
--upgrade-policy-mode manual \
--single-placement-group false \
--platform-fault-domain-count 1 \
--load-balancer "" \
--vnet-name "$SAG_AZ_VNET_NAME" \
--subnet "$SAG_AZ_VM_SUBNET_NAME" \
--location "$SAG_AZ_LOCATION"

echo "Created the VMSS $SAG_AZ_VM_SUBNET_NAME, result $?"
