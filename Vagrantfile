
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = 'debian-wheezy-rvm' # Name of machine in "vagrant box list"
  config.vm.box_url = 'http://downloads.sourceforge.net/project/vagrant-debian-wheezy-rvm/debian-wheezy-rvm-0_1_1.box?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fvagrant-debian-wheezy-rvm%2Ffiles%2F%3Fsource%3Dnavbar&ts=1418415475&use_mirror=iweb'
  config.vm.hostname = 'vagrant-rvm' # Name of machine in VirtualBox
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.synced_folder "shared", "/home/vagrant/shared"


end
