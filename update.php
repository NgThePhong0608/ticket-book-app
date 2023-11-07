<?php
include 'connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['userID']) && !empty($_POST['userID'])) {
        $userID = $_POST['userID'];
        $name = $_POST['name'];
        $email = $_POST['email'];
        $dob = $_POST['dob'];
        $phone = $_POST['phone'];
        $gender = $_POST['gender'];

        $query = "UPDATE users SET Name='$name', Email='$email', DoB='$dob', Phone='$phone', Gender='$gender' WHERE UserID = $userID";

        $result = mysqli_query($connect, $query);

        if ($result) {
            header('location: adminuser.php');
        } else {
            header('location: adminuser.php');
        }
    } else {
        header('location: adminuser.php');
    }
}
