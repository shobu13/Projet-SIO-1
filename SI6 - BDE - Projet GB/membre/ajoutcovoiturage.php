<html>
<head>
		<!-- titre de la page -->
		<title>BDE DLS Covoiturages</title>
		<!-- type d'encodage de la page -->
		<meta charset="utf-8" />
		<!-- taille et échelle de la page -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0 ">
		<!-- liens avec les fichiers css de bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
		<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"> 
		<link rel="stylesheet" href="../styles/style.css">
		<!-- par défaut les tableaux occupent 100% de la page; le width fixe la largeur à 600 pixels -->
		<style> .boite {border: 2px solid #dea} </style>
	</head>
<body>
<div id=conteneur class="boite">
	<div id=contenu>
		<?php 
		// affichage de la liste des covoiturages 
			include("../include/_inc_parametres.php"); 
			include("../include/_inc_connexion.php");
			include("../include/dateFrancais.php");
			include('../include/head.php');
			include('../include/menu.php');
			
		//	on récupère toutes les lignes 
			$resultat = $cnx->query("select * FROM covoiturage ORDER BY dateDepot DESC;");
			
		//le résultat est récupéré sous forme d'objet
			$resultat->setFetchMode(PDO::FETCH_OBJ);
		?>
			<h2>Ajout d'un covoiturage</h2>
			
				
				
			<table class="table table-striped">
			
			<thead>
			
			</thead>
			
			<fieldset> 
			<legend>Informations</legend> 
			<table>
				<tr>
					<td></td>
					<td></td>										
					<td><button class="btn btn-primary" name="ajouter" onclick="window.location.href='covoiturage.php'">Retour liste</button></td>
				</tr>
				<tr>
					<td>Nom : <input type="text" name="nom"  class="form-control" placeholder="Votre nom de famille"> </td>
					<td> Prénom : <input type="text" name="nom"  class="form-control" placeholder="Votre prénom"> </td>
				</tr>
				<tr>
					<td>Nombre de places : <input type="text" name="nbplaces"  class="form-control" placeholder="Nombre de places"> </td>
					<td>Prix : <input type="text" name="prix"  class="form-control" placeholder="Prix du covoiturage"> </td>
				</tr>
				<tr>
					<td>Ville départ : <input type="text" name="villedepart"  class="form-control" placeholder="Ville départ"> </td>
					<td>Point départ : <input type="text" name="nom"  class="form-control" placeholder="Point départ"> </td>
					
				</tr>
				<tr>										
					<td>Ville arrivée : <input type="text" name="villearrivee"  class="form-control" placeholder="Ville arrivée"> </td>
					<td>Point arrivée : <input type="text" name="nom"  class="form-control" placeholder="Point arrivée"> </td>
				</tr>	
				<tr>
					<td><input class="btn btn-primary" type="submit" name="valider" value="Valider"></td>
					<td><input class="btn btn-primary" type="reset" name="anuler" value="Annuler" onclick="window.location.href='covoiturage.php'"></td>
				</tr>
			</table>
			</fieldset> 
			
			</table>

			
	</div>
	<?php include('../include/footer.php'); ?>
</div>

<!-- Obligatoirement avant la balise de fermeture de l'élément body  -->
	<!-- Intégration de la libraire jQuery -->
	<script src="bootstrap/js/jquery.js"></script>
	<!-- Intégration de la libraire de composants du Bootstrap -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>