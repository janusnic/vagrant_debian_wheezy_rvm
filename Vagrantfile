
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = 'debian-wheezy-rvm' # Name of machine in "vagrant box list"
  config.vm.box_url = 'http://downloads.sourceforge.net/project/vagrant-debian-wheezy-rvm/debian-wheezy-rvm-2014_01_02.box?r=&ts=1420249033&use_mirror=hivelocity'
  config.vm.hostname = 'vagrant-rvm' # Name of machine in VirtualBox
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.synced_folder "shared", "/home/vagrant/shared"


end
