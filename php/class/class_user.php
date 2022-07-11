<?php


class User extends Dbh
{
  private $id;
  public $login;
  public $password;
  public $email;
  public $droits;

  public function register($login, $password, $email)
  {

    $req = $this->connect()->prepare("SELECT * FROM `utilisateurs` WHERE login=?");

    $req->execute(array($login));

    $res = $req->fetch(PDO::FETCH_ASSOC);
    if ($res == false) {

      try {

        $sth = $this->connect()->prepare("INSERT INTO `utilisateurs` (`login`, `password`, `email`) VALUES (?,?,?)");

        $passwordprotect = password_hash($password, PASSWORD_DEFAULT);

        $sth->execute(array($login, $passwordprotect, $email));

        $confirmation = '<p>Bienvenue ' . $_POST['login'];

        echo $confirmation;
        header('Refresh:3; URL=inscription.php');
      } catch (Exception $e) {

        echo 'Exception reçue : ', $e->getMessage(), "\n";
      }
    } elseif ($res == true) {

      $error2 = "<p>Ce Login existe déjà</p>";
      echo $error2;
    }
  }

  public function login($login, $password)
  {

    $sth = $this->connect()->prepare("SELECT * FROM `utilisateurs` WHERE `login` = ?");
    $sth->execute(array($login));
    $res = $sth->fetch(PDO::FETCH_ASSOC);


    if (isset($res) && !empty($res)) {

      if ($login === $res['login'] && password_verify($password, $res['password']) === true) {

        $this->id = $res['id'];
        $this->login = $login;
        $this->password = $password;
        $this->email = $res['email'];
        $this->droits = $res['id_droits'];
        $_SESSION['login'] = $login;
        $_SESSION['id'] = $res['id'];
        $_SESSION['droits'] = $res['id_droits'];

        echo "<p>Vous êtes bien connectés, vous allez être redirigés</p>";

        header('Refresh:1; URL=index.php');
      } elseif ($login === $res['login'] && password_verify($password, $res['password'])) {

        echo '<p >Votre compte est inactif veuillez contacter votre administrateur</p>';

      }

      
    } else {
      echo '<p>Verifiez votre Login/Mot de passe</p>';
    }
    
  }

  public function disconnect()
  {

    if (isset($_SESSION)) {

      session_unset();
      header("location:index.php");
    }
  }

  public function getAllInfoForUser($login)
  {

    $sth = $this->connect()->prepare("SELECT * FROM `utilisateurs` WHERE `login` = '$login' ");
    $sth->execute();
    $res = $sth->fetch(PDO::FETCH_ASSOC);
    return $res;
  }

  public function getList()
  {

    $sth = $this->connect()->prepare("SELECT `id`,`login`,`email`, `id_droits` FROM `utilisateurs`");
    $sth->execute();
    $res = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $res;
  }

  public function getAllInfo()
  {

    $sth = $this->connect()->prepare("SELECT * FROM utilisateurs");
    $sth->execute();
    $res = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $res;
  }

  public function updateAdmin($id, $droits)
  {

    $sth = $this->connect()->prepare("UPDATE utilisateurs SET id_droits = ? WHERE id=$id");
    $sth->execute(array($droits));
    echo "<p>Modification prise en compte</p>";
  }

  public function update($login, $password, $email, $id_utilisateur)
  {
    $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

    $sth2 = $this->connect()->prepare("UPDATE utilisateurs SET login = :login, password = :password, email = :email WHERE utilisateurs.id = :id");

    $sth2->execute(array(
      ":login" => $login,
      ":password" => $hashedPwd,
      ":email" => $email,
      ":id" => $id_utilisateur
    ));

    $_SESSION['login'] = $login;
  }


  public function deleteUser($id)
  {

    $sth = $this->connect()->prepare("UPDATE `utilisateurs` SET `login` = 'Utilisateur supprimé', `password` = 'Meline,Sirine,Alex,Oliv MVP' WHERE id = :id");
    $sth->execute(array(':id' => $id));
    echo "<p>Nous vous confirmons la Suppression de Votre Compte </p>";
  }

  // Modifier les droits d'un utilisateur
  public function setDroit($id_droit, $id_utilisateur)
  {

    $set = $this->connect()->prepare("UPDATE utilisateurs SET id_droits = :id_droit WHERE id = :id ;");

    $res = $set->execute(array(':id_droit' => $id_droit, ':id' => $id_utilisateur));

    header("location:../../admin.php");
  }
}
