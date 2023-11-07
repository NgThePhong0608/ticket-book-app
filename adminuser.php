<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '') {
    header("location:index.php");
}
include 'adminheader.php';
?>
<!DOCTYPE html>
<html>
<link rel='stylesheet' href='index.css'>

<style>
    table#data {
        font-size: 16px;
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        border-spacing: 0;
        width: 100%;
    }

    #data td,
    #data th {
        border: 1px solid #ddd;
        text-align: left;
        padding: 8px;
    }

    #data tr:nth-child(even) {
        background-color: #f2f2f2
    }

    #data th {
        padding-top: 11px;
        padding-bottom: 11px;
        background-color: black;
        color: white;
    }

    .center-buttons {
        display: flex;
        justify-content: center;
    }

    .center-buttons a {
        margin: 0 5px;
        /* Tùy chỉnh khoảng cách giữa các button */
    }

    #updateModal .modal-dialog {
        width: 400px;
        /* Set width as desired */
    }

    #updateModal .modal-content {
        border-radius: 8px;
        /* Rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        /* Shadow effect */
    }

    #updateModal .modal-header {
        background-color: #337ab7;
        /* Header background color */
        color: white;
        /* Header text color */
        border-radius: 8px 8px 0 0;
        /* Rounded top corners */
    }

    #updateModal .modal-body {
        padding: 20px;
        /* Add padding to the body */
    }

    #updateModal .modal-body input {
        margin-bottom: 10px;
        /* Space between input fields */
    }
</style>

<body>
    <br /><br />
    <div class="container">
        <h3 align="center"> PASSENGERS DATABASE</h3>
        <br />
        <div class="table-responsive">
            <table id="data" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">User Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Gender</th>
                        <th scope="col">DOB</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $result = mysqli_query($connect, "SELECT * FROM users");
                    while ($row = mysqli_fetch_assoc($result)) :
                    ?>
                        <tr>
                            <td><?php echo $row['UserID']; ?></td>
                            <td><?php echo $row['Name']; ?></td>
                            <td><?php echo $row['Email']; ?></td>
                            <td><?php echo $row['Gender']; ?></td>
                            <td><?php echo $row['DoB']; ?></td>
                            <td><?php echo $row['Phone']; ?></td>
                            <td class="center-buttons">
                                <a href="delete.php?id=<?php echo $row['UserID']; ?>">
                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                </a>
                                <a href="update.php?id=<?php echo $row['UserID']; ?>" class="update-link">
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                </a>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>

        </div>
        <!-- Bootstrap Modal for Update -->
        <div id="updateModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <div class="row">
                            <div class="col-xs-11">
                                <h4 class="modal-title">Update User Information</h4>
                            </div>
                            <div class="col-xs-1 text-right">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form id="updateForm" action="update.php" method="post">
                            <input type="text" class="form-control" name="name" id="updateName" placeholder="Name">
                            <input type="text" class="form-control" name="email" id="updateEmail" placeholder="Email">
                            <input type="text" class="form-control" name="gender" id="updateEmail" placeholder="Gender">
                            <input type="text" class="form-control" name="dob" id="updateEmail" placeholder="DoB">
                            <input type="text" class="form-control" name="phone" id="updateEmail" placeholder="Phone">
                            <input type="hidden" id="updateUserID" name="userID">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<script>
    $(document).ready(function() {
        $('#data').DataTable({
            "order": [
                [1, "desc"]
            ]
        });
    });

    $(document).ready(function() {
        $('.update-link').click(function(e) {
            e.preventDefault(); // Prevent default action

            // Retrieve user ID from the href attribute
            var userID = $(this).attr('href').split('=')[1];

            // Populate modal fields with the retrieved data (simulated data here)
            $('#updateUserID').val(userID);

            // Trigger the modal
            $('#updateModal').modal('show');
        });
    });
</script>


<table align='center'>
    <tr><!--<td><a href='pay.php'><button>Proceed</button></a></td>-->
        <td><a href='admin.php'><button style="background-color: black ; border-color:black "><span style="color:white">Go Back </span> </button></a></td>
    </tr>
</table>