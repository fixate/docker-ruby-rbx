#!/bin/bash

export PATH=/usr/local/ruby/bin:$PATH
gem update --system

TAR_FILE=rubinius-${TAG}.tar.bz2

cd /tmp
wget http://releases.rubini.us/$TAR_FILE
tar xzf $TAR_FILE

cd ${TAR_FILE%.*.*}

curl -fsSL curl.haxx.se/ca/cacert.pem -o /usr/local/src/rubinius-$TAG/lib/rubygems/ssl_certs/cert.pem
bundle
./configure --prefix=$PREFIX
rake install

rm -rf ${TAR_FILE} ${TAR_FILE%.*.*}

locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
echo "export LC_ALL=en_US.UTF-8" >> /etc/environment
/usr/local/rubinius/bin/gem install bundler
/usr/local/rubinius/bin/gem install rubysl-tracer
