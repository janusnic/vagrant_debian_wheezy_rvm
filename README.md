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

### Step 1 - Install VirtualBox
Go to [VirtualBox](https://www.virtualbox.org), click on Downloads, and get the appropriate platform package.
If your host OS is Debian Linux, Ubuntu Linux, or a derivative of either distro, cd your way into the directory 
where your downloaded VirtualBox package is located, and enter the command "dpkg -i virtualbox*deb."  If you choose 
to use your Linux distro's normal package manager to install VirtualBox, PLEASE check the version number.  As 
mentioned before, file syncing does not work with certain older versions of VirtualBox (such as 4.1.18) but does 
work with the newer versions (such as 4.3.18 and 4.3.20).

### Step 2 - Install Git and Vagrant
Install 2 packages (programs).  If your host OS is Debian Linux, Ubuntu Linux, or one of their derivatives, the 
shell command is "apt-get install git vagrant".  If your host OS is OS X or Windows, download Git and Vagrant from 
the URLs below and follow your normal procedure for installing packages.

* [Git](http://git-scm.com/) - [downloads page](http://git-scm.com/downloads)  
  + choose Operating System specific package  


* [Vagrant](http://vagrantup.com) - [downloads page](http://downloads.vagrantup.com/)  
  + click on latest edition  
  + choose Operating specific package  

### Step 3 - Build, Boot Up, and Enter The Virtual Machine

In the terminal application, enter:

    git clone https://github.com/jhsu802701/vagrant_debian_wheezy_rvm.git
    cd vagrant_debian_wheezy_rvm
    sh login.sh
    
The login.sh script executes the following Vagrant commands:
    vagrant up
    vagrant ssh
    
The "vagrant up" command downloads the Vagrant box, installs it on your host machine, and boots it up.  (If the 
Vagrant box were already installed on your host machine, this command would just boot up the box.)  Depending on 
the speed of your hardware and Internet connection, the "vagrant up" command can take 3 to 45 minutes to execute.

The "vagrant ssh" command logs you into the Vagrant box.  If you are asked to provide a password, enter "vagrant".  
There should be a README-host.txt file in the /home/vagrant/shared directory, which is the same README-host.txt 
file in the shared directory in this repository.  The purpose of this file is to confirm that file syncing works.

### Step 4 - Test the RVM installation.
Using the same SSH connection from Step 3, cd your way into the /home/vagrant/shared directory in your virtual 
machine, and run the test_rvm.sh script with the command "sh test_rvm.sh".  NOTE: This command will take a few 
minutes to complete.  At its conclusion, you will see a message ending in "Ctrl-C to shutdown server".  Step 5 
will not work until this script reaches this point.  (This test script creates the generic Rails app from 
http://elinux.org/RPi_Ruby_on_Rails .)

### Step 5
When the script in Step 4 has finished its work, open your browser on your host machine, and go to 
[localhost:3000/pupils](http://localhost:3000/pupils).  The School App should appear.


## Virtual Machine Management

To __exit__ SSH connection to Vagrant Virtual Machine, 

    exit        # option 1

    # press ^D  # option 2


To reboot and log back in,

    # from your host OS
    
    sh reboot.sh # Executes "vagrant halt", "vagrant up", and "vagrant ssh".
    

To __suspend__ virtual machine,  
    
    # from your host OS

    vagrant suspend


To __resume__ virtual machine,  
    
    # From your host OS

    vagrant resume


To __shutdown/halt__ virtual machine,  
    
    # From your host OS

    vagrant halt


To __resume__ virtual machine,  

   # From your host OS  

   vagrant up


To get __status__ of virtual machine,  

    # From your host OS

    vagrant status


To completely delete virtual machine,  

    # From your host OS

    vagrant destroy   # DANGER: all is gone
    
To delete AND rebuild the virtual machine,

    # From your host OS
    
    sh rebuild.sh

Please check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) for more information on Vagrant.


## Credits 
Thanks to Derek Rockwell for paving the way with his Vagrant setup at https://github.com/railsmn/railsmn-dev-box .
