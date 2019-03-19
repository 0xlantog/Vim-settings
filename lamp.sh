#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   ins="sudo apt -y"
   sys="sudo systemctl"
else
  ins="apt -y"
  sys="systemctl"
fi

$ins install mariadb-server mariadb-client

$ins install apache2

$ins install php7.0 libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-gd php7.0-intl

$sys restart apache2
