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

## Changelog
Go to https://github.com/jhsu802701/packer-debian-wheezy-rvm/blob/master/changelog.txt for the list of changes in
each version of the debian-wheezy-rvm Vagrant box.

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
    
If you are asked to provide a password, enter "vagrant".  There should be a README.txt file in the /home/vagrant
directory, which is the same README.txt file in the shared directory in this repository.

### Step 4 - Create a Rails app and start the rails server
Using the same SSH connection from Step 3, enter the following commands:
```
rails new school
cd school
rails g scaffold Pupil name:string form:string # rails g = rails generate
rake db:migrate
rails s # Start the rails server
```

### Step 5
Open your browser and go to [localhost:3000/pupils](http://localhost:3000/pupils).  The school app should appear.

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
