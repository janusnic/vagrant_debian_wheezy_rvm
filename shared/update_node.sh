#!/bin/bash

if [ "$USER" = "vagrant" ]
then
  . ~/.nvm/nvm.sh # Activate NVM
  nvm install stable
  nvm use stable
  node -v
else
  echo "You MUST be user 'vagrant' to execute this script."
fi

