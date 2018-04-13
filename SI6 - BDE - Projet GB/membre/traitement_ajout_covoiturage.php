	<?php
			
			include("../include/_inc_parametres.php");
            include("../include/_inc_connexion.php");
            
			if ( empty ($_POST ["villedepart"]) == true) $ville_depart = ""; else $ville_depart = $_POST ["villedepart"];
			if ( empty ($_POST ["pointdepart"]) == true) $point_depart = ""; else $point_depart = $_POST ["pointdepart"];
			if ( empty ($_POST ["datedepart"]) == true) $date_depart = ""; else $date_depart = $_POST ["datedepart"];
			if ( empty ($_POST ["heuredepart"]) == true) $heure_depart = ""; else $heure_depart = $_POST ["heuredepart"];
			
			if ( empty ($_POST ["villearrivee"]) == true) $ville_arrivee = ""; else $ville_arrivee = $_POST ["villearrivee"];
			if ( empty ($_POST ["pointarrivee"]) == true) $point_arrivee = ""; else $point_arrivee = $_POST ["pointarrivee"];
			if ( empty ($_POST ["datearrivee"]) == true) $date_arrivee = ""; else $date_arrivee = $_POST ["datearrivee"];
			if ( empty ($_POST ["heurearrivee"]) == true) $heure_arrivee = ""; else $heure_arrivee = $_POST ["heurearrivee"];
			
			if ( empty ($_POST ["typevoiture"]) == true) $type_voiture = ""; else $type_voiture = $_POST ["typevoiture"];
			if ( empty ($_POST ["couleurvoiture"]) == true) $couleur_voiture = ""; else $couleur_voiture = $_POST ["couleurvoiture"];
			if ( empty ($_POST ["nbplaces"]) == true) $nb_places = ""; else $nb_places = $_POST ["nbplaces"];
			if ( empty ($_POST ["placesbagages"]) == true) $places_bagages = ""; else $places_bagages = $_POST ["placesbagages"];
			
			if ( empty ($_POST ["prix"]) == true) $prix = ""; else $prix = $_POST ["prix"];
			if ( empty ($_POST ["description"]) == true) $description = ""; else $description = $_POST ["description"];
			$num_membre = $_POST["numMembre"];
			echo("INSERT INTO `covoiturage`(INSERT INTO `covoiturage`(`numMembre`,`dateDepot`,`prix`, `description`, `villeDepart`, `villeArrive`, `pointDepart`, `pointArrive`, `heureDepart`, `heureArrive`, `jourDepart`, `jourArrive`, `nbPlaces`, `placeBagage`, `voiture`, `couleur`) 
									VALUES ($num_membre,NOW(),$prix,$description,$ville_depart,$ville_arrivee,$point_depart,$point_arrivee,$heure_depart,$heure_arrivee,$date_depart,$date_arrivee,$nb_places,$places_bagages,$type_voiture,$couleur_voiture)");
	
			$req = $cnx->prepare("INSERT INTO `covoiturage`(`numMembre`,`dateDepot`,`prix`, `description`, `villeDepart`, `villeArrive`, `pointDepart`, `pointArrive`, `heureDepart`, `heureArrive`, `jourDepart`, `jourArrive`, `nbPlaces`, `placeBagage`, `voiture`, `couleur`) 
									VALUES ($num_membre,'DATE(NOW())','$prix','$description','$ville_depart','$ville_arrivee','$point_depart','$point_arrivee','$heure_depart','$heure_arrivee','$date_depart','$date_arrivee',$nb_places,$places_bagages,'$type_voiture','$couleur_voiture')");
			$req -> execute ();
	?>