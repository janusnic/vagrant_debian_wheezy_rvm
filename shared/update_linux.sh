#!/bin/bash

if [ "$USER" = "vagrant" ]
then
  sudo apt-get update
  sudo apt-get upgrade -y
else
  echo "You MUST be user 'vagrant' to execute this script"
fi

