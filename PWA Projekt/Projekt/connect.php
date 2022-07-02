<?php
header('Content-Type: text/html; charset=utf-8');
$servername = "localhost";
$username123 = "root";
$password123 = "";
$basename = "projekt";

$dbc = mysqli_connect($servername, $username123, $password123, $basename) or die('Error
connecting to MySQL server.'.mysqli_error());

mysqli_set_charset($dbc, "utf8");

?>