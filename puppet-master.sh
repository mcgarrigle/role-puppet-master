#!/bin/bash

rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

yum install -y puppet-agent
yum install -y puppetserver

vi /etc/sysconfig/puppetserver 
vi /etc/puppetlabs/puppetserver/conf.d/puppetserver.conf 

systemctl enable puppetserver
systemctl start puppetserver
puppet agent --test

yum install -y puppetdb
yum install -y puppetdb-termini

