#!/bin/bash

rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum install puppet-agent
yum install puppetserver
yum install puppetdb
