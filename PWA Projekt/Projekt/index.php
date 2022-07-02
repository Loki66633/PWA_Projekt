<?php 
    $_SESSION["loggedin"] = FALSE;
    $_SESSION["username"] = "";
    $_SESSION["admin"] = 0;
    ?>
<!DOCTYPE html>
<html>

<head> 
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="shortcut icon" type="image/jpg" href="favicon.ico"/>
   <title>Najnovije vijesti iz svijeta</title>
</head>


<?php include 'connect.php';?>

<body>
<header>
   <?php include 'navigacija.php';?>
</header>

<main class="container-fluid wrapper">
<br>
<?php 
        if(isset($_SESSION["username"])){
            echo"<h4>Dobrodošli, ".$_SESSION["username"]."</h4>";
        }
        ?>
   <h1 id="glavni">Welcome to BBC.com</h1>
   <?php echo "<h3 id='datum'> ".date("l, j F")."</h3>"; ?>

   <div class="empty"></div>

   <h4 id="news_naslov">News</h4>
   <hr>
   <section class="news row" >
      
   <?php
        $query = "SELECT * FROM clanci WHERE kategorija='news' AND arhiva = 0 LIMIT 3";
        $result = mysqli_query($dbc,$query) or die (mysqli_error($dbc));
        while($row = mysqli_fetch_array($result)){
            $slika = $row['slika'];
            $id = $row['id'];
            $poveznica = "'clanak.php?id=$id'";
            echo '<article class="col-xl-4 col-lg-12" onclick="location.href='.$poveznica.'">';
            echo '<img src="slike/'.$slika.'" class="slike">';
            echo  "<h3 class='clanak_kratki'> ".$row['naslov'] ."</h3>";
            echo  "<p>" .$row['sazetak']. "</p>";
            echo "</article>";
        }
        ?>

   </section>

   <div class="empty"></div>
   <h4 id="sport_naslov">Sport</h4>
   <hr>
   <section class="sport row">

     <?php
        $query = "SELECT * FROM clanci WHERE kategorija='sport' AND arhiva = 0 LIMIT 3";
        $result = mysqli_query($dbc,$query) or die (mysqli_error($dbc));
        while($row = mysqli_fetch_array($result)){
            $slika = $row['slika'];
            $id = $row['id'];
            $poveznica = "'clanak.php?id=$id'";
            echo '<article  class="col-xl-4 col-lg-12" onclick="location.href='.$poveznica.'">';
            echo '<img src="slike/'.$slika.'" class="slike">';
            echo  "<h3 class='clanak_kratki'> ".$row['naslov'] ."</h3>";
            echo  "<p>" .$row['sazetak']. "</p>";
            echo "</article>";
        }
        ?>

</main>
<div class="empty"></div>
<?php include 'footer.php';?>

</body>
</html>
<?php mysqli_close($dbc);?>