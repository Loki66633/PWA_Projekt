<?php 
include 'connect.php';
?>
<html>
<head> 
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="shortcut icon" type="image/jpg" href="favicon.ico"/>
   <title>Administracija</title>
</head>
<body>
<header>
   <?php 
   include 'navigacija.php';
   ?>
</header>
<?php
    if(!isset($_SESSION["admin"])){
        header("Location:prijava.php");
        exit();
    }
    else if ($_SESSION["admin"]!=1) {
        header("Location:prijava.php");
        exit();
    }
?>
<main class="container-fluid wrapper">
   <br>
    <section class="row">
       
        <?php
        $query = "SELECT * FROM clanci";
        $result = mysqli_query($dbc,$query) or die (mysqli_error($dbc));
        while($row = mysqli_fetch_array($result)){
            $slika = $row['slika'];
            $id = $row['id'];
            $poveznica = "'clanak.php?id=$id'";
            echo '<div class="col-lg-4 col-md-12"> ';
            echo '<article onclick="location.href='.$poveznica.'">';
            echo '<img src="slike/'.$slika.'" class="slike">';
            echo  "<h3> ".$row['naslov'] ."</h3>";
            echo  "<p>" .$row['sazetak']. "</p>";
            echo "</article>";
            echo "<form method='POST'>";
            echo "<button type='submit' class='btn btn-danger' name='obrisi' value='".$id."'>Obriši</button>";
            echo "<a href='update.php?id=".$id."'><button type='button' class='btn btn-info' name='uredi' value='".$id."'>Uredi</button></a>";
            echo "</form>";
            echo"</div>";
        }
        ?>
    </section>
</main>
<div class="empty"></div>
<?php include 'footer.php';?>
</body>
</html>
<?php
    if(isset($_POST['obrisi'])){
        $idObrisati = $_POST['obrisi'];
        
        $query = "DELETE FROM clanci WHERE id=$idObrisati";
        $result = mysqli_query($dbc,$query) or die (mysqli_error($dbc));
        echo "<meta http-equiv='refresh' content='0'>";
    }
?>