# Software AG Mainstream DevOps for Integration - Azure DevOps Tutorial Prerequisites

- [Software AG Mainstream DevOps for Integration - Azure DevOps Tutorial Prerequisites](#software-ag-mainstream-devops-for-integration---azure-devops-tutorial-prerequisites)
  - [Quick Start with Cloud Shell](#quick-start-with-cloud-shell)
    - [Prerequisites](#prerequisites)
    - [Operations](#operations)
      - [Option 1: Bash cloud shell with mount of the cloud share](#option-1-bash-cloud-shell-with-mount-of-the-cloud-share)
      - [Other Options](#other-options)

This repository provides a set of convenient scripts that you can use to prepare Azure Cloud compute resorces to support the mainstream DevOps pipelines used in the `sag-mainstream-devops-az-*` repositories.

## Quick Start with Cloud Shell

### Prerequisites

- A valid Azure user
- A valid Azure service principal, identified with a secret
- A Resource Group where you are owner
  - If you have access to a subscription where you are owner you can create the resource group and assign the relevant permissions to the resource group
  - If you only have access to the resource group, ask the subscription owner to assign the contributor role to the service principal on the resource group
- Browser access to Azure resources via [Azure Portal](https://portal.azure.com)
- Clone this repository on your PC

### Operations

#### Option 1: Bash cloud shell with mount of the cloud share

- Open a browser to [Azure Portal](https://portal.azure.com)
- Open a cloud shell with "bash"
  - If this is the first time you open a cloud shell associate a storage account and a share to it
    - You may create the storage account inside the given resource group if you do not have other options
- Follow the instructions in Azure on how to mount the share on your local pc
  - Example: [how to mount the share on Windows](https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-windows)
  - Example: [how to mount the share on Linux](https://docs.microsoft.com/en-us/azure/storage/files/storage-how-to-use-files-linux?tabs=smb311)
- Copy the folder "bash" of this repository onto the share in a convenient location (e.g. `z:\az-pipe-prerequisites\bash`)
- Inside the above folder copy `setEnvExample.sh` into `setEnv.sh`
- Edit `setEnv.sh` and set the values of your enviornment
  - If you do not know the App ID of your service principal, use the following command to obtain it
    - `az ad sp list --display-name "DevOps - TrainingSP - 9" -o table`
- Execute the shell scripts in the given order. (00 to 11)
- Eventually execute `98.produceEnvForDev.sh`. Copy the three "export" resulting lines into a private file on your PC. These lines will be saved in a secure file in the DevOps project.

#### Other Options

**TODO**: other options are easily available, they will be documented if necessary
