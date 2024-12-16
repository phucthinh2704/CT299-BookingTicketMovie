<?php
// lấy danh sách ghế đã đặt theo giờ chiếu phim của phim
header('Content-Type: application/json');
require_once("libs/db.php");
$input = json_decode(file_get_contents('php://input'), true);
$date = $input['date'];
$film_id = $input['film_id'];

$sql = "select * from tickets where id_showtime = $date and id_film = $film_id";
$result = mysqli_query($link, $sql);
$reservedSeats = [];
while ($row = $result->fetch_assoc()) {
    $reservedSeats[] = $row['seats'];
}
echo json_encode(['reservedSeats' => $reservedSeats]);