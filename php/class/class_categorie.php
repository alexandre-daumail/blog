<?php



class Categorie extends Dbh
{
    // Récupere toutes les info d'une catégorie
    public function getCategories()
    {
        $sth = $this->connect()->prepare("SELECT * FROM `categories` ");
        $sth->execute();
        $res = $sth->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }

    public function getAllInfoById($id)
    {
        $sth = $this->connect()->prepare("SELECT * FROM `categories` WHERE `id` = :id");

        $sth->execute(array(':id' => $id));

        $categorie = $sth->fetchAll(PDO::FETCH_ASSOC);

        return $categorie;
    }

    public function getid($nom)
    {
        $sth=$this->connect()->prepare("SELECT `id` FROM `categories` WHERE nom='$nom'");
        $sth->execute();
        $res=$sth->fetchAll(PDO::FETCH_ASSOC);
        return$res;
    }


    public function getCategoriesByName($name)
    {
        $sth=$this->connect()->prepare("SELECT * FROM `categories` WHERE `nom` = '$name'");
        $sth->execute();
        $res=$sth->fetch();
        return $res;
    }

    public function updateAdmin($nom,$get)
    {
        $sth=$this->connect()->prepare("UPDATE `categories` SET `nom` =? WHERE `id` = $get ");
        $sth->execute(array($nom));
        echo"<p> Votre Catégorie a bien été modifié</p>";
    }

    public function createCategories($nom)
    {
        $sth=$this->connect()->prepare("INSERT INTO `categories`(`nom`) VALUES (?)");
        $sth->execute(array($nom));
        echo "<p>Nouvelle Catégorie bien enregistrer/p>";
    }

    // Supprimer la catégorie sélectionnée
    public function deleteCategorie($id_categorie)
    {
        $sth=$this->connect()->prepare("DELETE FROM `categories` WHERE `categories`.`id` = :id");
        $sth->execute(array(':id' => $id_categorie));
    }


    
}