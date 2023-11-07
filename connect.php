<?php
/* 
$hostname  = 'localhost:8081' || 'localhost:8080' || 'localhost';
$username = 'php_docker' || 'root';
$password = 'password' || '';
$dbname = 'ticket-booking';
 */
$hostname  = 'localhost';
$username = 'root';
$password =  '';
$dbname = 'ticket-booking';
$connect =  mysqli_connect($hostname, $username, $password, $dbname) or die("Error Connecting");
mysqli_set_charset($connect, 'UTF8');
