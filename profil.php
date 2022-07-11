<?php

    session_start();

    if (!isset($_SESSION['droits'])) {
        
        header('Location: index.php');

    } else {

        $title = "Profil";
        $css = "profil";
        
        require ('php/include/header.php');
    
?>

   

    <main>

        <?php

            $info = new User();
            $res1 = $info->getAllInfoForUser($_SESSION['login']);
            

            $droits = new Droits();
            $res2 = $droits->getDroitsById($res1['id_droits']);
            
        ?>

        <section class="update-profil">

            <?php

            if (isset($_POST['submit'])) {

                if (empty($_POST['login']) || empty($_POST['password']) || empty($_POST['email']) || empty($_POST['confirm'])) {

                    echo "<p>Veuillez remplir tout les champs!</p>";
                    
                } elseif ($_POST['password'] != $_POST['confirm']) {

                    echo "<p>Verifiez votre mot de passe</p> ";

                } else {

                    $update = new User();
                    $update->update($_POST['login'], $_POST['password'], $_POST['email']);

                }
            }
            ?>


            <form class="form-update-profil" name="update-profil" action="" method="post">

                <h2>Modifier votre Profil</h2>

                <div class="form-update-profil-1">

                    <label for="login">Login</label>
                    <input id="login" name="login" value="<?php echo $res1['login'] ?>" type="text" placeholder="" />

                </div>

                <div class="form-update-profil-2">

                    <label for="email">Email</label>
                    <input id="email" name="email" value="<?php echo $res1['email'] ?>" type="text" placeholder="" />

                </div>

                <div class="form-update-profil-3">

                    <label for="password">Ancien Mot de Passe</label>
                    <input id="password" name="old_password" value="" type="password" placeholder="Votre Mot de Passe" />

                </div>

                <div class="form-update-profil-4">

                    <label for="password">Nouveau Mot de Passe</label>
                    <input id="password" name="password" value="" type="password" placeholder="Votre Mot de Passe" />

                </div>

                <div class="form-update-profil-5">

                    <label for="password">Confirmer Mot de Passe</label>
                    <input id="confirmer" name="confirm" value="" type="password" placeholder="Votre Mot de Passe" />

                </div>

                <div class="form-update-profil-6">

                    <input name="env" type="submit" placeholder="Envoyer">
                    <input type="submit" name="delete" value="Supprimer Votre Compte">

                    <?php
                        if (isset($_POST['delete'])) {

                            header("location:delete.php");
                        }
                    ?>

                </div>

            </form>

        </section>

    </main>


    <?php require 'php/include/footer.php'; } ?>