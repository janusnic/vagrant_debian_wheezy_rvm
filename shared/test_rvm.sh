#!/bin/bash

gem install copy_rails_tutorial
copy_rails_tutorial_all 'test_app' 'TestApplication'
cd /home/vagrant/shared/test_app && rvm install ruby-2.0.0
echo
echo "Enter the following commands to set up the test app:"
echo "cd /home/vagrant/shared/test_app"
echo "sh setup.sh"
