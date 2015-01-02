# Updating the Vagrant Base Box
This repository includes features for conveniently updating your Vagrant base box.  

## What's the point?
If you do not change the Vagrant base box, entering the command "sh rebuild.sh" gives you the old base box, and any 
updates you made are destroyed.  The fresh Ruby on Rails setup may be outdated.  Updating the Vagrant base box 
gives you access to a fresh Ruby on Rails setup that is up-to-date.

## How can I update my Vagrant base box?
Enter "sh login.sh" to enter your Vagrant base box.  Go to the shared directory in your Vagrant box, and enter the 
command "sh update_all.sh".  (NOTE: As of 1-2-2015, this script only updates the Linux packages.  I had to disable 
the processes of updating Ruby, Rails, RVM, and node.js in order to retain the port forwarding capability that 
allows you to view your Rails app from the browser on your host system.)  After the updates are complete, exit the 
Vagrant box, and enter the command "sh update_base.sh" to begin the process of replacing the old Vagrant base box 
with an updated version.  NOTE: You will be prompted a few times during the update_base.sh script.
