<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width, initial-scale-1.0">
	<meta name="description" content="Site de l'agence Linkretz">
	<link rel="stylesheet" href="../css/style.css">
	<title>Site de l'agence Linkretz - Liste des commerciaux</title>
</head>
<body>
	<?php
			include $_SERVER['DOCUMENT_ROOT'].'/include/header.html';
	?>
    
    <?php include $_SERVER ['DOCUMENT_ROOT'].'/include/menu_client.html';?>
    
	<section class="bleu">
		<h2>Commerciaux à contacter</h2>
		<div class="sec">
        <?php 
                    include "../include/connexion_bd.php";
                    try {
                        $lesEnregs=$bdd->query("SELECT nom, prenom, telephone FROM employe WHERE idfonction=3");
                    }catch (PDOException $e) {
                        die ("Err BDSelect : erreur de lecture table index.php<br/>Message d'erreur :" . $e->getMessage());
                    }
                    if($lesEnregs->rowCount () == 0) {
                        echo ("Aucun employe n'a été enregistré");
                    } else {
                      		echo '<table>
                               <tr> 
                                	<th> Nom </th>
                                	<th> Prénom </th>
                                	<th> Téléphone </th>
							   </tr>
						    ';
                           
                        	foreach ($lesEnregs as $enreg) {
                           	 	echo "<tr> <td><strong>$enreg->nom</strong></td> <td>$enreg->prenom<br></td><td>$enreg->telephone<br><br></td></tr>"; 
                       		}
							echo '</table>';
                    }
                ?>
        
		</div>
	</section>
	<footer>
	<?php
			include $_SERVER['DOCUMENT_ROOT'].'/include/footer.html';
	?>
	</footer>
</body>
</html>