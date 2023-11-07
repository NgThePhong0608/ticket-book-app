<?php

include 'connect.php';

if (isset($_GET['id'])) {
    $userID = $_GET['id'];

    $query = "DELETE FROM users WHERE UserID = $userID";
    $result = mysqli_query($connect, $query);

    if ($result) {
        header("location: adminuser.php");
    } else {
    }
} else {
    header("location: adminuser.php");
}
