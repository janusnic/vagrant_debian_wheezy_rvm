#!/bin/bash

if [ "$USER" = "vagrant" ]
then
  echo "RVM update deactivated"
  # rvm get head
  # rvm reload
  # rvm get stable
  # rvm reload
  # rvm -v
else
  echo "You MUST be user 'vagrant' to execute this script."
fi

