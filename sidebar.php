<div id="sidebar">
  <div class="block" id="chart">
    <div class="blocktitle"><i class="icon top"></i>
      <div class="title">Phim HOT</div>
    </div>
    <div class="tabs" data-target="#topview">
      <div id="topviewday" class="tab active">Phim Đang Hot</div>
      <div id="topviewweek" class="tab">Phim Sắp Hot</div>
      <div id="topviewmonth" class="tab">Phim chiếu rạp</div>
    </div>
    <div class="blockbody" id="topview">
      <ul class="tab topviewday">
        <?php
        $sql = 'select * from `film` where `type_movie` = 1 order by `num_view` DESC limit 10';
        $query = $link->query($sql);
        $i = 1;
        while ($r = $query->fetch_assoc()) {
        ?>
          <li><span class="st top"><?php echo $i++ ?></span>
            <div class="detail">
              <div class="name"><a href="?mod=detail&film_id=<?php echo $r['id'] ?>" title="<?php echo $r['name'] ?>"><?php echo $r['name'] ?></a></div>
              <div class="views">Lượt xem <?php echo $r['num_view'] ?></div>
            </div>
          </li>
        <?php
        }
        ?>
      </ul>
      <ul class="tab topviewweek hide">
        <?php
        $sql = 'select * from `film` where `type_movie` = 2 order by `num_view` DESC limit 10';
        $query = $link->query($sql);
        $i = 1;
        while ($r = $query->fetch_assoc()) {
        ?>
          <li><span class="st top"> <?php echo $i++ ?> </span>
            <div class="detail">
              <div class="name"><a href="?mod=detail&film_id=<?php echo $r['id'] ?>" title="<?php echo $r['name'] ?>"><?php echo $r['name'] ?></a></div>
              <div class="views">Lượt xem <?php echo $r['num_view'] ?></div>
            </div>
          </li>
        <?php
        }
        ?>
      </ul>
      <ul class="tab topviewmonth hide">
        <?php
        $sql = 'select * from `film` where `type_movie` = 3 order by `num_view` DESC limit 10';
        $query = $link->query($sql);
        $i = 1;
        while ($r = $query->fetch_assoc()) {
        ?>
          <li><span class="st top"><?php echo $i++ ?></span>
            <div class="detail">
              <div class="name"><a href="?mod=detail&film_id=<?php echo $r['id'] ?>" title="<?php echo $r['name'] ?>"><?php echo $r['name'] ?></a></div>
              <div class="views">Lượt xem <?php echo $r['num_view'] ?></div>
            </div>
          </li>
        <?php
        }
        ?>
      </ul>
    </div>
    <script type="text/javascript">
      $('#topviewday').click(function() {
        $(this).addClass('active');
        $('#topviewweek').removeClass('active');
        $('#topviewmonth').removeClass('active');
        $('ul.topviewday').removeClass('hide');
        $('ul.topviewweek').addClass('hide');
        $('ul.topviewmonth').addClass('hide');
      })
      $('#topviewweek').click(function() {
        $(this).addClass('active');
        $('#topviewday').removeClass('active');
        $('#topviewmonth').removeClass('active');
        $('ul.topviewweek').removeClass('hide');
        $('ul.topviewday').addClass('hide');
        $('ul.topviewmonth').addClass('hide');
      })
      $('#topviewmonth').click(function() {
        $(this).addClass('active');
        $('#topviewweek').removeClass('active');
        $('#topviewday').removeClass('active');
        $('ul.topviewmonth').removeClass('hide');
        $('ul.topviewweek').addClass('hide');
        $('ul.topviewday').addClass('hide');
      })
    </script>
  </div>
  <div class="block ad_location">
    <div class="ad-img" style="width:300; height:250; display:block; margin-top:13px;">
      <img src="images/62.png" alt="">
    </div>
    <div class="ad-img" style="width:300; height:250; display:block; margin-top:13px;">
      <img src="images/p59.png" alt="">
    </div>
  </div>
</div>