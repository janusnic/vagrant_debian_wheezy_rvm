#!/bin/bash

if [ "$USER" = "vagrant" ]
then
  rvm get head
  rvm reload
  rvm get stable
  rvm reload
else
  echo "You MUST be user 'vagrant' to execute this script."
fi

