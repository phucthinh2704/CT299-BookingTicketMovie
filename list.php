<?php
if ((!isset($_POST['filter_type']) || $_POST['filter_type'] == '')  && (!isset($_POST['filter_nation']) || $_POST['filter_nation'] == '') && (!isset($_POST['filter_year']) || $_POST['filter_year'] == '')) {
  if ($_GET['type'] == 'category') {
     $cate_id = $_GET['id'];
     $sql_filter = "select * from `film` where `category_id` = '$cate_id'";
  } elseif ($_GET['type'] == 'nation') {
     $nation = $_GET['id'];
     $sql_filter = "select * from `film` where `nation_id` = '$nation'";
  } elseif ($_GET['type'] == 'single-movie') {
     $year = $_GET['year'];
     $sql_filter = "select * from `film` where `type_movie` = 1 and `year` = '$year'";
  } elseif ($_GET['type'] == 'series-movie') {
     $year = $_GET['year'];
     $sql_filter = "select * from `film` where `type_movie` = 2 and `year` = '$year'";
  } else {
     $year = $_GET['year'];
     $sql_filter = "select * from `film` where `type_movie` = 3 and `year` = '$year'";
  }
} else {
  if ($_GET['type'] == 'category') {
    $cate_id = $_GET['id'];
    if ($_POST['filter_type'] != '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] == '') {
       $filter_type = $_POST['filter_type'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 0, year = 0
    elseif ($_POST['filter_type'] != '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_type = $_POST['filter_type'];
      $filter_nation = $_POST['filter_nation'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 1, year = 0
    elseif ($_POST['filter_type'] != '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] != '') {
      $filter_type = $_POST['filter_type'];
      $filter_year = $_POST['filter_year'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `year` = '$filter_year' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `year` = '$filter_year' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `year` = '$filter_year' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `year` = '$filter_year' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `year` = '$filter_year' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 0, year = 1
    elseif ($_POST['filter_type'] != '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] != '') {
      $filter_type = $_POST['filter_type'];
      $filter_nation = $_POST['filter_nation'];
      $filter_year = $_POST['filter_year'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' and `year` = '$filter_year'  order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' and `year` = '$filter_year' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' and `year` = '$filter_year' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' and `year` = '$filter_year' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' and `year` = '$filter_year' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 1, year = 1
    elseif ($_POST['filter_type'] == '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_nation = $_POST['filter_nation'];
       $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' limit 32";
    }
    // type = 0,nation = 1, year = 0
    elseif ($_POST['filter_type'] == '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] != '') {
      $filter_nation = $_POST['filter_nation'];
      $filter_year = $_POST['filter_year'];
       $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `nation_id` = '$filter_nation' and `year` = '$filter_year'";
    }
    // type = 0,nation = 1, year = 1
    elseif ($_POST['filter_type'] == '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] != '') {
       $filter_year = $_POST['filter_year'];
       $sql_filter = "select * from `film` where `category_id` = '$cate_id' and `year` = '$filter_year'";
    }
    // type = 0,nation = 0, year = 1 ()
  } elseif ($_GET['type'] == 'nation') {
    $nation = $_GET['id'];
    if ($_POST['filter_type'] != '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] == '') {
       $filter_type = $_POST['filter_type'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 0, year = 0
    elseif ($_POST['filter_type'] != '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] != '') {
      $filter_type = $_POST['filter_type'];
      $filter_year = $_POST['filter_year'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' and `year` = '$filter_year' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' and `year` = '$filter_year' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' and `year` = '$filter_year' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' and `year` = '$filter_year' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `nation_id` = '$nation' and `year` = '$filter_year' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 0, year = 1
    elseif ($_POST['filter_type'] == '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] != '') {
       $filter_year = $_POST['filter_year'];
       $sql_filter = "select * from `film` where `nation_id` = '$nation' and `year` = '$filter_year'";
    }
    // type = 0,nation = 0, year = 1
  } elseif ($_GET['type'] == 'single-movie') {
    $year = $_GET['year'];
    if ($_POST['filter_type'] != '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] == '') {
       $filter_type = $_POST['filter_type'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `type_movie` = 1 order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `type_movie` = 1 order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `type_movie` = 1 order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `type_movie` = 1 order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `type_movie` = 1 order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 0, year = 0
    elseif ($_POST['filter_type'] != '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_type = $_POST['filter_type'];
      $filter_nation = $_POST['filter_nation'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `type_movie` = 1 and `nation_id` = '$filter_nation' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `type_movie` = 1 and `nation_id` = '$filter_nation' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `type_movie` = 1 and `nation_id` = '$filter_nation' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `type_movie` = 1 and `nation_id` = '$filter_nation' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `type_movie` = 1 and `nation_id` = '$filter_nation' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 1, year = 0
    elseif ($_POST['filter_type'] == '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_nation = $_POST['filter_nation'];
       $sql_filter = "select * from `film` where `type_movie` = 1 and `nation_id` = '$filter_nation' limit 32";
    }
    // type = 0,nation = 1, year = 0
  } elseif ($_GET['type'] == 'series-movie') {
    $year = $_GET['year'];
    if ($_POST['filter_type'] != '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] == '') {
       $filter_type = $_POST['filter_type'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `type_movie` = 2 order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `type_movie` = 2 order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `type_movie` = 2 order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `type_movie` = 2 order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `type_movie` = 2 order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 0, year = 0
    elseif ($_POST['filter_type'] != '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_type = $_POST['filter_type'];
      $filter_nation = $_POST['filter_nation'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `type_movie` = 2 and `nation_id` = '$filter_nation' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `type_movie` = 2 and `nation_id` = '$filter_nation' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `type_movie` = 2 and `nation_id` = '$filter_nation' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `type_movie` = 2 and `nation_id` = '$filter_nation' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `type_movie` = 2 and `nation_id` = '$filter_nation' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 1, year = 0
    elseif ($_POST['filter_type'] == '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_nation = $_POST['filter_nation'];
       $sql_filter = "select * from `film` where `type_movie` = 2 and `nation_id` = '$filter_nation' limit 32";
    }
    // type = 0,nation = 1, year = 0
  } else {
    $year = $_GET['year'];
    if ($_POST['filter_type'] != '' && $_POST['filter_nation'] == '' && $_POST['filter_year'] == '') {
       $filter_type = $_POST['filter_type'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `type_movie` = 3 order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `type_movie` = 3 order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `type_movie` = 3 order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `type_movie` = 3 order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `type_movie` = 3 order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 0, year = 0
    elseif ($_POST['filter_type'] != '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_type = $_POST['filter_type'];
      $filter_nation = $_POST['filter_nation'];
      if ($filter_type == 'filter_id') {
          $sql_filter = "select * from `film` where `type_movie` = 3 and `nation_id` = '$filter_nation' order by `id` desc limit 32";
      } elseif ($filter_type == 'filter_view') {
          $sql_filter = "select * from `film` where `type_movie` = 3 and `nation_id` = '$filter_nation' order by `num_view` desc limit 32";
      } elseif ($filter_type == 'filter_name_desc') {
          $sql_filter = "select * from `film` where `type_movie` = 3 and `nation_id` = '$filter_nation' order by `name` desc limit 32";
      } elseif ($filter_type == 'filter_name_asc') {
          $sql_filter = "select * from `film` where `type_movie` = 3 and `nation_id` = '$filter_nation' order by `name` asc limit 32";
      } elseif ($filter_type == 'filter_lenght') {
          $sql_filter = "select * from `film` where `type_movie` = 3 and `nation_id` = '$filter_nation' order by `duration` desc limit 32";
      }
    }
    // type = 1,nation = 1, year = 0
    elseif ($_POST['filter_type'] == '' && $_POST['filter_nation'] != '' && $_POST['filter_year'] == '') {
      $filter_nation = $_POST['filter_nation'];
       $sql_filter = "select * from `film` where `type_movie` = 3 and `nation_id` = '$filter_nation' limit 32";
    }
    // type = 0,nation = 1, year = 0
  }
}
?>
<div id="content">
  <div class="block" id="page-list">
    <div class="blocktitle breadcrumbs">
      <div class="item">
        <a href="?mod=home">
          <span>Xem phim</span>
        </a>
      </div>
      <div class="item last-child">
        <span itemprop="title">Phim Chiếu Rạp</span>
      </div>
    </div>

    <a href="detail.html">
      <div class="blockbody" id="list-movie-update">
        <div class="tab toan-bo">
          <ul class="list-film tab toan-bo">
            <?php
            $query = $link->query($sql_filter);
            while ($r = $query->fetch_assoc()) {
            ?>
              <li data-liked="852" data-views="<?php echo $r['num_view'] ?>">
                <div class="inner"><a href="?mod=detail&film_id=<?php echo $r['id'] ?>" title="<?php echo $r['name'] ?>"><img src="./images/<?php echo $r['image'] ?>"
                      alt="<?php echo $r['name'] ?>"></a>
                  <div class="info">
                    <div class="name"><a href="?mod=detail&film_id=<?php echo $r['id'] ?>" title="<?php echo $r['name'] ?>"><?php echo $r['name'] ?></a></div>
                    <div class="name2"><?php echo $r['name2'] ?></div>
                  </div>
                  <div class="status"><?php echo $r['status'] ?></div>
                </div>
              </li>
            <?php
            }
            ?>
          </ul>
        </div>
      </div>
    </a>
  </div>
</div>