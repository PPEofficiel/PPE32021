<?php
// inclusion du header dans la page 
require_once("../header.php");
// inclusion du footer dans la page 
//require_once("../footer.php");
require("nav_admin.php");
//condition de session:
require("redirection_admin.php");
 // Fonction faille de sécurité
 function securite($data){
    $data=strip_tags($data);
    $data=trim($data);
    $data=htmlspecialchars($data);
    return $data;
    }
   
    require_once("../bdd/connect.php"); // connexion à la BDD
    // Est-ce que l'id existe et n'est pas vide dans l'URL
if(isset($_GET['idcandidat']) && !empty($_GET['idcandidat']))
{
    $id=$_GET['idcandidat'];
}

// on vérifie que les données du formulaire sont présentes
if(isset($_POST))
{
    if(isset($_POST['nom']) && !empty($_POST['nom'])
    && isset($_POST['prenom']) && !empty($_POST['prenom'])
    && isset($_POST['pass']) && !empty($_POST['pass'])
    && isset($_POST['pass2']) && !empty($_POST['pass2'])
    && isset($_POST['email']) && !empty($_POST['email'])
    && isset($_POST['groupe']) && !empty($_POST['groupe']))
{
	
    //On récupère les données du formulaire en les incorporant dans une variable 
    $nom = securite($_POST['nom']);
    $prenom = securite($_POST['prenom']);  
    $pass = securite($_POST['pass']);
    $pass2 = securite($_POST['pass2']);
    //On hache le mot de passe retaper par le nouvel utilisateur
    $pass_hash = password_hash($pass, PASSWORD_DEFAULT);
    $pass_hash2 = password_hash($pass2, PASSWORD_DEFAULT);   
    $email= securite($_POST['email']); 
    $groupe = securite($_POST['groupe']);
    if ((password_verify($pass, $pass_hash)))
    {
        echo "Mot de passe correct";
    }
    else
    {
        echo "Mot de passe incorrect";
    }
            
        // cette requête permet de preparer et de modifier l'utilisateur depuis la BD
         $resultat1 ="UPDATE candidat SET nom_dusage ='$nom', prenom = '$prenom', mot_de_passe ='$pass_hash',
                        email ='$email',id_groupe = $groupe
                        WHERE idcandidat=$id;";
		var_dump($resultat1);
						
		$query1 = $db->prepare($resultat1);
        // On execute la requête
        $query1->execute();

        //Creation d'une nouvelle session
        $_SESSION['message'] = "Membre modifier";

         //fermeture de la connexion
         require_once("../bdd/close.php"); // connexion à la BDD
        // Me creer l'utilisateur et me redirige sur cette page
        header('Location: accueil_admin.php');
           exit();

        // Si les données ne sont pas présentes
    }	
    }
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Formulaire de modification</title>
</head>
<body>
            <h2>Page Admin de <?= $prenom ?></h2>
                <h2>Formulaire de Modification:</h2>
   
                    <p><a href="index_admin.php">Retour a la page admin</a></p>
            <form method="post">
                    <div class="form-group">
                        <label for="nom"> Nom du candidat</label>
                    <input type="text" id="nom" name="nom"
                        class="form-control">
                </div>
                <div class="form-group">
                <label for="prenom"> Prenom du candidat</label>
                <input type="text" id="prenom" name="prenom"
	                    class="form-control">
                </div>
                <div class="form-group">
                    <label for="pass"> Mot de passe </label>
                <input type="password" id="pass" name="pass"
                        class="form-control">
                </div>
                <div class="form-group">
                    <label for="pass2"> Retaper le mot de passe </label>
                <input type="password" id="pass2" name="pass2"
                        class="form-control">
                </div>
                <div class="form-group">
                    <label for="email"> Email du candidat </label>
                <input type="email" id="email" name="email"
                        class="form-control">
                </div>

	            <h4>Droit d'accès:</h4>
                <div>
	                <label for="groupe">Candidat</label>
                    <input type="radio" id="candidat" name="groupe" value="3" >
                </div>
                <div>
                    <input type="submit" name="modifier" value="Modifier">
                </div>
            </form>	
</body>
</html>
