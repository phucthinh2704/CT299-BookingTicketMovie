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
    <title>Delete user</title>

    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/local.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/delete.css" />

    <script type="text/javascript" src="asset/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
</head>

<body>
    <div id="wrapper">
        <?php
        include("common.php");
        ?>
        <div class="container">
            <?php if (isset($_GET['film_id'])) { ?>
                <div class="info" style="display:flex;flex-direction:row">
                    <div>
                        <?php
                        $idFilm = $_GET['film_id'];
                        $queryFilm = "select * from film where id=$idFilm ";
                        $result = mysqli_query($link, $queryFilm);
                        $r = mysqli_fetch_assoc($result);
                        ?>
                        <h2 class="title fr"><?php echo $r['name'] ?></h2>
                        <div class="poster"><a href="#" title="Xem phim <?php echo $r['name'] ?>"><img src="../images/<?php echo $r['image'] ?>" alt="<?php echo $r['name'] ?>"></a></div>
                        <div class="name2 fr">
                            <h3><?php echo $r['name2'] ?></h3><span class="year" style="font-size:12px">(2010)</span>
                        </div>
                    </div>
                    <div class="dinfo">
                        <div class="">
                            <ul>
                                <li>Status: <span class="status1"><?php echo $r['status'] ?></span></li>
                                <li>Đạo diễn: <?php echo $r['director'] ?></li>
                                <li>Diễn viên: <?php echo $r['actor'] ?></li>
                                <li>Thể loại: <a href="#" title="Phim Hành Động"> <?php
                                                                                    $id = $r['category_id'];
                                                                                    $query = "select id,name from category where id = $id";
                                                                                    $row = mysqli_query($link, $query);
                                                                                    $result = mysqli_fetch_assoc($row);
                                                                                    echo $result['name'];
                                                                                    ?></a></li>
                            </ul>
                        </div>
                        <div class="">
                            <ul>
                                <?php
                                $nation_id = $r['nation_id'];
                                $sql = "select * from `nation` where `id` = '$nation_id'";
                                $query = $link->query($sql);
                                $r2 = $query->fetch_assoc();
                                ?>
                                <li>Quốc gia: <a href="?mod=list&type=nation&id=<?php echo $r2['id'] ?>" title="Phim <?php echo $r2['name'] ?>"><?php echo $r2['name'] ?></a></li>
                                <li>Thời lượng: <?php echo $r['duration'] ?> Phút</li>
                                <li>Lượt xem: <?php echo $r['num_view'] ?></li>
                                <li>Đăng bởi: <?php echo $r['author'] ?></li>
                            </ul>
                        </div>
                        <div class="detail">
                            <div class="content">
                                <h4>Nội dung phim <?php echo $r['name'] ?>:</h4>
                                <p><?php echo $r['description'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- danh sách xuất chiếu  -->
                <div class="listShowTime" style="margin-top:50px;margin-bottom:50px;color:black">
                    <h2>Danh sách xuất chiếu phim</h2>
                    <div>
                        <?php
                        $query2 = "SELECT id_film, TIME_FORMAT(time, '%H:%i') AS time, DATE(time) AS day from showtime where id_film = $idFilm";
                        $result = mysqli_query($link, $query2);
                        // $row = mysqli_fetch_assoc($result);
                        if ($result && mysqli_num_rows($result) > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                        ?>
                                <div style="margin-right:30px;margin-bottom:10px"><button><?php echo $row['time'] ?></button>
                                    <button><?php echo $row['day'] ?></button>
                                </div>

                        <?php }
                        } ?>
                    </div>
                </div>

                <!-- Tạo thêm suất chiếu
                  -->
                <div class="createTimeShow" style="margin-bottom:30px">
                    <h2>Thêm suất chiếu mới</h2>
                    <form method="post">
                        <div>
                            <lable>
                                <label for="date">Nhập ngày giờ </label>
                                <br>
                                <input style="color:black" id="date" type="datetime-local" name="date" required>
                            </lable>
                            <br>
                            <button type="submit" style="color:black;margin-top:20px">
                                Thêm suất chiếu

                            </button>
                        </div>
                    </form>
                </div>
            <?php } ?>
        </div>
    </div>

    <?php
    if (isset($_POST['date'])) {
        try {
            $date = $_POST['date'];
            $dateFormat = new DateTime($date);
            $dateInsert =  $dateFormat->format('Y-m-d H:i:s');
            $query = "INSERT INTO showtime set time = '$dateInsert',id_film = $idFilm,id_screens = 1";
            $result = mysqli_query($link, $query);
            echo ('<script>
        alert("Thêm suất chiếu thành công");
        
        </script>');

            exit;
        } catch (Throwable $e) {
            echo ('<script>
        alert("Có lỗi xảy ra");
        </script>');
        }
    }
    ?>
</body>

</html>