<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Film</title>
    <link rel="shortcut icon" href="../images/logo_main.png">

    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/local.css" />

    <script type="text/javascript" src="asset/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>

    <style>
        img {
            filter: gray;
            -webkit-filter: grayscale(1);
            -webkit-box-shadow: 0px 2px 6px 2px rgba(0, 0, 0, 0.75);
            -moz-box-shadow: 0px 2px 6px 2px rgba(0, 0, 0, 0.75);
            box-shadow: 0px 2px 6px 2px rgba(0, 0, 0, 0.75);
            margin-bottom: 20px;
        }

        img:hover {
            filter: none;
            -webkit-filter: grayscale(0);
        }

        div {
            padding-bottom: 30px;
        }

        .form-control {
            color: black;
        }

        .title {
            padding: 10px 30px;
            border-radius: 10px;
            width: 500px;
            margin: auto;
        }
    </style>
</head>

<body>

    <?php
    require('libs/db.php');
    $sql = "SELECT id FROM film ";
    $result = mysqli_query($link, $sql);
    ?>
    <div id="wrapper">
        <?php
        include("common.php");
        ?>
        <div class="container" id="post_film" style="padding: 0 15%">
            <div class="row text-center" style="margin: 20px 0px;">
                <h2 class="title">Thêm Phim</h2>
            </div>
            <form method="post" id="form-insert-film" name="form-insert-film" class="form-horizontal" action="" role="form" enctype="multipart/form-data">

                <div>
                    <label for="film-name" class="col-md-2">
                        Tên phim
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="film-name" name="film-name" required>
                    </div>
                </div>
                <div>
                    <label for="film-name2" class="col-md-2">
                        Tên Tiếng Anh
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="film-name2" name="film-name2" required>
                    </div>
                </div>
                <div>
                    <label for="status" class="col-md-2">
                        Trạng thái
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="status" name="status" required>
                    </div>
                </div>
                <div>
                    <label for="director" class="col-md-2">
                        Đạo diễn
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="director" name="director" required>
                    </div>
                </div>
                <div>
                    <label for="actor" class="col-md-2">
                        Diễn viên
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="actor" name="actor" required>
                    </div>
                </div>
                <div>
                    <label for="category" class="col-md-2">
                        Thể loại
                    </label>
                    <div class="col-md-9">
                        <select id="category" style="color: black" name="category" class="form-control">
                            <?php
                            $sql = "SELECT * FROM category";
                            $result = mysqli_query($link, $sql);

                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) { ?>
                                    <option value="<?php echo $row["id"]; ?>">
                                        <?php echo $row["name"]; ?>
                                    </option>
                            <?php
                                }
                            } else {
                                echo "No catagory";
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div>
                    <label for="type" class="col-md-2">
                        Type-movie
                    </label>
                    <div class="col-md-9">
                        <select id="type" style="color: black" name="type_movie" class="form-control">
                            <?php
                            $sql = "SELECT * FROM `type-movie`";
                            $result = mysqli_query($link, $sql);

                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) { ?>
                                    <option value="<?php echo $row["id"]; ?>">
                                        <?php echo $row["name"]; ?>
                                    </option>
                            <?php
                                }
                            } else {
                                echo "No nation";
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div>
                    <label for="nation" class="col-md-2">
                        Quốc gia
                    </label>
                    <div class="col-md-9">
                        <select id="nation" style="color: black" name="nation" class="form-control">
                            <?php
                            $sql = "SELECT * FROM nation";
                            $result = mysqli_query($link, $sql);

                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) { ?>
                                    <option value="<?php echo $row["id"]; ?>">
                                        <?php echo $row["name"]; ?>
                                    </option>
                            <?php
                                }
                            } else {
                                echo "No nation";
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div>
                    <label for="year" class="col-md-2">
                        Năm phát hành
                    </label>
                    <div class="col-md-9">
                        <select id="year" name="year" id="year" style="color: black" class="form-control">
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                        </select>
                    </div>
                </div>
                <div>
                    <label for="image" class="col-md-2">
                        Link ảnh
                    </label>
                    <div class="col-md-9">
                        <input type="file" name="image_name" id="image_name" onchange="alertName()" required />
                        <input type="text" class="form-control" id="image_link" name="image">

                        <script>
                            function alertName() {
                                var name = document.getElementById("image_name").value;
                                var n = name.lastIndexOf('\\');
                                var result = name.substring(n + 1);
                                document.getElementById("image_link").value =  result;
                            }
                        </script>
                    </div>
                </div>
                <div>
                    <label for="decription" class="col-md-2">
                        Mô tả phim
                    </label>
                    <div class="col-md-9" style="color: black">
                        <textarea name="decription" id="decription" cols="74" rows="10"></textarea>
                    </div>

                </div>
                <div>
                    <label for="duration" class="col-md-2">
                        Thời lượng (phút)
                    </label>
                    <div class="col-md-9">
                        <input type="number" class="form-control" id="duration" name="duration" required>
                    </div>
                </div>
                <div>
                    <label for="num_view" class="col-md-2">
                        Lượt xem
                    </label>
                    <div class="col-md-9">
                        <input type="number" class="form-control" id="num_view" name="num_view" required>
                    </div>
                </div>
                <div>
                    <label for="author" class="col-md-2">
                        Tác giả
                    </label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="author" name="author" required>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-9"></div>
                    <div class="col-md-3" style="position: relative; right: 463px">
                        <button type="submit" class="btn btn-primary" id="button_post" name="button_post">Đăng phim </button>
                    </div>
                </div>
            </form>

        </div>
    </div>

    <?php
    if (isset($_POST["button_post"])) {
        $name = $_POST["film-name"];
        $name2 = $_POST["film-name2"];
        $status = $_POST["status"];
        $director = $_POST["director"];
        $actor = $_POST["actor"];
        $category = $_POST["category"];
        $type_movie = $_POST["type_movie"];
        $nation = $_POST["nation"];
        $year = $_POST["year"];
        $image = $_FILES["image_name"]["name"];
        $image_tmp = $_FILES["image_name"]["tmp_name"];
        $link_image = $_POST["image"];
        $description = $_POST["decription"];
        $duration = $_POST["duration"];
        $num_view = $_POST["num_view"];
        $author = $_POST["author"];

        $sql = "INSERT INTO film(name,name2,status,director,actor,category_id,type_movie,nation_id,year,image,description,duration,num_view,author)            
            VALUES ('$name', '$name2','$status','$director','$actor','$category','$type_movie','$nation','$year','$link_image','$description','$duration', '$num_view', '$author')";
        $result = mysqli_query($link, $sql);
        $target_dir = "../images/";
        $targer_file = $target_dir . basename($_FILES["image_name"]["name"]);
        move_uploaded_file($_FILES["image_name"]["tmp_name"], $targer_file);
        // var_dump($result);
        if ($result) { ?>
            <script>
                alert("Thêm phim thành công!");
            </script>
        <?php
        } else { ?>
            <script>
                alert("Thêm phim thất bại!");
            </script>
    <?php }
    }
    ?>

</body>

</html>