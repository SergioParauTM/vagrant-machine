**CONFIGURACIÓN**

Utiliza directorios en el $HOME de tu host para ubicar los archivos de configuración de 
los hosts virtuales así como los ficheros de ambos sitios web.


**DENTRO DE VagrantFile**

 _Coloca la url donde estará colocada tu clonación del proyecto_

  - config.vm.synced_folder "/tu_path", "/vagrant", disabled: true 
  
  _Coloca donde dice tu_path_trabajar la url desde la careta donde vas a trabajar con el_
  
  - config.vm.synced_folder "/tu_path_trabajar", "/var/www"





