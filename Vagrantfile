# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "CentOS-6.3"
  config.vm.network :hostonly, "192.168.33.90"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "git"
    chef.add_recipe "yum::epel"
    chef.add_recipe "yum::remi"
    chef.add_recipe "rbenv"
    chef.add_recipe "mysql"
    chef.add_recipe "web"
    chef.add_recipe "passenger"
    chef.json = {
      :mysql_user     => "yakinikubu",
      :mysql_password => "yakinikubu"
    }
  end
end
