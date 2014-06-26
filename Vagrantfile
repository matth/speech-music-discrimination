# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Box settings

  config.vm.box       = 'ubuntu12.04'

  config.vm.box_url   = 'http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box'

  config.vm.host_name = 'speech-music-discrimination'

  config.vm.network :private_network, :ip => '192.168.33.40'

  config.vm.provision :shell, :inline => %Q{
    cd /vagrant

    sudo apt-get update

    sudo ./scripts/install-yaffe.sh

    echo "export PATH=\$PATH:/usr/local/bin" > /home/vagrant/.bash_profile
    echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/usr/local/lib" >> /home/vagrant/.bash_profile
    echo "export PYTHONPATH=\$PYTHONPATH:/usr/local/python_packages" >> /home/vagrant/.bash_profile
    echo "export YAAFE_PATH=/usr/local/yaafe_extensions" >> /home/vagrant/.bash_profile
    source /home/vagrant/.bash_profile
    chown vagrant:vagrant /home/vagrant/.bash_profile

    sudo ./scripts/install-yaffe-cba-extension.sh
  }

end
