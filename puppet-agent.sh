#!/bin/bash

export PATH=$PATH:/usr/local/bin

yum install -y vim git 

yum install -y epel-release
rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

yum install -y puppet-agent


