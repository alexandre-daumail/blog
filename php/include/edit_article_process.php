<?php

if (isset($_POST['submit'])) {

    if (empty($_POST['titre']) || empty($_POST['article']) || empty($_POST['categories'])) {

        echo "<p> Veuillez remplir tout les champs</p>";
    } 
    
    else{

        $id_categories = $_POST['categories'];                        

        $insert = new Article();

        $insert->creation($_POST['titre'], $_POST['article'], $_SESSION['id'], $id_categories);

        echo "<p>Votre article est correctement enregistré</p>";
    }
}

?>
