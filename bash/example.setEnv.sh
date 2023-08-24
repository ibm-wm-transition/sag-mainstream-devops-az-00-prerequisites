#!/bin/sh

# Mandatory
export SAG_AZ_SUBSCRIPTION_ID=yourSubscriptionID
export SAG_AZ_LOCATION=yourLocation

# note, obtain this id with the command, taking the APP ID for your SP
# az ad sp list -o table
# if you know the name
# az ad sp list --display-name 'My SP Name' -o table
# e.g.
# az ad sp list --display-name 'DevOps - TrainingSP - 9' -o table
export SAG_SERVICE_PRINCIPAL_ID=yourSpAppIdHere

# Optional, recommended. Lower case letters only!
export MY_PREFIX=pj1

# Optional, recommended to leave as is. Set another prefix in case of conflicts
export SAG_AZ_RG_NAME=AzDevOps${MY_PREFIX}AgentsResources
export SAG_AZ_NSG_NAME=AzDevOps${MY_PREFIX}AgentsNSG
export SAG_AZ_VNET_NAME=AzDevOps${MY_PREFIX}AgentsNSGVnet
export SAG_AZ_DEFAULT_CIDR='10.0.0.0/16'
export SAG_AZ_VM_SUBNET_NAME=AzDevOps${MY_PREFIX}AgentsSubnet
export SAG_AZ_VMSS_NAME=AzDevops${MY_PREFIX}AgentsVmss
export SAG_AZ_VMSS_IMAGE="Canonical:0001-com-ubuntu-confidential-vm-focal:20_04-lts-gen2:latest"
# storage account name must be between 3 and 24 characters in length and use numbers and lower-case letters only.
export SAG_AZ_SA_NAME=azdevops${MY_PREFIX}imagessa
export SAG_AZ_SA_SHARE_NAME=azdevops${MY_PREFIX}imagessashare

# ACR name must contain only small caps
export SAG_AZ_ACR_NAME=azdevops${MY_PREFIX}acr

export SAG_AZ_VAULT_NAME=azdevops${MY_PREFIX}vault
