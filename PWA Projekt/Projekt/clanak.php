<?php include 'connect.php';?>
<head> 
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
   <link rel="shortcut icon" type="image/jpg" href="favicon.ico"/>
</head>
<body>
<header>
   <?php include 'navigacija.php';?>
</header>
<div class="clanak_naslov_wrapper">
   <div class="clanak_kategorija">
      <?php 
      $id = $_GET['id'];
      $query = "SELECT kategorija FROM clanci WHERE id=$id";
      $result = mysqli_query($dbc,$query) or die (mysqli_error($dbc));
      $row = mysqli_fetch_array($result);
      echo"<h1>".ucfirst($row['kategorija'])."</h1>";
      ?>
   </div>
</div>
<main class="container-fluid wrapper clanak_wrap">

<?php
        $id = $_GET['id'];
        $query = "SELECT * FROM clanci WHERE id=$id";
        $result = mysqli_query($dbc,$query) or die (mysqli_error($dbc));
        while($row = mysqli_fetch_array($result)){
            $slika = $row['slika'];
            $kategorija = $row['kategorija'];
            $objavio = $row['objavio'];
            $datum = $row['datum'];
            echo  "<h2 class='clanak_naslov'> ".$row['naslov'] ."</h2>";
            echo "<h5>Autor: ".$objavio ."<br>Objavljeno: ".$datum." </h5>";
            echo '<img src="slike/'.$slika.'" class="slika_clanak">';
            echo  "<p class='clanak_kratki_sadrzaj'>" .$row['sazetak']. "</p>";
            echo "<pre class='clanak_sadrzaj'>" .$row['tekst']. "</pre>";
            echo "</article>";
        }
        ?>
</main>
<div class="empty"></div>
<?php include 'footer.php';?>
</body>