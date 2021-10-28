<?php
 
$user_name = "root";
$password = "";
$database = "db_vigor";
$host_name = "localhost"; 
 
$conn = mysqli_connect($host_name, $user_name, $password);
 
mysqli_select_db($conn, $database);
 
 
?>