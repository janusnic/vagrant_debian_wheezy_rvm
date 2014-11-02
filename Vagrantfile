
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = 'debian-wheezy-rvm' # Name of machine in "vagrant box list"
  config.vm.box_url = 'https://vagrantcloud.com/jhsu802701/boxes/debian-wheezy-rvm/versions/4/providers/virtualbox.box'
  config.vm.hostname = 'vagrant-rvm' # Name of machine in VirtualBox
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.synced_folder "shared", "/home/vagrant/shared"


end
