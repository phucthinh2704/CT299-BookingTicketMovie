<?php
require('libs/db.php');
// $updateALL = "UPDATE film
// SET image = REPLACE(image, 'images/', '')
// WHERE image LIKE 'images/%';";
// mysqli_query($link, $updateALL);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Tickets</title>
    <link rel="shortcut icon" href="../images/logo_main.png">

    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/local.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/delete.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
    <div id="wrapper">
        <?php
        include("common.php");
        ?>
        <div class="container">
            <div class="row" id="search-user">
                <form method="post">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-7">
                            <input style="color:black" class="form-control form-control-lg form-control-borderless" id="searchInput" type="search" placeholder="Search tickets for name,..." name="qry">
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-lg btn-primary" type="submit" name="button_search" style="padding: 8px">Search</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="row" id="list-user">
                <!-- <div class="col-md-1"></div> -->
                <div class="col-md-12">
                    <h2 class="text-center">Danh sách vé đặt</h2>
                    <!-- get from database -->
                    <?php
                    $query = "SELECT t.booking_time, t.id_showtime, t.seats, m.name, t.id_ticket,u.fullname, st.time,t.id_user
                          FROM tickets t
                          JOIN showtime st ON t.id_showtime = st.id_showtime
                          JOIN film m ON st.id_film = m.id
                          JOIN user u ON u.ID = t.id_user
                         ";
                    $result = mysqli_query($link, $query);
                    if (mysqli_num_rows($result) > 0) { ?>
                        <!-- output data of each row -->
                        <table class="table" id="tableTicket" style="margin: 10px 0px">
                            <thead>
                                <tr>
                                    <th scope="col">STT</th>
                                    <th scope="col">ID</th>
                                    <th scope="col">Tên người dùng</th>
                                    <th scope="col">Tên phim</th>
                                    <th scope="col">Giờ chiếu</th>
                                    <th scope="col">Vị trí ghế</th>
                                    <th scope="col">Thời gian đặt</th>
                                    <th>Chức năng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i = 1;
                                while ($row = mysqli_fetch_assoc($result)) {
                                ?>
                                    <tr id="trTable">
                                        <th> <?php echo $i++ ?> </th>
                                        <th> <?php echo $row["id_ticket"] ?> </th>
                                        <th> <?php echo $row["fullname"] ?> </th>
                                        <th> <?php echo $row["name"] ?> </th>
                                        <th> <?php echo $row["time"] ?> </th>
                                        <th> <?php echo $row["seats"] ?> </th>
                                        <th> <?php echo $row["booking_time"] ?> </th>
                                        <th><button><a style="color:red;text-decoration:none" href="ManageTicket.php?action=delete&idTicket=<?php echo $row['id_ticket'] ?>">Hủy vé</a></button></th>
                                    </tr>
                            <?php
                                }
                            } else {
                                echo "No user like " . $qry;
                            }
                            // }

                            ?>
                            </tbody>
                        </table>
                </div>

            </div>
        </div>
    </div>
    <!-- lọc dữ liệu theo ô tìm kiếm -->
    <script>
        $(document).ready(function() {
            $("#searchInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#tableTicket #trTable").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
    <?php
    try {
        if (isset($_GET['idTicket']) && isset($_GET['action'])) {
            $id = $_GET['idTicket'] !== '' ? $_GET['idTicket'] : 0;
            $query = "delete from tickets where id_ticket = $id";
            mysqli_query($link, $query);
            mysqli_close($link);
            echo '<script> alert("Hủy vé thành công.");
                window.location.href = "ManageTicket.php";
                </script>';
        }
    } catch (Throwable $e) {
        mysqli_close($link);
        echo '<script> alert("Hủy vé thất bại.");
           window.location.href = "ManageTicket.php";</script>';
    }
    ?>
</body>

</html>