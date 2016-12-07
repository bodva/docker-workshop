Vagrant.configure("2") do |config|
  # Use our base ubuntu box
  # uncomment for virtual box
  config.vm.hostname = 'docker.local'
  config.vm.box = "ubuntu/trusty64"

  # run "vagrant hostmanager" after "vagrant up", then the hostname will be added to your /etc/hosts
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.hostmanager.ip_resolver = proc do |machine|
    result = ""
    machine.communicate.execute("ifconfig eth1") do |type, data|
      result << data if type == :stdout
    end
    (ip = /inet addr:(\d+\.\d+\.\d+\.\d+)/.match(result)) && ip[1]
  end

  config.vm.provision :shell do |shell|
    shell.path = "bootstrap.sh"
  end

  config.vm.provision :hostmanager

  config.vm.network :private_network, ip: "13.13.13.13", netmask: "255.255.0.0"
 
  config.vm.provider "virtualbox" do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "2024"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    override.vm.synced_folder "./web", "/home/vagrant", nfs: true
    override.nfs.map_uid = Process.uid
    override.nfs.map_gid = Process.gid
  end

end