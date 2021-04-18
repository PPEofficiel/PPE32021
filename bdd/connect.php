<?php
try{
	// Connexion a la base 
	$db = new PDO('mysql:host=localhost;dbname=id16536791_ppe3','id16536791_admin','Ppe_so_ch_mo_2021',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	$db->exec('SET NAMES "UTF8"');
	
} catch (PDOException $e){
	echo 'Erreur : '. $e->getMessage();
	die();
}
?>


