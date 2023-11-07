<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '') {
	header("location:sindex.php");
}
include 'header.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>My Profile</title>
</head>

<body>
	<h2>
		<center><img src="https://img.icons8.com/dusk/50/000000/checked-user-male.png" /><b>USER PROFILE DETAILS</center></b>
	</h2>

	</script>
	<br>
	<!-- <table class="table table-striped">
		<tr>
			<th>Name</th>
			<td><?php echo $_SESSION['name'] ?></td>
		</tr>

		<tr>
			<th>Email</th>
			<td><?php echo $_SESSION['email'] ?></td>
		</tr>



		<tr>
			<th>User Id</th>
			<td><?php echo $_SESSION['userid'] ?></td>
		</tr>

		<tr>
			<th>Gender</th>
			<td><?php echo $_SESSION['Gender'] ?></td>
		</tr>

		<tr>
			<th>Date of Birth</th>
			<td><?php echo $_SESSION['dob'] ?></td>
		</tr>
		<tr>
			<th>Contact Number</th>
			<td><?php echo $_SESSION['phone'] ?></td>
		</tr>
	</table> -->

	<div class="container">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">User Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Gender</th>
					<th scope="col">DOB</th>
					<th scope="col">Phone</th>
				</tr>
			</thead>
			<tbody>
				<td>
					<?php echo $_SESSION['userid'] ?>
				</td>

				<td>
					<?php echo $_SESSION['name'] ?>
				</td>

				<td>
					<?php echo $_SESSION['email'] ?>
				</td>

				<td>
					<?php echo $_SESSION['Gender'] ?>
				</td>

				<td>
					<?php echo $_SESSION['dob'] ?>
				</td>

				<td>
					<?php echo $_SESSION['phone'] ?>
				</td>
			</tbody>
		</table>
	</div>
</body>

</html>
<?php include 'footer.php';
?>