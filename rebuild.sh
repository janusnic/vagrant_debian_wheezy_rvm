#!/bin/bash

echo "------------"
echo "vagrant halt"
vagrant halt

echo "---------------"
echo "vagrant destroy"
vagrant destroy

sh login.sh
