#!/bin/bash

# This script creates a basic Rails app that uses an SQLite database.
# PURPOSE: Provide confirmation that Ruby on Rails is properly set up.

# Just making sure Ruby, Rails, and Node are working as expected.
sh /home/vagrant/shared/info.sh

# Due to a bug, installing Spring causes Ruby on Rails to freeze during 
# the "bundle install" process.  Therefore, we are skipping this step so 
# that this script can continue.  Yes, this is the same test app as the 
# one at http://elinux.org/RPi_Ruby_on_Rails .

cd /home/vagrant/shared && rails new school
cd /home/vagrant/shared/school && rails g scaffold Pupil name:string form:string
cd /home/vagrant/shared/school && rake db:migrate
echo "**********************"
echo "OPEN YOUR WEB BROWSER."
echo "GO TO THE FOLLOWING URL:"
echo "http://localhost:3000/pupils"
echo "*************************************************************************"
echo "You can use access the database in this app's db/development.sqlite3 file"
echo "by using SQLite database browser."
echo "*********************************"
cd /home/vagrant/shared/school && rails s -b 0.0.0.0
