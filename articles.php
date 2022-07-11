<?php

session_start();
$title = "Articles";
$css = "article";
require('php/include/header.php');

$article = new Article();

$categorie = new Categorie();

?>

<main>

    <?php

    $parametre = isset($_GET['categorie']) ? $_GET['categorie'] : null;
    $pages = $article->totalPages($parametre);


    // On détermine sur quelle page on se trouve
    if (isset($_GET['start']) && !empty($_GET['start'])) {

        $currentPage = (int) strip_tags($_GET['start']);

        if (isset($_GET['categorie']) && !empty($_GET['categorie'])) {

            // Calcul du 1er article de la page
            $start = $currentPage * 5 - 5;

            $categories = $categorie->getAllInfoById($_GET['categorie']);

            echo "<h1>" . $categories[0]['nom'] . "</h1>";

            $articles = $article->getArticles(5, $start, $_GET['categorie']);
        } else {

            $currentPage = (int) strip_tags($_GET['start']);

            $start = $currentPage * 5 - 5;

            echo "<h1>Articles les plus récents</h1>";

            $articles = $article->getArticles(5, $start, '');
        }
    } else {

        $currentPage = 1;

        if (isset($_GET['categorie']) && !empty($_GET['categorie'])) {

            $categories = $categorie->getAllInfoById($_GET['categorie']);

            echo "<h1>" . $categories[0]['nom'] . "</h1>";

            $articles = $article->getArticles(5, 0, $_GET['categorie']);
        } else {

            echo "<h1>Articles les plus récents</h1>";

            $articles = $article->getArticles(5, 0);
        }
    }

    ?>

    <nav id="select-page">

        <ul class="pagination">
            <li class="page-item <?= ($currentPage == 1) ? "disabled" : "" ?>">
                <a href="articles.php?start=<?= $currentPage - 1 ?><?= (isset($_GET['categorie'])) ? "&categorie=" . $_GET['categorie'] : "" ?>" class="page-link">Précédente</a>
            </li>
            <?php for ($page = 1; $page <= $pages; $page++) : ?>
                <li class="page-item <?= ($currentPage == $page) ? "active" : "" ?>">
                    <a href="articles.php?start=<?= $page ?><?= (isset($_GET['categorie'])) ? "&categorie=" . $_GET['categorie'] : "" ?>" class="page-link"><?= $page ?></a>
                </li>
            <?php endfor ?>
            <li class="page-item <?= ($currentPage == $pages) ? "disabled" : "" ?>">
                <a href="articles.php?start=<?= $currentPage + 1 ?><?= (isset($_GET['categorie'])) ? "&categorie=" . $_GET['categorie'] : "" ?>" class="page-link">Suivante</a>
            </li>
        </ul>

    </nav>


</main>

<?php require('php/include/footer.php'); ?>