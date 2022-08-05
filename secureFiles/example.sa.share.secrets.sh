#!/bin/bash

export SAG_AZ_SA_NAME=yoursaname
export SAG_AZ_SA_SHARE_NAME=yoursasharename
export SAG_AZ_SA_KEY=yoursashareaccesskeyhere

## computed / hints
export SAG_AZ_STORAGE_URL="https://${SAG_AZ_SA_NAME}.file.core.windows.net/"
export SAG_AZ_SMB_PATH="//${SAG_AZ_SA_NAME}.file.core.windows.net/${SAG_AZ_SA_SHARE_NAME}"