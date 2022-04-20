<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width, initial-scale-1.0">
	<meta name="description" content="Site de l'agence Linkretz">
	<link rel="stylesheet" href="../css/style.css">
	<title>Site de l'agence Linkretz - Liste des tour-opérateurs</title>
</head>
<body>
    <?php
		include $_SERVER['DOCUMENT_ROOT'].'/include/header.html';
	?>	
    <?php include $_SERVER['DOCUMENT_ROOT'].'/include/menu_client.html'; ?>
	<section class="connexion">
		<h2>Connexion</h2>
		<div class="sec">
			<h3>En cours de construction - Connexion à l'espace administrateur ou salarié</h3>
        </div>
    </section>    
    <section class="lien">
        <div class="sec">    
            <a href="/page/admin/panel_admin.php">Accès au menu de l'administrateur</a>
            <br><a href="/page/admin/panel_employe.php">Accès au menu des salariés</a>
        </div>    
	</section>
	<?php
		include $_SERVER['DOCUMENT_ROOT'].'/include/footer.html';
	?>	
</body>
</html>