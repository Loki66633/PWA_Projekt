<!DOCTYPE html>
<html>

<head> 
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
   <link rel="shortcut icon" type="image/jpg" href="favicon.ico"/>
   <title>Vijesti</title>
</head>

<body>
<header>
   <?php include 'navigacija.php';?>
</header>
<?php include 'connect.php';?>

<main class="container-fluid wrapper">
    <br>
    <section class="row">
        <?php
        $kategorija = $_GET["kategorija"];
        $query = "SELECT * FROM clanci WHERE kategorija='$kategorija' AND arhiva = 0";
        $result = mysqli_query($dbc,$query) or die (mysqli_error($dbc));
        while($row = mysqli_fetch_array($result)){
            $slika = $row['slika'];
            $id = $row['id'];
            $poveznica = "'clanak.php?id=$id'";
            echo '<article class="col-xl-4 col-lg-12" onclick="location.href='.$poveznica.'">';
            echo '<img src="slike/'.$slika.'" class="slike">';
            echo  "<h3> ".$row['naslov'] ."</h3>";
            echo  "<p>" .$row['sazetak']. "</p>";
            echo "</article>";
        }
        ?>
    </section>

</main>

<div class="empty"></div>
<?php include 'footer.php';?>

</body>

</html>
<?php mysqli_close($dbc);?>