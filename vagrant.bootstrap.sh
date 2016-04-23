#!/usr/bin/env bash

# Configuration:
#   Which versions of Ruby and Rails do you want to install?
RUBY=2.3.0
RAILS=4.2.6
# /Configuration

sudo apt-get update

echo "==> Installing git..."
sudo apt-get install -y git

echo "==> Installing Ruby dependencies..."
sudo apt-get install -y build-essential bison openssl libreadline6 libreadline6-dev zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev ssl-cert subversion ruby-dev

echo "==> Installing rbenv and plugins..."
sudo apt-get install -y rbenv
if [ ! -d ~/.rbenv/plugins/ruby-build ]; then
	git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi
if [ ! -f ~/.bashrc ]; then
	touch ~/.bashrc
fi
echo "export PATH=\"\$HOME/.rbenv/bin:\$PATH\"" >> ~/.bashrc
echo "eval \"\$(rbenv init -)\"" >> ~/.bashrc
source ~/.bashrc

mkdir -p ~/.rbenv
sudo chown -R vagrant ~/.rbenv
if [ -f ~/.rbenv/versions/$RUBY/bin/ruby ]; then
	echo "==> Ruby ${RUBY} is already installed..."
else
	echo "==> Installing Ruby ${RUBY}..."
	rbenv install $RUBY
fi
rbenv global $RUBY
cd /vagrant
rbenv local $RUBY
rbenv rehash

gem install bundler --no-rdoc --no-ri
gem install rails --version $RAILS --no-rdoc --no-ri
rbenv rehash
