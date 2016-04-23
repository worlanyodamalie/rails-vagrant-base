# Vagrant VM for starting a Rails Project
This `Vagrantfile` and provisioning script are aimed to have a basic, Ubuntu-based VM using Vagrant for starting a new Rails project.

More information on my blog: [https://www.neurotroph.de/2016/04/vagrant-vm-for-starting-a-rails-project/](https://www.neurotroph.de/2016/04/vagrant-vm-for-starting-a-rails-project/)

## Installation
Clone this repository to your project's directory

	git clone https://github.com/neurotroph/rails-vagrant-base.git .

and `vagrant up` your VM.

## Requirements
This `Vagrantfile` has been tested using *Vagrant 1.8.1* and *VirtualBox 5.0.10*.

## Configuration
Out-of-the-box you will get *Ruby 2.3.0* and *Rails 4.2.6*. You can configure your preferred versions in the `vagrant.bootstrap.sh` script by setting the variables in the beginning of the file, e.g.:

	RUBY=2.2.0
	RAILS=4.2.5

## License
No license. Just use it, change it, fork it, modify it, sell it, whatever... I hope this saves you some time. If you find any errors or bugs, please create an issue at GitHub. Thanks.