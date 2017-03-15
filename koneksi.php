<?php
	$host="localhost";
	$user="root";
	$pass="";
	$dbnm="pweb";
	$conn=mysql_connect($host,$user,$pass);
	if($conn){
		$buka=mysql_select_db($dbnm);
		if(!$buka){
			die("Database Tidak Ditemukan");	
		}
	}else{
		die("Server MySQL Tidak terhubung");
	}
?>