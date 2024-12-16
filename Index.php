<?php
require('libs/db.php');
session_start();
error_reporting(E_ALL);
$mod = '';
?>
<!DOCTYPE html>
<html lang="vi" itemscope="itemscope" itemtype="http://schema.org/WebPage">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Rạp chiếu phim Gold Screens</title>
  <link rel="shortcut icon" href="./images/logo_main.png">
  <link href="css/owl.carousel.css" type="text/css" rel="stylesheet">
  <link href="css/owl.theme.default.min.css" type="text/css" rel="stylesheet">
  <link href="css/style.min.css" type="text/css" rel="stylesheet">
  <?php
  if (isset($_GET['mod'])) {
    $mod = $_GET['mod'];
  }
  if ($mod == '') {
    $mod = 'home';
  } elseif ($mod == 'list') {
    echo '<link href="css/style_listfilm.css" type="text/css" rel="stylesheet">';
  } elseif ($mod == 'detail') {
    echo '<link href="css/style-detail.css" type="text/css" rel="stylesheet">';
    echo '<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">';
    echo '<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>';
    echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>';
  } elseif ($mod == 'watch') {
    echo '<link rel="stylesheet" type="text/css" media="screen" href="css/style_watch.css" />';
    echo '<script src="js/watch.js"></script>';
    echo '<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">';
    echo '<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>';
    echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>';
  }
  ?>
  <script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="js/owl.carousel.js" type="text/javascript"></script>
  <script src="js/jwplayer.js"></script>
</head>
<style media="screen" type="text/css">
  .owl-theme .owl-controls .owl-page {
    display: inline-block;
  }

  .owl-theme .owl-controls .owl-page span {
    background: none repeat scroll 0 0 #869791;
    border-radius: 20px;
    display: block;
    height: 12px;
    margin: 5px 7px;
    opacity: 0.5;
    width: 12px;
  }

  .owl-theme .owl-controls .active span {
    background-color: white !important;
  }

  .owl-theme .owl-pagination {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }
</style>

<body>
  <div id="wrapper">
    <?php
    include("header.php");
    ?>
    <div id="body-wrap" class="container">
      <?php
      include("movie-hot.php");
      ?>
      <?php
      if (isset($_GET['mod'])) {
        $mod = $_GET['mod'];
      }
      if ($mod == '') $mod = 'home';
      $mod = str_replace('../', '', $mod);
      if (is_file("{$mod}.php"))
        include("{$mod}.php");
      else
        echo 'Invalid URL';
      ?>

      <?php
      include("sidebar.php");
      ?>

    </div>

    <?php
    include("footer.php");
    ?>

  </div>

</html>