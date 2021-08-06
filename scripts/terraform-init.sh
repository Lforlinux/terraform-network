#!/bin/bash

#docker run -it --rm lforlinux/terraform:0.14.5 init


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
  terraform init 
  else 
  echo "Not able to perform the plan"
fi