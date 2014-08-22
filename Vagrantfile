# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Configure RedHat RHEL 6.4 vm
  config.vm.define "rhel64" do |rhel64|
    rhel64.vm.box = "notgovready-rhel6.4-web2"
    rhel64.vm.box_url = "https://a7240500425256e5d77a-9064bd741f55664f44e550bdad2949f9.ssl.cf5.rackcdn.com/notgovready-rhel6.4-web2.box"

    # network config
    rhel64.vm.network :private_network, ip: "192.168.56.101"
    rhel64.vm.network :forwarded_port, guest: 80, host: 8081
    rhel64.vm.network :forwarded_port, guest: 22, host: 2122, auto_correct: false,  d: "ssh"

    # Sync overall cloudstart directory on host machine with "/vagrant" directory on  uest machine
    #rhel64.vm.synced_folder "../../", "/vagrant", group: "vagrant", owner:  vagrant", create: rue

    # Launch virtualbox GUI window
    rhel64.vm.provider "virtualbox" do |v|
      v.gui = true
    end
  end

  # Configure Centos 6.5 vm
  config.vm.define "centos65" do |centos65|
    centos65.vm.box = "notgovready-centos-6.5-x86_64-noX-0.2.1"
    centos65.vm.box_url = "https://a7240500425256e5d77a-9064bd741f55664f44e550bdad2949f9.ssl.cf5.rackcdn.com/vbmachine-notgovready-centos-6.5-x86_64-noX-0.2.1.box"

    # network config
    centos65.vm.network :private_network, ip: "192.168.56.102"
    centos65.vm.network :forwarded_port, guest: 80, host: 8082
    centos65.vm.network :forwarded_port, guest: 22, host: 2322, auto_correct: false,  d: "ssh"

    # Sync overall cloudstart directory on host machine with "/vagrant" directory on  uest machine
    #centos65.vm.synced_folder "../../", "/vagrant", group: "vagrant", owner:  vagrant", create: rue

    # Launch virtualbox GUI window
    centos65.vm.provider "virtualbox" do |v|
      v.gui = true
    end
  end
  
  # Configure Ubuntu 12.04.04 vm
  config.vm.define "ubuntu12044" do |ubuntu12044|
    ubuntu12044.vm.box = "ubuntu12044-noX-0.1.1"
    ubuntu12044.vm.box_url = "https://a7240500425256e5d77a-9064bd741f55664f44e550bdad2949f9.ssl.cf5.rackcdn.com/ubuntu12044-noX-0.1.1.box"

    # network config
    ubuntu12044.vm.network :private_network, ip: "192.168.56.103"
    ubuntu12044.vm.network :forwarded_port, guest: 80, host: 8083
    ubuntu12044.vm.network :forwarded_port, guest: 22, host: 2422, auto_correct: false, id: "ssh"

    # Sync overall cloudstart directory on host machine with "/vagrant" directory on guest machine
    #ubuntu12044.vm.synced_folder "../../", "/vagrant", group: "vagrant", owner: "vagrant", create: true   

    # Launch virtualbox GUI window
    ubuntu12044.vm.provider "virtualbox" do |v|
      v.gui = true
    end
  end

end

