#!/bin/bash

export PATH=/usr/local/ruby/bin:$PATH
gem update --system

TAR_FILE=rubinius-${TAG}.tar.bz2

cd /tmp
wget http://releases.rubini.us/$TAR_FILE
tar xjf $TAR_FILE

cd ${TAR_FILE%.*.*}

bundle
./configure --prefix=$PREFIX
rake install

rm -rf ${TAR_FILE} ${TAR_FILE%.*.*}/

export PATH=/usr/local/rubinius/bin:$PATH
locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8
/usr/local/rubinius/bin/gem install bundler
/usr/local/rubinius/bin/gem install rubysl-tracer
