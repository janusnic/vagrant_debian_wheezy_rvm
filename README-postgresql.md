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
8.  Enter "sudo -u postgres psql -l" to see the encodin, which should now be corrected.
