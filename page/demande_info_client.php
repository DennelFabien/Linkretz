<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width, initial-scale-1.0">
    <meta name="description" content="Site de l'agence Linkretz">
    <link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/style_formulaire.css">
	<title>Site de l'agence Linkretz - Nous contacter</title>
</head>
<?php
		include $_SERVER['DOCUMENT_ROOT'].'/include/header.html';
	?>	
    <?php include $_SERVER['DOCUMENT_ROOT'].'/include/menu_client.html'; ?>
    
    <section class="comm">
		<h2>Demande d'information</h2>
		<div class="sec">
        <form action="demande_info_ajout.php" method="post">
            <label for="nom">Nom : </label>
            <input type="text" name="nom" id="nom" required />
            
            <label for="email">E-mail : </label>
            <input type ="mail" name="email" id="email" required />

            <label for="tel">Téléphone : </label>
            <input type="tel" name="teleph" id="teleph" />
            <br><br>

            <label for="date_decouverte">Depuis-quand nous connaissez-vous ? : </label> 
            <input type="date" name="date_decouverte" id="date_dec" />
            <br><br>

            <label for="rencontre">Souhaitez-vous nous rencontrer ? : </label> 
            oui <input type="radio" name="rencontre" id="rencOui" checked value="O"/>
            non <input type="radio" name="rencontre" id="rencNon" value='N' />
            <br>

            <label for="origine">Comment avez-vous découvert notre site ? </label> 
            <select name="origine" id="orig">
                <option value="1" selected>En surfant sur internet</option>
                <option value="2">Par un ami</option>
                <option value="3">Par un autre site</option>
                <option value="4">Par hasard</option>
                <option value="5">autrement</option>
            </select>
            <br><br>

            <label for="loisir">Quels sont vos loisirs ? </label> 
            <select name="loisir[]" id="loisir" multiple>
                <option value="101" selected>cyclisme</option>
                <option value="102">alpinisme</option>
                <option value="103">équitation</option>
                <option value="104">sports de combat</option>
                <option value="105">lecture</option>
            </select>
            <br><br>

            <label for="checkbox">Je souhaite obtenir </label><br/>
            <input type="checkbox" name="newsletter" id="newsletter" value = "new" checked /> recevoir la newsletter de Linkretz <br>

            <input type="checkbox" name="appel" id="appel" value = "app" /> être rappelé(e) <br>

            <input type="checkbox" name="rdb" id="rdv" value = "rdv" /> obtenir un rendez-vous <br>
            <br><br>

            <label for="loisir">Vos remarques : </label><br>
            <textarea name="remarque" id="remarque" cols="50" rows="3"></textarea>
            <br>

            <input type ="submit" name="valider" id="valider" value= "Envoyer" />
        </form>  	
	</section>
	<?php
		include $_SERVER['DOCUMENT_ROOT'].'/include/footer.html';
	?>	
</body>
</html>