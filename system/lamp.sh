#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo You must be root to run this script
  exit 1
fi
apt-get update &>/dev/null
if [[$? -ne 0 ]]; then
  echo Repositories not available
  echo Please check your network configuration
  exit 1
# Install apache php
apt-get -y install apache2 php5 libapache2-mod-php5 php5-mcrypt php5-curl
php5-mysql php5-gd php5-cli php5-dev mysql-client php5enmod mcrypt


# Install mysql
# debconf-set-selections
# mysql root password:
predefPassword="mypassword"
echo mysql-server-5.1 mysql-server/root_password password $predefPassword  | debconf-set-selections
echo mysql-server-5.1 mysql-server/root_password_again password $predefPassword | debconf-set-selections
apt-get install -y mysql-server

service apache2 restart
exit 0
