#!/bin/bash

git clone https://github.com/railstutorial/sample_app_rails_4.git
cd sample_app_rails_4
rvm install ruby-2.0.0-p594
cp config/database.yml.example config/database.yml
bundle install --without production
rake db:migrate
rake db:test:prepare
rspec spec/
rails server
