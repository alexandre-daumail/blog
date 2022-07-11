<?php

session_start();

if ($_SESSION['droits'] !== '42' && $_SESSION['droits'] !== '1337') {

    header('Location: index.php');
} else {

    $title = "Edition";
    $css = "edit_articles";

    require('php/include/header.php');

?>

    <main>

        <h1>Modification d'article</h1>

            <form action="php/include/edit_article.inc.php" method="POST" class="articlecreate">

                <fieldset>

                    <legend>Modification d'un Article</legend>

                    <label for="categories">Catégorie</label>

                    <select name="categories" id="categories">

                        <option>--Choisir une Catégorie--</option>';

                        <?php

                            $categories = new Categorie();

                            $cat = $categories->getCategories();

                            for ($i = 0; isset($cat[$i]); $i++) {

                                echo "<option value='" . $cat[$i]['id'] . "'>" . $cat[$i]['nom'] . '</option>';
                            }

                        ?>

                    </select>

                    <label for="titre">Titre de l'article</label>
                    <input name="titre" type="text" placeholder="Votre titre">

                    <label for="article">Article</label>
                    <textarea id="article" name="article" placeholder="Votre article" rows="20" cols="40"></textarea>

                    <input type="submit" name="submit" value="Envoyer">

                </fieldset>

            </form>

    </main>

<?php include('php/include/footer.php'); } ?>