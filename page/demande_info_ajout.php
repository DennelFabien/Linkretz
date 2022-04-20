<?php
    include "../include/connexion_bd.php";
    var_dump($_POST);
    try {
        // on prépare la requête INSERT dans la table client
        $req = $bdd->prepare("insert into demande_info values(0, :par_nom, :par_email, :par_telephone, :par_date, :par_rencontre, :par_remarque, :par_origine)");
        // on affecte une valeur à chacun des paramètres déclarés dans la requête INSERT
        $req->bindValue(':par_nom', $_POST['nom'], PDO::PARAM_STR);
        $req->bindValue(':par_email', $_POST['email'], PDO::PARAM_STR);
        $req->bindValue(':par_telephone', $_POST['teleph'], PDO::PARAM_STR);
        $req->bindValue(':par_date', $_POST['date_decouverte'], PDO::PARAM_STR);
        $req->bindValue(':par_rencontre', $_POST['rencontre'], PDO::PARAM_STR);
        $req->bindValue(':par_remarque', $_POST['remarque'], PDO::PARAM_STR);
        $req->bindValue(':par_origine', $_POST['origine'], PDO::PARAM_INT);
        // on demande l'exécution de la requête INSERT
        $req->execute();
        $id_demande = $bdd->lastInsertId();

        echo "<br>valeurs de la liste à choix multiple : ";
        foreach($_POST["loisir"] as $val_sel){
            echo $id_demande." ".$val_sel;
            $req = $bdd->prepare("insert into loisir values($id_demande, $val_sel)");
            $req->execute();    
        }
     
        
        // on vérifie que l’on a bien ajouté un client
        if ($req->rowCount() == 0) {
              echo("Erreur grave : le client n’a pas été enregistré.") ;
        } else {
             echo("Le client a été enregistré.") ;
        }												
    } catch(PDOException $err){
        die("BDIns01: erreur lors de l’insert dans la table Demande_info – script demande_info_ajout.php<br>Erreur :" . $err->getMessage());
    }
?>    

 
    