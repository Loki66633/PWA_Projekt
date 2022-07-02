<?php session_start();
$ulogiran =FALSE;
if(isset($_SESSION["loggedin"])){
  $ulogiran = $_SESSION["loggedin"];
}
if($ulogiran==FALSE){
  echo'
  <nav>
      <ul>
        <li><a id = "logo" href="index.php" class="efekt"><img src="logo.png" height=45px></a></li>
        <li><a href="index.php" class="efekt">Home</a></li>
        <li><a href="kategorija.php?kategorija=news" class="efekt">News</a></li>
        <li><a href="kategorija.php?kategorija=sport" class="efekt">Sport</a></li>
        <li><a href="prijava.php" class="efekt">Prijava</a></li>
        <li><a href="registracija.php" class="efekt">Registracija</a></li>
      </ul>
    </nav>';
  }
  else if ($_SESSION["admin"]==1){
    echo'
    <nav>
        <ul>
          <li><a id = "logo" href="index.php" class="efekt"><img src="logo.png" height=45px></a></li>
          <li><a href="index.php" class="efekt">Home</a></li>
          <li><a href="kategorija.php?kategorija=news" class="efekt">News</a></li>
          <li><a href="kategorija.php?kategorija=sport" class="efekt">Sport</a></li>
          <li><a href="unos.php" class="efekt">Unos</a></li>
          <li><a href="administracija.php" class="efekt" >Administracija</a></li>
          <li><a href="odjava.php" class="efekt" >Odjava</a></li>
        </ul>
      </nav>';
  }
  else{
    echo'
    <nav>
        <ul>
          <li><a id = "logo" href="index.php" class="efekt"><img src="logo.png" height=45px></a></li>
          <li><a href="index.php" class="efekt">Home</a></li>
          <li><a href="kategorija.php?kategorija=news" class="efekt">News</a></li>
          <li><a href="kategorija.php?kategorija=sport" class="efekt">Sport</a></li>
          <li><a href="unos.php" class="efekt">Unos</a></li>
          <li><a href="odjava.php" class="efekt" >Odjava</a></li>
        </ul>
      </nav>';
  }
?>