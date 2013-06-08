# -*- mode: ruby -*-
# vi: set ft=ruby :

# Load External Preferences
require File.join(File.dirname(__FILE__), './', 'config/prefs.rb')

Vagrant.configure("2") do |config|
  config.vm.provider :aws do |aws, override|
    aws.access_key_id = $aws_access_key_id
    aws.secret_access_key = $aws_secret_access_key
    aws.keypair_name = $aws_keypair_name
    aws.ssh_private_key_path = $aws_ssh_private_key_path

    aws.ami = $aws_ami
    aws.ssh_username = $aws_ssh_username
    aws.region = $aws_region

    override.ssh.username = $aws_ssh_username
    override.ssh.private_key_path = $aws_ssh_private_key_path
  end

  config.vm.define :master do |master|
    master.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-master'
      }
    end
    master.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-master.sh master"
    master.vm.box = "dummy"
  end

  config.vm.define :web1 do |web1|
    web1.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-web1'
      }
    end
    web1.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh web1"
    web1.vm.box = "dummy"
  end

  config.vm.define :web2 do |web2|
    web2.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-web2'
      }
    end

    web2.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh web2"
    web2.vm.box = "dummy"
  end

  config.vm.define :web3 do |web3|
    web3.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-web3'
      }
    end

    web3.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh web3"
    web3.vm.box = "dummy"
  end

  config.vm.define :web4 do |web4|
    web4.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-web4'
      }
    end

    web4.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh web4"
    web4.vm.box = "dummy"
  end

  config.vm.define :web5 do |web5|
    web5.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-web5'
      }
    end

    web5.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh web5"
    web5.vm.box = "dummy"
  end

  config.vm.define :web6 do |web6|
    web6.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-web6'
      }
    end

    web6.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh web6"
    web6.vm.box = "dummy"
  end

  config.vm.define :web7 do |web7|
    web7.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-web7'
      }
    end

    web7.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh web7"
    web7.vm.box = "dummy"
  end

  config.vm.define :db do |db|
    db.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-db'
      }
    end

    db.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh db"
    db.vm.box = "dummy"
  end

  config.vm.define :lb do |lb|
    lb.vm.provider "aws" do |aws|
      aws.tags = {
        'Name' => 'salt-demo-lb'
      }
    end

    lb.vm.provision :shell, :inline => "bash /vagrant/deploy/install-salt-minion.sh lb"
    lb.vm.box = "dummy"
  end
end
