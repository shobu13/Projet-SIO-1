<?php
include("../include/_inc_parametres.php");
include("../include/_inc_connexion.php");
                
$idCovoit=$_POST["covoit"];
echo("idCoivoit=".$idCovoit);
$req = $cnx->prepare("UPDATE `covoiturage` SET `etat`=1 WHERE `numCo`=$idCovoit");
$req->execute();
header('Location:covoiturage.php');
