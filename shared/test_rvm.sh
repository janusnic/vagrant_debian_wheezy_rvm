#!/bin/bash

rvm -v
ruby -v
rails -v
node -v

cd /home/vagrant/shared && rails new school
cd /home/vagrant/shared/school && rails g scaffold Pupil name:string form:string
cd /home/vagrant/shared/school && rake db:migrate
cd /home/vagrant/shared/school && rails s
