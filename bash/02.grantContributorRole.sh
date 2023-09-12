#!/bin/bash

. ./setEnv.sh

echo "Granting Contributor role ..."

az role assignment create \
--assignee "$SAG_SERVICE_PRINCIPAL_ID" \
--role "Contributor" \
--subscription "$SAG_AZ_SUBSCRIPTION_ID" \
--scope "/subscriptions/$SAG_AZ_SUBSCRIPTION_ID/resourceGroups/$SAG_AZ_RG_NAME"

echo "Granted Contributor role, result $?"
