<?php

require('php/class/class_dbh.php');
require('php/class/class_article.php');
require('php/class/class_categorie.php');
require('php/class/class_commentaire.php');
require('php/class/class_droits.php');
require('php/class/class_user.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/<?= $css ?>.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title><?= $title ?></title>
</head>

<body>
    <header>
        <nav>

            <label for="menu-mobile" class="menu-mobile">Menu</label>
            <input type="checkbox" id="menu-mobile" role="button">
            <ul>

                <li class="menu-home"><a href="index.php">Accueil</a></li>
                <li class="menu-cat"><a href="articles.php">Articles</a>

                    <ul class="submenu">

                        <li><a href="articles.php">Tous les Articles</a></li>
                        <li><a href="articles.php?categorie=1">Histoire de la ville</a></li>
                        <li><a href="articles.php?categorie=2">Berceau du Cinéma</a></li>
                        <li><a href="articles.php?categorie=3">Le Chantier Naval</a></li>
                        <li><a href="articles.php?categorie=4">Le Parc National des Calanques</a></li>

                    </ul>

                </li>
                <?php

                if (isset($_SESSION['droits'])) { /*utilisateurs*/

                    switch ($_SESSION['droits']) {

                        case '1':

                            echo '
                                    <li class="menu-edit"><a href="profil.php">Profil</a>

                                        <ul class="submenu">

                                            <li><a href="profil.php">Modifier Mon Profil</a></li>

                                        </ul>

                                    </li>
                                    <li class="menu-log"><a href="deconnexion.php">Déconnexion</a></li>
                                </ul>
                            </nav>
                            ';
                            break;

                        case '42':

                            echo '
                                    <li class="menu-edit"><a href="profil.php">Profil</a>

                                        <ul class="submenu">

                                            <li><a href="profil.php">Modifier Mon Profil</a></li>

                                        </ul>

                                    </li>
                                    
                                    <li class="menu-edit"><a href="#">Edition</a>
                                        <ul class="submenu">

                                            <li><a href="new_article.php">Créer un Article</a></li>
                                            <li><a href="mes_articles.php">Mes articles</a></li> 

                                        </ul>
                                    </li>
                                    <li class="menu-log"><a href="deconnexion.php">Déconnexion</a></li>      
                                </ul>
                            </nav>
                            ';
                            break;


                        case '1337':

                            echo '
                                <li class="menu-edit"><a href="profil.php">Profil</a>

                                    <ul class="submenu">

                                        <li><a href="profil.php">Modifier Mon Profil</a></li>

                                    </ul>

                                </li>
                                
                                <li class="menu-edit"><a href="#">Edition</a>
                                    <ul class="submenu">

                                        <li><a href="new_article.php">Créer un Article</a></li>
                                        <li><a href="mes_articles.php">Mes articles</a></li> 

                                    </ul>
                                </li>
                                <li class="menu-admin"><a href="admin.php">Admin</a>

                                    <ul class="submenu">

                                        <li><a href="admin.php">Tableau de Bord</a></li>

                                    </ul>
                                    
                                </li>
                                <li class="menu-log"><a href="deconnexion.php">Déconnexion</a></li>      
                            </ul>
                        </nav>
                            ';
                            break;
                    }
                } else {

                    echo '

                                    <li class="menu-log"><a href="connexion.php">Connexion</a></li>
                                    <li class="menu-sign"><a href="inscription.php">Inscription</a></li>
                                    
                                </ul>
                                </nav>
                            ';
                }

                ?>
    </header>