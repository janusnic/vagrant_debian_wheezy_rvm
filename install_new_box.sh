#!/bin/bash
# Proper header for a Bash script.

# NOTE: This script is for use by the Packer setup at 
# https://github.com/jhsu802701/packer-debian-wheezy-rvm .

# Check for regular user login
if [ ! $( id -u ) -ne 0 ]; then
  echo "You must be a regular user to run this script."
  exit 2
fi 

echo "------------"
echo "vagrant halt"
vagrant halt

echo "---------------"
echo "vagrant destroy"
vagrant destroy

echo "------------------------------------"
echo "vagrant box remove debian-wheezy-rvm"
vagrant box remove debian-wheezy-rvm;

echo "-------------------------------------------------------"
echo "vagrant box add debian-wheezy-rvm debian-wheezy-rvm.box"
vagrant box add debian-wheezy-rvm debian-wheezy-rvm.box;

sh login.sh
