#!/bin/bash

. ~/.nvm/nvm.sh # NVM command does not work in this script without this.

TIME_STAMP="$(cat /home/vagrant/timestamp.txt)"
echo "Timestamp: ${TIME_STAMP}"
rvm -v
ruby -v
rails -v
python --version
VERSION_PUPPET="$(puppet master --version)"
echo "Version of Puppet: ${VERSION_PUPPET}"
chef-solo -v
VERSION_NVM="$(nvm --version)"
echo "NVM: ${VERSION_NVM}"
VERSION_NODE="$(node -v)"
echo "node.js: ${VERSION_NODE}"
