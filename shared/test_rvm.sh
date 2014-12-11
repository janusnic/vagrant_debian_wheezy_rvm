#!/bin/bash

# Just making sure Ruby, Rails, and Node are working as expected.
rvm -v
ruby -v
rails -v
node -v

# Due to a bug, installing Spring causes Ruby on Rails to freeze during 
# the "bundle install" process.  Therefore, we are skipping this step so 
# that this script can continue.  Yes, this is the same test app as the 
# one at http://elinux.org/RPi_Ruby_on_Rails .

cd /home/vagrant/shared && rails new school --skip-spring
cd /home/vagrant/shared/school && rails g scaffold Pupil name:string form:string
cd /home/vagrant/shared/school && rake db:migrate
echo "Open your web browser to the following URL:"
echo "http://localhost:3000/pupils"
cd /home/vagrant/shared/school && rails s
