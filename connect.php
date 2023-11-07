<?php
$hostname  = 'localhost';
$username = 'root';
$password = '';
$dbname = 'ticket-booking';
$connect =  mysqli_connect($hostname, $username, $password, $dbname) or die("Error Connecting");
