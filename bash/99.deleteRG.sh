#!/bin/bash

. ./setEnv.sh

echo "Deleting the resource group $SAG_AZ_RG_NAME"

az group delete \
--name $SAG_AZ_RG_NAME \
--subscription $SAG_AZ_SUBSCRIPTION_ID \
--yes

echo "Deleted the resource group $SAG_AZ_RG_NAME, result $?"