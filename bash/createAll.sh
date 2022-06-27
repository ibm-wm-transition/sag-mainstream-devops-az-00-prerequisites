#!/bin/bash

./00.assureLocalSshKeys.sh
./01.createRG.sh
./02.grantContributorRole.sh
./03.createNSG.sh
./04.createVNET.sh
./05.createVmss.sh
./06.storageAcount.sh
./07.storageAccountShare.sh
./11.acr.sh
./21.deallocateVmss.sh
