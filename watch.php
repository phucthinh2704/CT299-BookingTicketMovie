<?php
if (isset($_GET['film_id'])) $film_id = $_GET['film_id'];
// 
?>
<div id="content">
    <div id="movie-display">
        <div class="row cur-location">
            <nav id="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="?mod=home">Xem phim</a>
                    </li>
                    /
                    <li class="breadcrumb-item">
                        <?php
                        if (isset($_GET['film_id'])) $film_id = $_GET['film_id'];
                        $sql = "select * from `film` where `id` = '$film_id'";
                        $query = $link->query($sql);
                        $r1 = $query->fetch_assoc();
                        $type_movie = $r1['type_movie'];
                        $sql2 = "select * from `type-movie` where `id` = '$type_movie'";
                        $query = $link->query($sql2);
                        $r2 = $query->fetch_assoc();
                        ?>
                        <a href="?mod=list&type=<?php echo $r2['handle'] ?>&year=2024"><?php echo $r2['name'] ?></a>
                    </li>
                    /
                    <?php
                    $sql = "select * from `film` where `id` = '$film_id'";
                    $query = $link->query($sql);
                    $r3 = $query->fetch_assoc();
                    ?>
                    <li class="breadcrumb-item active" aria-current="page"><?php echo $r3['name'] ?></li>
                </ol>
            </nav>
        </div>
        <div class="row body_video">
            <div class="col-sm-12">
                <video width="100%" height="100%" controls>
                    <source src="<?php echo "./images/video/" . random_int(1, 3) . ".mp4" ?>" type="video/mp4">
                </video>
            </div>
            <div class="share">
                <div class="row">
                    <button type="button" class="btn btn-secondary">
                        <img src="images/icons/plus.png" alt="Share" width="20px"> Thêm vào hộp
                    </button>
                    <button type="button" class="btn btn-primary share_fb">
                        <img src="images/icons/facebook_square_lightblue-512.png" alt="Share" width="20px"> Share
                    </button>
                    <button type="button" class="btn btn-secondary">AutoNext: On</button>
                    <button type="button" class="btn btn-secondary">Phóng to</button>
                    <button type="button" class="btn btn-secondary">
                        <img src="images/icons/lamp.png" alt="Share" width="20px"> Tắt đèn
                    </button>
                </div>

            </div>
        </div>
    </div>


</div>