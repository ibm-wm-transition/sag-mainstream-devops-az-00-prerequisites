#!/bin/bash

. ./setEnv.sh

echo "Stopping the VMSS $SAG_AZ_VMSS_NAME"

az vmss stop \
--name $SAG_AZ_VMSS_NAME \
--resource-group $SAG_AZ_RG_NAME \
--subscription $SAG_AZ_SUBSCRIPTION_ID

echo "Stopped the VMSS $SAG_AZ_VM_SUBNET_NAME, result $?"


echo "Deallocating the VMSS $SAG_AZ_VMSS_NAME"

az vmss deallocate \
--name $SAG_AZ_VMSS_NAME \
--resource-group $SAG_AZ_RG_NAME \
--subscription $SAG_AZ_SUBSCRIPTION_ID

echo "Deallocated the VMSS $SAG_AZ_VM_SUBNET_NAME, result $?"