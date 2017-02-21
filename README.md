INSTALACION WORDPRESS EN Vagrant

 **Primer que nada deberas acceder a Vagrantfile y modificar** 
    
     - config.vm.synced_folder ".", "/var/www,  "/vagrant", disabled: true
     - config.vm.synced_folder ".", "/var/www"
    
  **En segundo lugar deberas realizar**  
   
   - vagrant up  provision
     
 ** En tercer lugar deberas seguir los siguiente pasos una ve configurado tu vagrant y realizado
    vagrant ssh **
     
     _` INICIAMOS MySQL Shell`_
     - mysql -u root -p
     
     `Creamos Base de datos`
     - CREATE DATABASE wordpress;
     
     `CREAMOS USUARIO `
     - CREATE USER wordpressuser@localhost;
     
     `DEFINIMOS CONTRASEÑA `
     - SET PASSWORD FOR wordpressuser@localhost= PASSWORD("password");
     
     `LE DAMOS TODOS LOS PRIVILEGIOS AL USUARIO`
     - GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser@localhost IDENTIFIED BY 'password';
     
     `REFRESCAMOS MYSQL`
     - FLUSH PRIVILEGES;
     
     `POR ULTIMO SALIMOS `
     - exit
