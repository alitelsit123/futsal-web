<?php
include "appConfig/conn.php";
function antiinjection($conn, $data){
  $filter_sql = mysqli_real_escape_string($conn, stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter_sql;
}

$username 	= antiinjection($conn, $_POST['txtUsername']);
$pass     	= antiinjection($conn, $_POST['txtPassword']);


$waktu = time()+25200;
$expired=60;

$query=mysqli_query($conn, "SELECT * FROM tmember WHERE usermember='$username' OR emailMember='$username' 
				 AND passmember='$pass' AND aktif='Y'");
$in=mysqli_num_rows($query);
$r=mysqli_fetch_array($query);

if ($in > 0){
  session_start();
  
  $_SESSION['kdMember']   	  = $r['kdMember'];
  $_SESSION['username']    		  = $r['usermember'];
  $_SESSION['email']         = $r['emailMember'];
  $_SESSION['password']      	  = $r['passmember'];
  $_SESSION['nmLengkap']  		  = $r['nmLengkap'];
  $_SESSION['foto']      		  = $r['fotoMember'];
	  
  
  $_SESSION['timeout']		= $waktu+$expired;
  $waktulog= time();												
										
  header('location:frame.php?p=home');
}
else{
    echo "<script type='text/javascript'>
  window.alert('Username Atau Password Anda Salah'); 
  window.location =('index.php')</script>";
}
?>
