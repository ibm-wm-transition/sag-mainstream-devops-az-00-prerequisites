#!/bin/bash

. ./setEnv.sh

pushd . > /dev/null

cd ~

if [ -f .ssh/id_rsa ]; then
  echo "SSH keys already available"
else
  if [ -f ./clouddrive/.ssh/id_rsa ]; then
    echo "SSH key found on clouddrive, linking now"
    ln -s ./clouddrive/.ssh ./.ssh
  else
    echo "Creating the local ssh keys..."

    ssh-keygen -m PEM -t rsa -b 4096

    mv .ssh ./clouddrive/
    ln -s ./clouddrive/.ssh ./.ssh

    echo "Created the local ssh keys"
  fi
fi

popd > /dev/null
