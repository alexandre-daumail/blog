<?php

    session_start();

    if ($_SESSION['droits'] == '1') {

        header('Location: index.php');
    
    } else {

        $title = "New Article";
        $css = "new_article";
    
        require ('php/include/header.php');

?>




    <main>

        <?php
        
            if (isset($_POST['submit'])) {

                if (empty($_POST['titre']) || empty($_POST['article']) || empty($_POST['categories'])) {

                    echo "<p> Veuillez remplir tout les champs</p>";
                } 
                
                else{

                    $id_categories = $_POST['categories'];
                                            
                    $insert = new Article();

                    $insert->creation($_POST['titre'], $_POST['article'], $_SESSION['id'], $_POST['categories']);

                    echo "<p>Votre article est correctement enregistré</p>";
                }
            }
        ?>
        
        

        <section class="containerA">

            <h1>Création d'un Article</h1>

            <form action=""  method="POST" class="articlecreate">

                <div class="containerA1">

                    <label for="categories">Catégorie</label>
                        <select name="categories" id="categories" >

                            <option>--Choisir une Catégorie--</option>';

                                <?php
                                    $categories = new Categorie();

                                    $res5 = $categories->getCategories();
                                    for ($i = 0; isset($res5[$i]); $i++) {
                                        echo "<option value='" . $res5[$i]['id'] . "'>" . $res5[$i]['nom'] . '</option>';
                                    }
                                ?> 
                        </select>

                    <label for="titre">Titre de l'article</label>

                    <input name="titre" type="text" placeholder="Votre titre">

                </div>
                
                <div class="containerA2">

                    <label for="article">Article</label>
                    <textarea id="article" name="article" placeholder="Votre article" rows="20" cols="40"></textarea>

                    <input type="submit" name="submit" value="Envoyer">

                </div>

            </form>

        </section>

    </main>

    <?php include('php/include/footer.php'); } ?>

