# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  # config.vm.box = "https://s3.amazonaws.com/se.ubuntu/precise64.box"
  config.vm.box = "mitchellh/boot2docker"
  
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/usr/local/build"
  config.vm.synced_folder "puppet/", "/etc/puppet/"

  config.vm.provider "virtualbox" do |v|
    v.memory = 3*1024
    v.cpus = 2
  end
  
end
