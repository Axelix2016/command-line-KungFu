#!/bin/sh
# Prepare environment
echo '############################################'
echo '########## user wpress anlegen #############'
sudo useradd -m -s /bin/bash wpress
echo 'user <wpress> erfolgreich angelegt!'
# sudo userdel -f -r wpress #to remove it.
sudo passwd wpress
echo 'password für user <wpress> erfolgreich geändert!'
echo '############################################'
sudo usermod -a -G docker wpress
echo 'user <wpress> erfolgreich zu gruppe <docker> hinzugefügt!'
echo '############################################'
sudo systemctl restart docker
echo 'docker erfolgreich neu gestartet!'
echo '############################################'
sudo mkdir -p /home/wpress/wordpress-compose
echo 'verzeichnis /home/wpress/wordpress-compose erfolreich angelegt!'
echo '############################################'
sudo touch /home/wpress/wordpress-compose/docker-compose.yml
echo 'datei /home/wpress/wordpress-compose/docker-compose.yml erfolreich angelegt!'
echo '############################################'
sudo mkdir -p /home/wpress/wordpress-compose/nginx/
echo 'verzeichnis /home/wordpress-compose/wpress/nginx erfolreich angelegt!'
sudo mkdir -p /home/wpress/wordpress-compose/db-data/
echo 'verzeichnis /home/wpress/wordpress-compose/db-data erfolreich angelegt!'
sudo mkdir -p /home/wpress/wordpress-compose/logs/nginx/
echo 'verzeichnis /home/wpress/wordpress-compose/logs/nginx erfolreich angelegt!'
sudo mkdir -p /home/wpress/wordpress-compose/wordpress/
echo 'verzeichnis /home/wpress/wordpress-compose/wordpress erfolreich angelegt!'
echo '############################################'
sudo touch /home/wpress/wordpress-compose/nginx/wordpress.conf
echo 'datei /home/wpress/wordpress-compose/nginx/wordpress.conf erfolreich angelegt!'
echo '############################################'
cd /home/wpress/
sudo tree
echo '############################################'
su - wpress
### eof ##################

