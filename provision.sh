apt-get -y update2

apt-get -y install apache2
apt-get -y install git

git clone https://github.com/SergioParauTM/symfony_emp.git
git clone https://github.com/SergioParauTM/symfony_doctrine_start.git



a2ensite sitio1.conf
a2ensite sitio2.conf

a2enmod vhost_alias

service apache2 restart