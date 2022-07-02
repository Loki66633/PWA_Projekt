<?php include 'connect.php';?>
<html>
<head> 
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
   <script type="text/javascript" src="jquery-1.11.0.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
   <script src="validacijaRegistracije.js"></script>
   <link rel="shortcut icon" type="image/jpg" href="favicon.ico"/>
   <title>Registracija</title>
</head>


<header>
    <?php include 'navigacija.php';?>
</header>
<div class="container">
<div class="card bg-light">
<section class="card-body mx-auto">
	<h4 class="card-title mt-3 text-center">Napravite račun</h4>
	<p class="text-center">Registrirajte se</p>
	<form method="POST" name="validacija">
    <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fas fa-user"></i> </span>
		 </div>
        <input name="user" id="user" class="form-control" placeholder="Korisničko ime" type="text" >
    </div> 
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="ime" id="ime" class="form-control" placeholder="Ime" type="text" >
    </div> 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="prezime" id="prezime" class="form-control" placeholder="Prezime" type="text" >
    </div> 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password1" id="password1" class="form-control" placeholder="Unesite lozinku" type="password" >
    </div> 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password2" id="password2" class="form-control" placeholder="Ponovite lozinku" type="password" >
    </div>                                     
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Napravite račun  </button>
    </div> 
    <p class="text-center">Imate račun? <a href="prijava.php">Prijavite se</a> </p>                                                                 
</form>
</section>
</div> 

</div> 

</html>
<?php
if(isset($_POST["user"]) && isset($_POST["ime"]) && isset($_POST["prezime"]) && isset($_POST["password1"]) && isset($_POST["password2"])){
    $user=$_POST["user"];
    $ime=$_POST["ime"];
    $prezime=$_POST["prezime"];
    $password1=$_POST["password1"];
    $password2=$_POST["password2"];
    
    $hashed_password = password_hash($password1, CRYPT_BLOWFISH);
    $postoji=FALSE;

    if ($stmt1 = mysqli_prepare($dbc, "SELECT user FROM korisnici WHERE user=?")) {

        
        mysqli_stmt_bind_param($stmt1,'s',$user);
        mysqli_stmt_execute($stmt1);

        mysqli_stmt_bind_result($stmt1, $a);
    
        while ($stmt1->fetch()) {
        }

        if (mysqli_stmt_num_rows($stmt1)>0 ) {
            $postoji = TRUE;
            echo "<script type='text/javascript'> alert('Korisnik sa istim korisničkim imenom već postoji!'); </script>";
        }

        mysqli_stmt_close($stmt1);
    }

    if($postoji!=TRUE){
        $query = "INSERT INTO korisnici(user,ime,prezime,pass) values (?,?,?,?)";

        $stmt = mysqli_stmt_init($dbc);

        if (mysqli_stmt_prepare($stmt, $query)){

            mysqli_stmt_bind_param($stmt,'ssss',$user,$ime,$prezime,$hashed_password);

            mysqli_stmt_execute($stmt);
        }
        
        mysqli_close($dbc);
        echo "<script type='text/javascript'> alert('Uspješna registracija!'); </script>";
    }

}
?>