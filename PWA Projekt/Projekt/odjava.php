<?php
session_start();
unset($_SESSION["loggedin"]);
unset($_SESSION["username"]);
unset($_SESSION["admin"]);
header("Location:prijava.php");
?>