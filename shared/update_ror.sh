#!/bin/bash

if [ "$USER" = "vagrant" ]
then
  rvm install ruby --latest # Install the latest stable version of Ruby
  rvm use ruby --latest
  gem install rails
  rvm list rubies
  rails -v
else
  echo "You MUST be user 'vagrant' to execute this script."
fi

