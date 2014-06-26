## Install

### Install using Vagrant

#### Install Virtual Box

https://www.virtualbox.org/

#### Install Vagrant

http://www.vagrantup.com/

#### Setup vagrant

In the project root run ...

    vagrant up
 
#### Run Yaffe in Vagrant

    vagrant ssh
    cd /vagrant
    yaafe.py -r 11025 --resample -f "cfa: ContinuousFrequencyActivation" audio/test.mp3

#### Check results

    less audio/test.mp3.cfa.csv

### Install directly on Ubuntu

Only use this if you are not using the Vagrant method

#### YAAFE

    sudo apt-get update

    sudo ./scripts/install-yaffe.sh

    # Add these to ~/.bash_profile so they are set in every new terminal
    export PATH=$PATH:/usr/local/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
    export PYTHONPATH=$PYTHONPATH:/usr/local/python_packages
    export YAAFE_PATH=/usr/local/yaafe_extensions

    sudo ./scripts/install-yaffe-cba-extension.sh
