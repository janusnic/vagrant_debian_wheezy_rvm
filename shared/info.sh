#!/bin/bash

. ~/.nvm/nvm.sh # NVM command does not work in this script without this.

echo

TIME_STAMP="$(cat /home/vagrant/timestamp.txt)"
echo "Timestamp: ${TIME_STAMP}"

echo
rvm -v

echo
ruby -v

echo
rails -v

echo
VERSION_NVM="$(nvm --version)"
echo "NVM: ${VERSION_NVM}"

echo
VERSION_NODE="$(node -v)"
echo "node.js: ${VERSION_NODE}"

echo
python --version

echo
VERSION_PUPPET="$(puppet master --version)"
echo "Version of Puppet: ${VERSION_PUPPET}"

echo
chef-solo -v

echo
redis-server -v

echo
echo "Version of SQLite:"
sqlite3 -version

echo
psql --version

echo
