#!/bin/bash

rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

yum install -y puppet-agent
yum install -y puppetserver

cp config/puppetserver      /etc/sysconfig/puppetserver
cp config/puppetserver.conf /etc/puppetlabs/puppetserver/conf.d/puppetserver.conf

systemctl enable puppetserver
systemctl start puppetserver
puppet agent --test

yum install -y puppetdb
yum install -y puppetdb-termini

yum install -y ruby
gem install bundler
bundle install

