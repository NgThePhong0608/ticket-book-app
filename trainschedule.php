<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '') {
    header("location:sindex.php");
}
include 'header.php';
?>

<div>

</div>
<style>
    table#database_table {
        font-size: 16px;
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        border-spacing: 0;
    }

    #database_table td,
    #database_table th {
        border: 1px solid #ddd;
        text-align: left;
        padding: 8px;
    }

    #database_table tr:nth-child(even) {
        background-color: #f2f2f2
    }

    #database_table th {
        padding-top: 11px;
        padding-bottom: 11px;
        background-color: black;
        color: white;
    }
</style>


<head>
    <title>Ticket Booking System DATABASE</title>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
</head>

<body>
    <h2>
        <center><b><img src="https://img.icons8.com/officel/70/000000/overtime.png" />&nbsp&nbspPANVEL TO THANE TRAIN SCHEDULE&nbsp&nbsp<img src="https://img.icons8.com/officel/70/000000/overtime.png" /></center></b>
    </h2>

    <div class="container">
        <br />
        <table id="database_table" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Hà Nội </th>
                    <th>Hải Phòng </th>
                    <th>Đà Nẵng</th>
                    <th>Sapa</th>
                    <th>Thái Nguyên</th>
                    <th>Cát Bà</th>
                    <th>Hạ Long </th>
                    <th>Quảng Ninh</th>
                    <th>Nam Định</th>
                    <th>Hà Giang</th>
                    <th>Huế</th>
                    <th>Nghệ An </th>
                    <th>Ninh Bình</th>
                    <th>Cần Thơ</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $sql_transactions = "SELECT * FROM `traintt`   ";
                $result = $connect->query($sql_transactions);
                while ($row = $result->fetch_assoc()) {
                    echo '<tr class="class="table table-striped table-bordered"">
                            <td>' . $row["Hà Nội"] . '</td>
                            <td>' . $row["Hải Phòng"] . '</td>
                            <td>' . $row["Đà Nẵng"] . '</td>
                            <td>' . $row["Sapa"] . '</td>
                            <td>' . $row["Thái Nguyên"] . '</td>
                            <td>' . $row["Cát Bà"] . '</td>
                            <td>' . $row["Hạ Long"] . '</td>
                            <td>' . $row["Quảng Ninh"] . '</td>
                            <td>' . $row["Nam Định"] . '</td>
                            <td>' . $row["Hà Giang"] . '</td>
                            <td>' . $row["Huế"] . '</td>
                            <td>' . $row["Nghệ An"] . '</td>
                            <td>' . $row["Ninh Bình"] . '</td>
                            <td>' . $row["Cần Thơ"] . '</td>';
                }
                ?>
            </tbody>
        </table>
    </div>
    <script>
        $(document).ready(function() {
            $('#database_table').DataTable({
                "order": [
                    [1, "asc"]
                ]
            });
        });
    </script>
    <?php include 'footer.php';
    ?>