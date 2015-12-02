#!/usr/bin/env bash

#apt-get update
#apt-get install -y apache2

printf "Setting up web root folder"
if [ -L /usr/share/nginx/html ]; then
  rm -rf /usr/share/nginx/html
  ln -fs /vagrant /usr/share/nginx/html
fi

#curl -sS https://getcomposer.org/installer | php
#sudo mv composer.phar /usr/local/bin/composer

#sudo cp /vagrant/vhost /etc/apache2/sites-available/vhost

#sudo a2ensite vhost

#sudo service apache2 restart

printf "Setting up virtual hosts"
if [ -e /etc/nginx/sites-available/vhost ]; then
	sudo rm /etc/nginx/sites-available/vhost
fi

if [ -e /etc/nginx/sites-enabled/vhost ]; then
	sudo rm -f /etc/nginx/sites-enabled/vhost
fi

sudo cp /vagrant/vhost-nginx /etc/nginx/sites-available/vhost
sudo ln -sf /etc/nginx/sites-available/vhost /etc/nginx/sites-enabled/vhost

sudo service nginx restart

printf "Setting up alias"
if [ -e ~/.bash_aliases ]; then
	sudo rm ~/.bash_aliases
fi
sudo ln -s /vagrant/.bash_aliases ~/.bash_aliases