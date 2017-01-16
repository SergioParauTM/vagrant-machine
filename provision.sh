apt-get -y update2

apt-get -y install apache2
apt-get -y install git

git clone https://github.com/SergioParauTM/symfony_emp.git  /var/www/sitio1
git clone https://github.com/SergioParauTM/symfony_doctrine_start.git  /var/www/sitio2

mv /home/vagrant/config/sitio1  /etc/apache2/sites-available/sitio1.conf
mv /home/vagrant/config/sitio2  /etc/apache2/sites-available/sitio2.conf

a2ensite sitio1.conf
a2ensite sitio2.conf

a2enmod vhost_alias

service apache2 restart