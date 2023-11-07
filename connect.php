<?php
$hostname  = 'localhost:8081' || 'localhost:8080';
$username = 'php_docker';
$password = 'password';
$dbname = 'ticket-booking';
$connect =  mysqli_connect($hostname, $username, $password, $dbname) or die("Error Connecting");
mysqli_set_charset($connect, 'UTF8');
