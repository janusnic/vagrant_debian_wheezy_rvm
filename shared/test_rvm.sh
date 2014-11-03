#!/bin/bash

gem install copy_rails_tutorial
copy_rails_tutorial_all 'test_app' 'TestApplication'
cd test_app && sh setup.sh
