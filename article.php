<?php

    session_start();
    $title = "Article";
    $css = "article";
    require ('php/include/header.php');
    
    $article = new Article();

    $commentaire = new Commentaire();
    
    ?>

<main>
    
    <?php
            
        if (isset($_GET['id']) && !empty($_GET['id'])){
        
            $article = $article->getArticleById($_GET['id']);
            
            $commentaires = $commentaire->getCommentaires($_GET['id']);
                    
        } else {
        
            header('location: articles.php');
        
        }

        if(isset($_SESSION["id"])) : 

    ?>
        <section class="container">

            <form action="php/include/commentaire_process.php"  method="POST">

                <legend>Ajouter un commentaire</legend>

                <input type="text" name="id_article" value="<?= $_GET['id'] ?>" hidden>

                <label for="titre">Titre</label>
                <input name="titre" type="text" placeholder="Titre du commentaire">

                <label for="comm">Votre Commentaire</label>

                <textarea id="comm" name="commentaire" placeholder="Votre commentaire" rows="10" cols="40"></textarea>

                <input type="submit" name="submit" value="Envoyer">

            </form>
            
        </section>

        <?php endif ?>
        
    </main>
    
    <?php require('php/include/footer.php') ?>