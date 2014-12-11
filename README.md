# A Virtual Machine for Getting Started with Ruby on Rails

This repository makes it easy to get started in Ruby on Rails.  It allows you to download, install, boot up, and 
enter a Vagrant base box equipped with a very recent version of Ruby on Rails on a Debian Stable platform.  The 
software in the latest Vagrant base box available here will be much more current than the software in most of the 
other Vagrant base boxes out there.  Furthermore, keeping this Vagrant base box updated will be MUCH easier than 
keeping most of the other publicly available Vagrant base boxes updated.

## What's In The Box
RVM, Git, SQLite, PostgreSQL, Chef, Puppet, node.js

## WARNING
File syncing does not work with certain older versions of VirtualBox.  If the file syncing does not work for you, 
replace your old version of VirtualBox with the latest one.  File syncing works in VirtualBox 4.3.18 but not in 
VirtualBox 4.1.18.

## Getting started

### Step 1 - Install stuff  
Install 3 packages (programs).  

* [Git](http://git-scm.com/) - [downloads page](http://git-scm.com/downloads)  
  + choose Operating System specific package  

* [VirtualBox](https://www.virtualbox.org) - [downloads page](https://www.virtualbox.org/wiki/Downloads)  
  + click on system specific link under "VirtualBox platform packages"  

* [Vagrant](http://vagrantup.com) - [downloads page](http://downloads.vagrantup.com/)  
  + click on latest edition  
  + choose Operating specific package  


### Step 2 - Build Vagrant Virtual Machine   

In the terminal application, enter:

    git clone https://github.com/jhsu802701/vagrant_debian_wheezy_rvm.git
    cd vagrant_debian_wheezy_rvm
    vagrant up

The above commands:
- Create and start the Vagrant Virtual Machine  
- Can take anywhere from 3-45 minutes, depending on your machine and internet connection.  

### Step 3 - SSH into Virtual Machine
In the terminal application,  

    vagrant ssh    # NOTE: now you have SSH-ed into the Vagrant Virtual Machine (VM)
    
If you are asked to provide a password, enter "vagrant".  There should be a README-host.txt file in the 
/home/vagrant/shared directory, which is the same README-host.txt file in the shared directory in this repository.  
The purpose of this file is to confirm that file syncing works.

### Step 4 - Test the RVM installation.
Using the same SSH connection from Step 3, cd your way into the /home/vagrant/shared directory, and run the 
test_rvm.sh script with the command "sh test_rvm.sh".  NOTE: This command will take several minutes to complete.  
At its conclusion, you will see a message ending in "Ctrl-C to shutdown server".  Step 5 will not work until this 
script reaches this point.  (This test script creates the generic Rails app from 
http://elinux.org/RPi_Ruby_on_Rails .)

### Step 5
When the script in Step 4 has finished its work, open your browser on your host machine, and go to 
[localhost:3000/pupils](http://localhost:3000/pupiles).  The School App should appear.

## Virtual Machine Management

To __exit__ SSH connection to Vagrant Virtual Machine, 

    exit        # option 1

    # press ^D  # option 2


To __suspend__ virtual machine,  
    
    # from your computer

    vagrant suspend


To __resume__ virtual machine,  
    
    # from your computer

    vagrant resume


To __shutdown/halt__ virtual machine,  
    
    # from your computer 

    vagrant halt


To __resume__ virtual machine,  

   # from your computer  

   vagrant up


To get __status__ of virtual machine,  

    # from your computer

    vagrant status


To completely delete virtual machine,  

    # from your computer

    vagrant destroy   # DANGER: all is gone


Please check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) for more information on Vagrant.


## Credits 
Thanks to Derek Rockwell for paving the way with his Vagrant setup at https://github.com/railsmn/railsmn-dev-box .
