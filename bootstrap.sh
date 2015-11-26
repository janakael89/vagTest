#!/usr/bin/env bash

#apt-get update
#apt-get install -y apache2
if ! [ -L /usr/share/nginx/html ]; then
  rm -rf /usr/share/nginx/html
  ln -fs /vagrant /usr/share/nginx/html
fi

#curl -sS https://getcomposer.org/installer | php
#sudo mv composer.phar /usr/local/bin/composer

#sudo cp /vagrant/vhost /etc/apache2/sites-available/vhost

#sudo a2ensite vhost

#sudo service apache2 restart
if ! [ -L /etc/nginx/sites-available/vhost ]; then
sudo rm -r /etc/nginx/sites-available/vhost
sudo rm -r /etc/nginx/sites-enabled/vhost
fi

sudo cp /vagrant/vhost-nginx /etc/nginx/sites-available/vhost
sudo ln -s /etc/nginx/sites-available/vhost /etc/nginx/sites-enabled/vhost

sudo service nginx restart