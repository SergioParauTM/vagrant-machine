#instalaciones requeridas
sudo apt-get -y update

# Instalación de  Apache

sudo apt-get -y install apache2

# Instalación de MySQL, rellenando el prompt y asignando password a root

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql

# Instalación de PHP
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt
sudo a2enmod rewrite

sudo service apache2 restart

# Borramos si existe la carpeta
rm -rf /var/www/DirWordpress


# insertamos los campos de ontrol de errores en php.ini
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
sed -i "s/disable_functions = .*/disable_functions = /" /etc/php5/cli/php.ini

#reiniciamos apache
sudo service apache2 restart

#Instalamos composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer