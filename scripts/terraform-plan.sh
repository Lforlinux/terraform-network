#!/bin/bash

which terraform

# Get the status
status=$?

#terraform planning
if [ $status -eq 0 ]; then
  echo "terraform  found"
  export ${AWS_ACCESS_KEY}
  export ${AWS_SECRET_ACCESS_KEY}
  echo ${AWS_ACCESS_KEY}
  #cat /dev/zero | ssh-keygen -q -N "" ; ls -al $HOME/.ssh/id_rsa.pub
  terraform plan 
  else 
  echo "Not able to perform the plan"
