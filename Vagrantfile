# -*- mode: ruby -*-
# vi: set ft=ruby :
nodes = {
'gitlab' => 100,
'jenkins' => 101,
}

Vagrant.configure("2") do |config|
  config.vm.box = "boxcutter/ubuntu1404"
  nodes.each do |prefix, ip|
    hostname = prefix
    config.vm.define "#{hostname}" do |box|
      box.vm.hostname = "#{hostname}.vmtrooper.local"
# Seing up private networking in case you want to pre-populate DNS.  These IP's are NAT'ed so you can still reach the Internet, apt-get, etc.
      box.vm.network :private_network, ip: "192.168.250.#{ip}", :netmask => "255.255.255.0"
      box.vm.provision :shell, :path => "src/#{prefix}.sh"
      # Puppet manifests can be found and edited in the manifests subdirectory
      # If using Fusion
      box.vm.provider :vmware_fusion do |v|
        v.vmx["memsize"] = 1024
      end
    end
  end
end
