SETTING UP POSTGRESQL
(From http://seanh.cc/posts/fix-postgresql-locale-on-vagrant/)

1.  Enter "sudo -u postgres psql -l" to see the encoding.
The encoding of the databases will be in LATIN1, but you need UTF8.
2.  Enter "sudo nano /etc/bash.bashrc".  Add the following lines to the 
end of the file:
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
3.  Enter "sudo locale-gen en_US.UTF-8"
4.  Enter "sudo dpkg-reconfigure locales"
5.  Enter "exit" to disconnect from the Vagrant box, and enter "vagrant ssh" to re-enter.
6.  Enter "sudo pg_dropcluster 9.1 main --stop".
7.  Enter "sudo pg_createcluster 9.1 main --start"
8.  Enter "sudo -u postgres psql -l" to see the encoding, which should now be corrected.

CREATE A BASIC POSTGRESQL APP
(From https://github.com/a2labs/vagrant-rails/blob/master/setup.sh and 
http://blog.crowdint.com/2011/08/11/postgresql-in-vagrant.html)

1.  Enter the command "sudo apt-get install postgresql postgresql-contrib postgresql-server-dev-9.1"
2.  Enter the following command:<br>
sudo -u postgres psql -c"CREATE ROLE rails_user WITH LOGIN CREATEDB SUPERUSER PASSWORD 'password1'"
3.  Enter "sudo nano /etc/postgresql/9.1/main/pg_hba.conf".  Change instances of "peer" to "md5".  


4.  Enter "sudo service postgresql restart"
5.  Enter the command "rails new MYAPPNAME --database=postgresql"
6.  In the "default: &default" section of config/database.yml, enter the following two lines:
username: rails_user
password: password1
7.  Enter the command "cd MYAPPNAME;rails g scaffold Pupil name:string form:string; rake db:create db:migrate".
8.  Enter the command "rails s -b 0.0.0.0".
