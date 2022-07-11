<?php 

    session_start();
    $title = "Accueil";
    $css = "index";
    require ('php/include/header.php'); 

    $article = new Article();
    
?>
<main>

    <h1 id="titre-presentation">Bienvenue</h1>
    
    <?php

        $text = $article->getArticles(3,1);

    ?>

</main>

<?php include('php/include/footer.php') ?>
