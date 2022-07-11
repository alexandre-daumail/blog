<?php
    session_start();
    $title = "Inscription";
    $css = "inscription";
    
    require ('php/include/header.php');

?>
    <main>

        <?php 

            if (isset($_POST['submit'])) {

                if (empty($_POST['login']) || empty($_POST['password']) || empty($_POST['email']) || empty($_POST['confirmer'])) {

                    echo "<p class='error1'>Veuillez remplir tout les champs!</p>";

                } elseif ($_POST['password'] != $_POST['confirmer']) {

                    echo "<p>Verifiez votre mot de passe</p> ";

                } else {

                    $register = new User();
                    $register->register($_POST['login'], $_POST['password'], $_POST['email']);
                    header('Refresh:3, url=connexion.php');

                }
            }
        ?>

        <section class="first-I">

            <div class="form-inscription">

                <h2>Formulaire d'Inscription</h2>

                <form id="form-inscription" action="#" method="post">

                    <div class="form-inscription-1">

                        <label for="login">Login</label>
                        <input type="text" name="login"  required>

                        <label for="email">Email</label>
                        <input type="email" name="email" required>

                    </div>

                    <div class="form-inscription-3">

                        <label for="password">Mot de Passe</label>
                        <input type="password" name="password" required><br>

                        <label for="confirmer">Mot de Passe</label>
                        <input type="password" name="confirmer"required>
                        
                    </div>

                    <div class="form-inscription-4">

                        <input type="submit" name="submit" class="submit">

                    </div>
                
                </form>

            </div>

        </section>

    </main>

    <?php require 'php/include/footer.php'; ?>