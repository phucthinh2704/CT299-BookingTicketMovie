<?php
  if (isset($_POST['kw'])) {
    $kw = $_POST['kw'];
    $sql = "select * from `film` where `name` like '%$kw%' or `name2` like '%$kw%'";
    $query = $link->query( $sql);
  }
?>
<div id="content">
  <div class="block" id="page-list">
    <div class="blocktitle breadcrumbs">
      <div class="item">
        <a href="?mod=home" title="Xem Phim Nhanh, Xem Phim Online chất lượng cao miễn phí">
          <span>Xem phim</span>
        </a>
      </div>
      <div class="item last-child">
        <span itemprop="title">Kết quả tìm kiếm cho: "<?php echo $kw; ?>"</span>
      </div>
    </div>
      <div class="blockbody" id="list-movie-update">
        <div class="tab toan-bo">
          <ul class="list-film tab toan-bo">
            <?php
              while($r=$query->fetch_assoc()){
            ?>
            <li data-liked="852" data-views="<?php echo $r['num_view'] ?>">
              <div class="inner"><a href="?mod=detail&film_id=<?php echo $r['id'] ?>" title="<?php echo $r['name'] ?>"><img src="<?php echo './images/' . $r['image'] ?>"
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
  </div>
</div>
