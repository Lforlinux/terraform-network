#!/bin/bash

which terraform

# Get the status
status=$?

#terraform binary status
if [ $status -eq 0 ]; then
  echo "terraform  installed already, Skipping this stage"
  exit 0 
  else 
  sudo wget https://releases.hashicorp.com/terraform/0.14.5/terraform_0.14.5_linux_amd64.zip
  unzip terraform_0.14.5_linux_amd64.zip
  sudo mv terraform /bin/
  terraform -v
  rm -rf terraform_0.14.5_linux_amd64.zip
  exit  $status
fi

