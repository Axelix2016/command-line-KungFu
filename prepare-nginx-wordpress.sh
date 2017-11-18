#!/bin/sh
# Prepare environment
useradd -m -s /bin/bash wpress
passwd wpress
usermod -a -G docker wpress
systemctl restart docker
su - wpress
mkdir -p wordpress-compose
cd wordpress-compose/
touch docker-compose.yml
mkdir -p nginx/
mkdir -p db-data/
mkdir -p logs/nginx/
mkdir -p wordpress/
touch nginx/wordpress.conf
### eof ##################
