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
			
			<form action="traitement_ajout_covoiturage.php" method="post">
			<fieldset> 
			<legend>Informations sur le trajet</legend> 
			<table>
				<tr>
					<td>Ville départ : <input type="text" name="villedepart"  class="form-control" placeholder="Ville de départ" required> </td>
					<td>Point départ : <input type="text" name="pointdepart"  class="form-control" placeholder="Point de départ" required> </td>
					<td>Jour départ : <input type="date" name="datedepart"  class="form-control" placeholder="Date de départ" required> </td>
					<td>Heure départ : <input type="time" name="heuredepart"  class="form-control" placeholder="Heure de départ" required> </td>					
				</tr>
				<tr>										
					<td>Ville arrivée : <input type="text" name="villearrivee"  class="form-control" placeholder="Ville d'arrivée" required> </td>
					<td>Point arrivée : <input type="text" name="pointarrivee"  class="form-control" placeholder="Point d'arrivée" required> </td>
					<td>Jour arrivée : <input type="date" name="datearrivee"  class="form-control" placeholder="Date de départ" required> </td>
					<td>Heure arrivée : <input type="time" name="heurearrivee"  class="form-control" placeholder="Heure de départ" required> </td>
				</tr>				
			</table>
			</fieldset> 
			
			<fieldset> 
			<legend>Informations sur le véhicule</legend> 
			<table>
				<tr>
					<td>Type de voiture : <input type="text" name="typevoiture"  class="form-control" placeholder="Type/Marque" required> </td>
					<td>Couleur voiture : <input type="text" name="couleurvoiture"  class="form-control" placeholder="Couleur de la voiture" required> </td>
				</tr>
				<tr>
					<td>Nombre de places : <input type="text" name="nbplaces"  class="form-control" placeholder="Nombre de places" required> </td>
					<td>Place bagages: <select type="text" name="placesbagages"  class="form-control" placeholder="Nombre de places" required>
											<option value="1">Petit</option>
											<option value="2">Moyen</option> 
											<option value="3">Grand</option> 
										</select>
					</td>										
				</tr>								
			</table>
			</fieldset> 
			<fieldset> 
			<legend>Prix et informations complémentaires</legend> 
			<table>
				<tr>
					<td>Prix : <input type="text" name="prix"  class="form-control" placeholder="Prix du covoiturage" required> </td>
					<td>Description : <textarea rows="4" cols="30" name="description" class="form-control" placeholder="Informations complémentaires"></textarea></td>
				</tr>
				
				<tr>
					<td><input class="btn btn-primary" type="submit" name="valider" value="Valider">
						<input class="btn btn-danger" type="reset" name="anuler" value="Annuler" onclick="window.location.href='covoiturage.php'"></td>
				</tr>
			</table>
			</fieldset>
			<input type='hidden' name='numMembre' value='<?php echo($_SESSION['numMembre']) ?>'>
			</form>
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