<style>
	.table {
		font-family: Montserrat, sans-serif;
		align-items: center
	}
</style>
<link rel="stylesheet" type="text/css" href="index.css">
<?php
include 'connect.php';
include 'head2.php';

$email = $_POST['email'];
$password = $_POST['password'];
$sql_admin = "Select * from admin where email = '$email' and password='$password' ";
$result_admin = mysqli_query($connect, $sql_admin);
if (mysqli_num_rows($result_admin) <= 0) {
	echo "<center><h1><b>Something went wrong please sign in again<b> </h1></center><br><br>";
	echo '<center><table><tr><td><A href="adminindex.php"><button style="background-color:black; border-color:black"><span style="color:white">Sign In ! &nbsp&nbspAgain</span></button></a></td></tr></table></center>';
} else {

	header("location:admin.php");
	$row_admin = mysqli_fetch_array($result_admin);
	session_start();
	$_SESSION['email'] = $email;
	$_SESSION['name'] = $row_admin['Name'];
	$_SESSION['userid'] = $row_admin['UserID'];
	$_SESSION['log'] = '1';
}
?>