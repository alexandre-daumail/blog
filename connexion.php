<?php

    session_start();
    $title = "Connexion";
    $css = "connexion";
    
    require ('php/include/header.php'); 

?>

    <main>

        <?php

            if (isset($_POST['submit'])) {

                if (empty($_POST['login']) || empty($_POST['password'])) {

                    echo "<p> Veuillez remplir tout les champs</p>";

                } else {

                    $connect = new User();
                    $connect->login($_POST['login'], $_POST['password']);
                }
            }
        ?>
        <section class="container">

            <div class="form-connexion">

                <h2>Formulaire de connexion</h2>

                <form action="#" id="form-connexion"  method="post">

                    <label for="login">Login</label>
                    <input type="text" name="login" required>

                    <label for="password">Mot de Passe</label>
                    <input type="password" name="password" requried>

                    <input type="submit" value="Envoyer" name="submit">

                </form>

            </div>
            
        </section>

    </main>

    <?php include('php/include/footer.php'); ?>
