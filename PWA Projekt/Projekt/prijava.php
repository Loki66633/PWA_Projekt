
<html>

<head> 
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <link rel="shortcut icon" type="image/jpg" href="favicon.ico"/>
   <title>Prijava</title>
</head>


<?php include 'connect.php';?>

<body>
    <header>
    <?php include 'navigacija.php';?>
    </header>

    <main class="container-fluid wrapper">
    <div class="card">
    <section class="card-body">
        <h4 class="card-title text-center mb-4 mt-1">Prijava</h4>
        <hr>
        <p class="text-success text-center">User i pass za admina:<br>User:Admin<br>Pass:admin</p>
        <form method="post">
        <div class="form-group">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fa fa-user"></i> </span>
            </div>
            <input name="user" class="form-control" placeholder="Korisničko ime" type="text" required>
        </div> 
        </div> 
        <div class="form-group">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
            </div>
            <input name="pass" class="form-control" placeholder="******" type="password" required>
        </div> 
        </div> 
        <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Prijava </button>
        </div> 
        <p class="text-center">Nemate račun?<a href="registracija.php" class=""> Registrijate se!</a></p>
        </form>
    </section>
    </div>
    </main>
</body>
</html>
<?php
    if(isset($_POST["user"]) && isset($_POST["pass"])){
        $user=$_POST["user"];
        $pass=$_POST["pass"];


        if ($stmt = mysqli_prepare($dbc, "SELECT user, pass ,admin FROM korisnici WHERE user=?")) {

        
            mysqli_stmt_bind_param($stmt,'s',$user);
            mysqli_stmt_execute($stmt);

            mysqli_stmt_bind_result($stmt, $a,$b,$c);
        
            while ($stmt->fetch()) {
            }

            if (mysqli_stmt_num_rows($stmt)>0 && password_verify($pass,$b)) {
                $_SESSION["loggedin"] = TRUE;
                $_SESSION["username"] = $user;
                $_SESSION["admin"] = $c;

                header('Location: index.php');
            }

            mysqli_stmt_close($stmt);
        }
    }

?>