<?php 

// Fonction qui require automatiquement le bon fichier en fonction du nom de la class instentiée

spl_autoload_register('myAutoLoader');

    function myAutoLoader($classname){

        $url = $_SERVER ['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

        if (strpos($url, 'include') !== false) {

            $path = '../class/class_';

        } else {

            $path = 'php/class/class_';

        }
    
        $extension = '.php';

        require_once $path . $classname . $extension;
    }

?>
