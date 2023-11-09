<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '') {
  header("location:sindex.php");
}
include 'header.php';
?>

<style>
  .container {
    border-spacing: 10px;

    font-family: Montserrat, sans-serif;
    font-size: 18px !important;
    border: 2px solid grey;
    margin-top: 30px;
    margin-bottom: 50px;
    padding-top: 50px;
    padding-right: 50px;
    padding-bottom: 50px;
    padding-left: 150px;
    align-content: center;
  }

  .button {
    padding: 15px 32px;
    align: center;
    color: white;
    background-color: black;
  }

  #number {
    overflow: hidden;
    width: 600px;
  }

  input[type=number] {
    width: 250px;
  }
</style>


</script>
</head>

<body>
  <h1>
    <center><b><img src="https://img.icons8.com/bubbles/80/000000/bus.png" />Bus Ticket Booking &nbsp <img src="https://img.icons8.com/officel/54/000000/road.png" /></center></b>
  </h1>
  <form method='post' action='busaction.php' align='center'>
    <div class="container">
      <section id="form" class="formborder">
        <div class="container2">
          <form>
            <div class="form-row row justify-content-around" name="source">
              &nbsp
              <div class="form-group col-md-5" name="source">
                <label for="inputState">SOURCE STATION:</label>
                <select id="inputState" class="form-control" name="source">
                  <?php
                  if ($connect->connect_error) {
                    die("Kết nối không thành công: " . $connect->connect_error);
                  }

                  $sql = "SELECT `name` FROM `city`";
                  $result = $connect->query($sql);

                  if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                      echo "<option>" . $row["name"] . "</option>";
                    }
                  } else {
                    echo "<option>Không có dữ liệu</option>";
                  }
                  ?>
                </select>
              </div>

              <div class="form-group col-md-5" name="dest">
                <label for="inputState">DESTINATION STATION:</label>
                <select id="inputState" class="form-control" name="dest">
                  <?php
                  $sql = "SELECT `name` FROM `city`";
                  $result = $connect->query($sql);

                  if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                      echo "<option>" . $row["name"] . "</option>";
                    }
                  } else {
                    echo "<option>Không có dữ liệu</option>";
                  }
                  ?>
                </select>
              </div>

              <div class="form-row row justify-content-aroundd">
                <div class="form-group col-md-16">
                  <center><label for="inputState">
                      <h8>NO OF PASSENGERS :</h8>
                    </label></center>
                  <center> <input type="number" name="number" required min="1" max="5"></center>
                </div>
                <br>
                <div>
                  <button type="submit" class="button" name="login_submit">Proceed</button>
                </div>
          </form>
        </div>

      </section>
    </div>





</body>

<?php include 'footer.php';
?>

</html>
