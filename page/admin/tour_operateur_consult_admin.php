<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width, initial-scale-1.0">
	<meta name="description" content="Site de l'agence Linkretz">
	<link rel="stylesheet" href="../../css/style.css">
	<title>Site de l'agence Linkretz - Gestion des  tour-opérateur</title>
</head>
<body>
<?php include $_SERVER['DOCUMENT_ROOT'].'/include/header.html';?>
    
    <?php include $_SERVER ['DOCUMENT_ROOT'].'/include/menu_admin.html';?>
<section class="empl">
        <h2>Gestion des  tour-opérateur</br></br>
        <a href='tour_operateur_ajout.php'>
            <input type='button' name='AjoutTour' value='Ajouter un tour-opérateur' />
        </a></h2>
        </br>
        <div class="sec">
            
        <?php 
                    include "../../include/connexion_bd.php";
                    try {
                        $lesEnregs=$bdd->query("SELECT nom, libelle FROM tour_operateur JOIN specialite ON id_specialite = specialite.id");
                    }catch (PDOException $e) {
                        die ("Err BDSelect : erreur de lecture table index.php<br/>Message d'erreur :" . $e->getMessage());
                    }
                    if($lesEnregs->rowCount () == 0) {
                        echo ("Aucun tour-operateur n'a été enregistré");
                    } else {
                      		echo '<table>
                               <tr> 
                                	<th> Nom </th>
                                	<th> Specialité </th>
                                    <th> Modifier </th>
                                    <th> Supprimer </th>
							   </tr>
						    ';
                           
                        	foreach ($lesEnregs as $enreg) {
                                    echo "<tr> <td><strong>$enreg->nom</strong></td> 
                                          <td>$enreg->libelle</td> <td><a href='tour_operateur_modif.php'> <input type='button' name='modifTour' value='Modifier'</td> 
                                          <td><a href='tour_operateur_supp.php'> <input type='button' name='suppTour' value='Supprimer'</td> </tr>"; 
                       		}
							echo '</table>';
                    }
                ?>
        
		</div>
</section>

<?php
			include $_SERVER['DOCUMENT_ROOT'].'/include/footer.html';
    ?>
    
</body>
</html>