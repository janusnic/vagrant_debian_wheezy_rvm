#!/bin/bash

. ~/.nvm/nvm.sh

echo "Timestamp:"
cat /home/vagrant/timestamp.txt
echo "Version of Puppet:"
puppet master --version
chef-solo -v
python --version
rvm -v
ruby -v
rails -v
nvm --version
node -v
