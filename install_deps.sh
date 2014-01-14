#!/bin/bash

apt-get -qq update
apt-get -y --force-yes install build-essential
apt-get -y --force-yes install wget
apt-get -y --force-yes install libtool
apt-get -y --force-yes install zlib1g-dev
apt-get -y --force-yes install libssl-dev
apt-get -y --force-yes install libreadline6-dev
apt-get -y --force-yes install libyaml-dev
apt-get -y --force-yes install ncurses-dev
apt-get -y --force-yes install libgdbm-dev
apt-get -y --force-yes install libpq-dev
apt-get -y --force-yes install libffi-dev
apt-get -y --force-yes install git

git clone https://github.com/sstephenson/rbenv.git .rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
