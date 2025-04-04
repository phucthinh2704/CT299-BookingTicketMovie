<?php
if (isset($_GET['film_id'])) $film_id = $_GET['film_id'];
$sql = "select * from `film` where `id` = '$film_id'";
$sql = "select f.*, ct.name name_cate from film f, category ct where f.id = '$film_id' and ct.id = f.category_id;";
$query = $link->query($sql);
$r = $query->fetch_assoc();

$sql = "SELECT date(time) AS time FROM showtime";
$result = $link->query($sql);
$days = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $days[] = $row['time'];
    }
} else {
    echo "Không có dữ liệu.";
}
/**
 * Sort an array
 * @link https://php.net/manual/en/function.sort.php
 * @param array &$array <p>
 * The input array.
 * </p>
 * @param int $flags <p>
 * The optional second parameter sort_flags
 * may be used to modify the sorting behavior using these values.
 * </p>
 * <p>
 * Sorting type flags:<br>
 * SORT_REGULAR - compare items normally
 * (don't change types)</p>
 */
sort($days);

?>
<div id="content">
    <div class="block" id="page-info">
        <div class="blocktitle breadcrumbs">
            <div class="item">
                <a href="?mod=home">
                    <span>Xem phim</span>
                </a>
            </div>
            <div class="item">
                <?php
                $type_movie = $r['type_movie'];
                $sql = "select * from `type-movie` where `id` = '$type_movie'";
                $query = $link->query($sql);
                $r1 = $query->fetch_assoc();
                ?>
                <a href="?mod=list&type=<?php echo $r1['handle'] ?>&year=2024"><span><?php echo $r1['name'] ?></span></a>
            </div>
            <div class="item last-child">
                <span itemprop="title" id="nameMovie"><?php echo $r['name'] ?></span>
            </div>
        </div>
        <div class="info">
            <h2 class="title fr"><?php echo $r['name'] ?></h2>
            <div class="poster"><a href="#" title="Xem phim <?php echo $r['name'] ?>"><img src="./images/<?php echo $r['image'] ?>" alt="<?php echo $r['name'] ?>"></a></div>
            <div class="name2 fr">
                <h3><?php echo $r['name2'] ?></h3><span class="year" style="font-size:12px">(2010)</span>
            </div>
            <div class="dinfo">
                <div class="col1 fr">
                    <ul>
                        <li>Status: <span class="status1"><?php echo $r['status'] ?></span></li>
                        <li>Đạo diễn: <?php echo $r['director'] ?></li>
                        <li>Diễn viên: <?php echo $r['actor'] ?></li>
                        <li>Thể loại: <a href="#" title="Phim Hành Động"> <?php echo $r['name_cate'] ?></a></li>
                    </ul>
                </div>
                <div class="col2">
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
            </div>
            <div class="groups-btn">
                <a href="?mod=watch&film_id=<?php echo $r['id'] ?>">
                    <div class="btn-watch fr"></div>
                </a>
                <button id="book-ticket">Đặt Vé</button>
            </div>
        </div>
        <div class="detail">
            <div class="blocktitle tab">Thông tin phim</div>
            <div class="content">
                <h4>Nội dung phim <?php echo $r['name'] ?>:</h4>
                <p><?php echo $r['description'] ?></p>
            </div>
        </div>

        <div id="showtimes" style="display: none;">
            <form method="post" action="bookTicket.php">
                <input value="<?php echo $film_id ?>" name="idfilm" id="idfilm" hidden>
                <input value="" name="selected_time" id="selected_time" hidden>
                <input value="" name="seats" id="seats" hidden>
                <input value="<?php if (isset($_SESSION['user_id'])) {
                                    echo $_SESSION['user_id'];
                                } ?>" name="iduser" id="iduser" hidden>

                <h3>Chọn ngày chiếu</h3>

                <div class="time-options">
                    <?php
                    $sql = "SELECT id_showtime,time,id_film FROM showtime where id_film=$film_id";
                    $result = $link->query($sql);
                    // $times = [];
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                    ?>
                            <button type="button" class="time-btn" value="<?php echo $row['id_showtime'] ?>" onclick="selectTime(this)"><?php echo $row['time']; ?></button>
                    <?php
                        }
                    }

                    ?>

                </div>

                <h3 style="text-align: center;margin-bottom:30px">MÀN HÌNH</h3>
                <div id="seats">
                    <!-- Ghế ngồi sẽ được hiển thị ở đây -->
                    <div class="row">
                        <span>A</span>
                        <button class="seat" value="A1">A1</button>
                        <button class="seat" value="A2">A2</button>
                        <button class="seat" value="A3">A3</button>
                        <button class="seat" value="A4">A4</button>
                        <button style="margin-right:50px" class="seat" value="A5">A5</button>
                        <button class="seat" value="A6">A6</button>
                        <button class="seat" value="A7">A7</button>
                        <button class="seat" value="A8">A8</button>
                        <button class="seat" value="A9">A9</button>
                        <button class="seat" value="A10">A10</button>
                    </div>
                    <div class="row">
                        <span>B</span>
                        <button class="seat" value="B1">B1</button>
                        <button class="seat" value="B2">B2</button>
                        <button class="seat" value="B3">B3</button>
                        <button class="seat" value="B4">B4</button>
                        <button style="margin-right:50px" class="seat" value="B5">B5</button>
                        <button class="seat" value="B6">B6</button>
                        <button class="seat" value="B7">B7</button>
                        <button class="seat" value="B8">B8</button>
                        <button class="seat" value="B9">B9</button>
                        <button class="seat" value="B10">B10</button>
                    </div>
                    <div class="row">
                        <span>C</span>
                        <button class="seat" value="C1">C1</button>
                        <button class="seat" value="C2">C2</button>
                        <button class="seat" value="C3">C3</button>
                        <button class="seat" value="C4">C4</button>
                        <button style="margin-right:50px" class="seat" value="C5">C5</button>
                        <button class="seat" value="C6">C6</button>
                        <button class="seat" value="C7">C7</button>
                        <button class="seat" value="C8">C8</button>
                        <button class="seat" value="C9">C9</button>
                        <button class="seat" value="C10">C10</button>
                    </div>
                    <div class="row">
                        <span>D</span>
                        <button class="seat" value="D1">D1</button>
                        <button class="seat" value="D2">D2</button>
                        <button class="seat" value="D3">D3</button>
                        <button class="seat" value="D4">D4</button>
                        <button style="margin-right:50px" class="seat" value="D5">D5</button>
                        <button class="seat" value="D6">D6</button>
                        <button class="seat" value="D7">D7</button>
                        <button class="seat" value="D8">D8</button>
                        <button class="seat" value="D9">D9</button>
                        <button class="seat" value="D10">D10</button>
                    </div>
                    <!-- Thêm các hàng ghế khác nếu cần -->
                    <div style="text-align:center" id="btnDatVe"> <button onclick="datve()" type="button" class="text-center" style="background-color:red;color:white;height:50px;width:100px;border-radius:10px">Đặt Vé</button></div>

                    <div id="thanhtoan" style="display:none">
                        Thanh toán
                        <div id="listTickItem">

                        </div>
                        <div id="cost" style="margin-top:30px">

                        </div>
                        <button type="submit" style="margin-top:20px;width:90px;height:30px;border-radius:10px;color:white;background-color:crimson">Thanh toán</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>


<style>
    #book-ticket {
        color: white;
        font-weight: bold;
        font-size: 17px;
        background-color: transparent;
        padding: 10px 35px;
        position: relative;
        left: 330px;
        top: -42px;
        border-radius: 20px;
        border: 2px solid #e71a0f;
        cursor: pointer;
        transition: .1s linear;
    }

    #book-ticket:hover {
        background-color: #e71a0f;
    }

    #showtimes {
        margin-top: 20px;
        background: #f9f9f9;
        padding: 20px;
        border-radius: 10px;
        color: #333;
        font-weight: bold;
    }

    .time-options {
        margin-bottom: 20px;
    }

    .time-btn,
    .day-btn {
        background: #e0e0e0;
        border: none;
        padding: 10px 15px;
        margin: 5px;
        cursor: pointer;
        border-radius: 5px;
    }

    .row {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }

    .row>span {
        font-size: 16px;
        margin-right: 10px;
    }

    .seat {
        background: #ffccbc;
        border: none;
        padding: 10px 15px;
        margin: 5px;
        cursor: pointer;
        border-radius: 5px;
    }


    input[type=submit] {
        color: white;
        font-weight: bold;
        font-size: 16px;
        background-color: #e71a0f;
        padding: 15px 27px;
        border-radius: 100rem;
        cursor: pointer;
        border: none;
        display: block;
        margin: 10px auto;
    }

    .selected {
        background-color: green;
        color: white
    }

    .reserved {
        background-color: #e71a0f;
        color: white
    }

    .cookieCard {
        margin-top: 20px;
        width: 250px;
        height: 150px;
        background: linear-gradient(to right, rgb(137, 104, 255), rgb(175, 152, 255));
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: center;
        gap: 20px;
        padding: 20px;
        position: relative;
        overflow: hidden;
    }

    .cookieCard::before {
        width: 150px;
        height: 150px;
        content: "";
        background: linear-gradient(to right, rgb(142, 110, 255), rgb(208, 195, 255));
        position: absolute;
        z-index: 1;
        border-radius: 50%;
        right: -25%;
        top: -25%;
    }

    .cookieHeading {
        font-size: 1.5em;
        font-weight: 600;
        color: rgb(241, 241, 241);
        z-index: 2;
    }

    .cookieDescription {
        font-size: 0.9em;
        color: rgb(241, 241, 241);
        z-index: 2;
    }

    .cookieDescription a {
        color: rgb(241, 241, 241);
    }

    .acceptButton {
        padding: 11px 20px;
        background-color: #7b57ff;
        transition-duration: .2s;
        border: none;
        color: rgb(241, 241, 241);
        cursor: pointer;
        font-weight: 600;
        z-index: 2;
    }

    .acceptButton:hover {
        background-color: #714aff;
        transition-duration: .2s;
    }
</style>
<script type="text/javascript">
    document.getElementById("book-ticket").addEventListener("click", () => {
        var showtimesDiv = document.getElementById("showtimes");
        showtimesDiv.style.display = showtimesDiv.style.display === "none" ? "block" : "none";
    });
    //toogle phần thanh toán
    document.getElementById("btnDatVe").addEventListener("click", () => {
        var thanhtoanDiv = document.getElementById("thanhtoan");
        thanhtoanDiv.style.display = thanhtoanDiv.style.display === "none" ? "block" : "none";

    })

    function datve() {
        // lấy các ô button suất chiếu
        var buttonTime = document.querySelectorAll('.time-btn');
        var timeSelected = ''
        buttonTime.forEach(e => {
            if (e.classList.contains('selected')) {
                timeSelected = e.innerHTML
            }
        })
        var thanhtoanDiv = document.getElementById("listTickItem");
        thanhtoanDiv.innerHTML = ''
        var costDiv = document.getElementById("cost")
        costDiv.innerHTML = ''
        var thanhtoanDivv = document.getElementById("thanhtoan");
        var nameMovie = document.getElementById("nameMovie").innerHTML;
        var seat = document.getElementById("seats").value
        fetch('ThanhToan.php', {
                method: "POST",
                header: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    seat: seat
                })
            })
            .then((response) => response.json())
            .then((data) => {
                // console.log(data)
                // kiểm tra xem dữ liệu ghế ngồi có null không và suất chiếu đã được chọn hay chưa
                if (data.seat[0] != '' || timeSelected == '') {
                    thanhtoanDiv.innerHTML = ''
                    // giả sử giá 1 vé là 50k
                    var costPerTicket = 50000;
                    var countSeat = data.seat.length;
                    // tính tổng tiền vé
                    var TotalCost = costPerTicket * countSeat
                    console.log(data.seat);
                    data.seat.forEach(seat => {
                        const ticketItem = `
                            <div class="cookieCard" style="margin-right:10px">
                                <p class="cookieHeading">Ticket</p>
                                <p class="cookieDescription"><strong style="font-size:20px">${nameMovie}</strong></p>
                                <p>Vị trí ngồi <strong style="color:red">${seat}</strong></p>
                                <p>Suất chiếu <strong style="color:red">${timeSelected}</strong></p>
                            </div>`;
                        thanhtoanDiv.insertAdjacentHTML('afterBegin', ticketItem);
                    })
                    const costItem = `
                        <h2>Thành tiền: <strong style="color:red">${TotalCost.toLocaleString()}</strong> VND</h2>
                        <h2>Quý khách vui lòng thanh toán chuyển khoản vào số tài khoản sau</h2>
                        <h2><strong>Số tài khoản: 9916660387</strong></h2>
                        <h2><strong>Ngân hàng: Vietcombank</strong></h2>
                        <img src='https://img.vietqr.io/image/vietcombank-9916660387-print.jpg?amount=${TotalCost}&addInfo=<?php echo $_SESSION["username"] . " THANH TOAN TIEN VE" ?>'/>
                    `
                    costDiv.innerHTML = ''
                    costDiv.insertAdjacentHTML('afterBegin', costItem)
                } else {
                    // var thanhtoanDivv = document.getElementById("thanhtoan");
                    if(thanhtoanDivv.style.display === "block"){
                        alert("Hãy chọn đầy đủ thông tin")
                        thanhtoanDivv.style.display = "none";
                    }
                }
            })
            .catch((error) => {
                console.error('Error:', error);
            });
    }

    function selectTime(button) {
        let buttons = document.querySelectorAll('.time-btn');
        buttons.forEach(function(btn) {
            btn.classList.remove('selected');
        });
        var selectedDate = button.value
        button.classList.add('selected');
        // fetch dữ liệu để lấy các ghế đã được đặt theo suất chiếu
        fetch('SelectTimeToShowSeats.php', {
                method: 'POST',
                header: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    date: selectedDate,
                    film_id: <?php echo $film_id; ?>
                }),
            })
            .then((response) => response.json())
            .then((data) => {
                console.log(data)
                // Reset trạng thái ghế
                document.querySelectorAll('.seat').forEach((seat) => {
                    seat.classList.remove('selected');
                    seat.classList.remove('reserved');
                });

                // Đánh dấu các ghế đã được đặt
                data.reservedSeats.forEach((seat) => {
                    document.querySelector(`.seat[value="${seat}"]`).classList.add('reserved');
                });
            })
            .catch((error) => {
                console.error('Error:', error);
            });
        document.getElementById("selected_time").value = button.value;
    }

    var seats = document.getElementsByClassName("seat");
    for (let i = 0; i < seats.length; i++) {
        seats[i].addEventListener("click", (e) => {
            e.preventDefault();
            seats[i].classList.toggle("selected");
            var selectedSeats = [];
            document.querySelectorAll('.seat.selected').forEach(function(seat) {
                if (!seat.classList.contains("reserved"))
                    selectedSeats.push(seat.value);
            });
            document.getElementById("seats").value = selectedSeats.join(",");
        });
    }
</script>
<?php

?>