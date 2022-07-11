<?php

session_start();

if ($_SESSION['droits'] != 1337) {

    header('Location: index.php');
} else {

    $title = "Gestion des Utilisateurs";
    $css = "admin";
    require('php/include/header.php');

    $user = new User();
    $article = new Article();
    $categorie = new Categorie();
    $commentaire = new Commentaire();
   
    $res1 = $user->getList();
    $articles = $article->getList();
    $getCategories = $categorie->getCategories();

?>
    <main>

        <aside>
                <?php 
                if(isset($_SESSION["error"])) {
                    echo $_SESSION["error"];
                    unset($_SESSION["error"]);
                }
                
                if (isset($_SESSION["success"])){
                    echo $_SESSION["success"];
                    unset($_SESSION["success"]);
                }
                ?>
        </aside>

        <section class="gestion-user">

            <h1>Gestion des Utilisateurs</h1>

            <table>

                    <?php

                    foreach ($res1 as $key => $value) {

                        echo '<tr>';

                        foreach ($value as $key1 => $value1) {

                            echo "<td>$value1</td>";
                        }

                        echo "<td>

                                <form action='php/include/admin_process.php' method='POST'>

                                    <input type='text' name='id' value='" . $value['id'] . "' hidden>

                                    <select name='select-droits' id='select-droitd'>

                                        <option>- Droits -</option>
                                        <option value='1'>Utilisateurs</option>
                                        <option value='42'>Modérateur</option>
                                        <option value='1337'>Admin</option>

                                    </select>
                                
                                    <button type='submit' name='modif_droit'>Modifier les Droits</button>

                                    <button type='submit' name='delete_user'>Supprimer</button>

                                </form>
                                    
                            </td>";

                        echo '</tr>';

                    }

                ?>

            </table>

        </section>

        <section class="gestion-article">

            <h1>Gestion des Articles</h1>

            <table>

                <?php

                    foreach ($articles as $key => $article) {

                        echo '<tr>';

                        foreach ($article as $key1 => $value) {

                            echo "<td>$value</td>";
                        }

                        echo "<td>
                                <form action='php/include/admin_process.php' method='POST'>

                                <input type='text' name='id_article' value='" . $article['id'] . "' hidden>
                                
                                    <select name='id_categorie' id='catégorie'>

                                        <option>- Catégorie -</option>";
                                        foreach ($getCategories as $index => $categorie) {

                                            echo "<option value = '" . $categorie['id'] . "'> - " . $categorie['id'] . " - " . $categorie['nom'] . "</option>";
                                        }                                    

                                    echo "</select>
                                
                                    <button type='submit' name='modif_categorie'>Modifier la catégorie</button>

                                    <button type='submit' name='delete_article'>Supprimer Article</button>

                                </form>
                                    
                            </td>";

                        echo '</tr>';

                    }

                ?>

            </table>

        </section>

        <section class="gestion-cat">

            <h1>Gestion des Catégories</h1>

            <table>

                <?php

                    foreach ($getCategories as $key => $categorie) {

                        echo '<tr>';
                            
                        foreach ($categorie as $key1 => $value2) {

                            echo "<td>$value2</td>";
                        }

                        echo "<td>

                                <form action='php/include/admin_process.php' method='POST'>

                                    <input type='text' name='id_categorie' value='" . $categorie['id'] . "' hidden>

                                    <button type='submit' name='delete_categorie'>Modifier Catégorie</button>
                                    <button type='submit' name='delete_categorie'>Supprimer Catégorie</button>

                                </form>
                                    
                            </td>

                            <td>

                                <form action='php/include/admin_process.php' method='POST'>

                                    <input type='text' name='id_categorie' value='" . $categorie['id'] . "' hidden>
                                
                                </form>    
                            </td>


                        </tr>";
                        
                    }

                ?>

            </table>

            <div class="categ">

                <h3>Nouvelle Catégorie</h3>

                <form action='php/include/admin_process.php' method='POST' class='new-categ'>

                    <label for="new_categ">Titre de la Nouvelle Catégorie</label>
                    <input type="text" name="titre_new_categ" id="new_categ">

                    <button type="submit" name="new_categorie">Nouvelle Catégorie</button>

                </form>
                 
            </div>

        </section>            

    </main>

<?php require 'php/include/footer.php';
} ?>