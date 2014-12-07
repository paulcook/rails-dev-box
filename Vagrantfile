# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'hashicorp/precise32'
  config.vm.hostname = 'rails-dev-box'
  
  # config.vm.provider 'virtualbox' do |v, override|
  #  v.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
  #   v.customize ["modifyvm", :id, "--memory", "2048"]
  #   v.customize ["modifyvm", :id, "--cpus", 2]
  # end

  config.vm.provider 'vmware_fusion' do |v, override|
    override.vm.box     = 'precise64'
    override.vm.box_url = 'http://files.vagrantup.com/precise64_vmware.box'
    v.vmx["memsize"] = "1024"
    v.vmx["numvcups"] = "2"
  end

  # config.vm.provider 'parallels' do |v, override|
  #   override.vm.box = 'parallels/ubuntu-12.04'
  #   override.vm.box_url = 'https://vagrantcloud.com/parallels/ubuntu-12.04'

  #   # Can be running at background, see https://github.com/Parallels/vagrant-parallels/issues/39
  #   v.customize ['set', :id, '--on-window-close', 'keep-running']
  # end

  config.vm.network "forwarded_port", guest: 80, host: 8888 #ip: "192.168.0.17"

  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = 'puppet/manifests'
  #   puppet.module_path    = 'puppet/modules'
  # end
end
