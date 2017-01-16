

**TIPO DE BOX**

hashicorp/precise64

**INSTALACIÓN**

**Instala Apache manualmente en la máquina guest y visualiza el fichero que se mostrara
por defecto (o crea uno)**

- touch provision.sh

_Dentro del fichero .sh_

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


**CONFIGUARACION**

**Configura para que se lance con el host 8080**

- config.vm.network "forwarded_port", guest: 80, host: 8080


**deshabilitamos la url por defecto de la carpeta compartida y añadimos una url nuestra**
  
- config.vm.synced_folder "/Users/sergioparau/Documents/DAW/Despliegue de aplicaciones web", "/vagrant", disabled: true
- config.vm.synced_folder "/Applications/XAMPP/xamppfiles/htdocs", "/var/www"
