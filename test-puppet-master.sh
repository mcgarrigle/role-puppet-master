#!/bin/bash
i
# run this first
# puppet resource package puppet-client-tools ensure=latest

puppet query 'nodes [ certname ]{ limit 10 }'

