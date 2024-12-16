<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Showtime</title>

    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/local.css" />
    <link rel="shortcut icon" href="../images/logo_main.png">

    <script type="text/javascript" src="asset/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>

    <style>
        div {
            padding-bottom: 20px;
        }

        .form-control {
            color: black;
        }

        .notifyerror {
            color: red;
            font-size: 90%;
            font-style: italic;
            font-weight: normal;
            margin-bottom: 0px;
        }
    </style>
</head>

<body>
    <?php
    require('libs/db.php');
    ?>
    <div id="wrapper">
        <?php
        include("common.php");
        ?>
        <div id="edit-film">
            <div class="row text-center">
                <h2>Thêm suất chiếu</h2>
            </div>

            <form action="" method="post">
                <div>
                    <label for="date" class="col-md-2">
                        Ngày
                    </label>
                    <div class="col-md-9">
                        <input style="width: 90%;" type="date" class="form-control" id="date" value="" name="date">
                    </div>
                </div>
                <div>
                    <label for="time" class="col-md-2">
                        Giờ
                    </label>
                    <div class="col-md-9">
                        <input style="width: 90%;" type="time" class="form-control" id="date" value="" name="time">
                    </div>
                </div>
                <div>
                    <label for="name_film" class="col-md-2">
                        Phim
                    </label>
                    <div class="col-md-9">
                        
                        <select id="name_film" style="color: black; width:90%" name="name_film" class="form-control">
                            <?php
                            $sql1 = "SELECT * FROM film";
                            $result1 = mysqli_query($link, $sql1);

                            if (mysqli_num_rows($result1) > 0) {
                                while ($row1 = mysqli_fetch_assoc($result1)) { ?>
                                    <option value="<?php echo $row1["id"]; ?>">
                                        <?php echo $row1["name"]; ?>
                                    </option>
                                <?php
                                }
                            } else { ?>
                                <option value="-1">None</option>
                            <?php }
                            ?>
                        </select>
                    </div>
                </div>
                <div>
                    <label for="name_screen" class="col-md-2">
                        Chọn phòng chiếu
                    </label>
                    <div class="col-md-9">
                        
                        <select id="name_screen" style="color: black; width:90%" name="name_screen" class="form-control">
                            <?php
                            $sql1 = "SELECT * FROM screens";
                            $result1 = mysqli_query($link, $sql1);

                            if (mysqli_num_rows($result1) > 0) {
                                while ($row1 = mysqli_fetch_assoc($result1)) { ?>
                                    <option value="<?php echo $row1["id_screens"]; ?>">
                                        <?php echo $row1["name"]; ?>
                                    </option>
                                <?php
                                }
                            } else { ?>
                                <option value="-1">None</option>
                            <?php }
                            ?>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-9"></div>
                    <div class="col-md-3">
                        <button style="position: relative; right: 770px" type="submit" class="btn btn-primary" id="button_post" name="button_post">Thêm suất chiếu </button>
                    </div>
                </div>
            </form>

            <?php
            if (isset($_POST["button_post"])) {
                $name_film = $_POST["name_film"];
                $date = $_POST["date"];
                $time = $_POST["time"];
                $name_screen = $_POST["name_screen"];

                $timeshow = $date . " " . $time;
                $sql = "INSERT INTO showtime (time, id_film, id_screens) values ('$timeshow', '$name_film', '$name_screen')";
                if (mysqli_query($link, $sql)) {
                    echo "<script>alert('Thêm suất chiếu thành công');</script>";
                }
            }
            ?>
        </div>
    </div>
</body>

</html>