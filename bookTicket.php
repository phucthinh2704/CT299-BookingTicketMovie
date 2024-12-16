<?php
session_start();
require('libs/db.php');
try {
    $film_id = $_POST['idfilm'] ?? '';  // Movie ID
    $selected_time = $_POST['selected_time'] ?? '';  // Selected showtime
    $seats = $_POST['seats'] ?? '';  // Selected seats
    $user_id = $_POST['iduser'] ?? '';  // User ID
    if (empty($user_id)) {
        echo "<script> alert('Vui lòng đăng nhập');
        window.location.href = 'index.php?mod=detail&film_id=$film_id'; </script>";
    } else {
        if (empty($film_id) || empty($selected_time) || empty($seats) || empty($user_id)) {
            echo "<script> alert('Đặt vé thất bại.Vui lòng chọn đầy đủ thông tin');
        window.location.href = 'index.php?mod=detail&film_id=$film_id'; </script>";
            // exit;

        } else {  // Lấy mảng ghế ngồi
            $seats = explode(',', $seats); // Convert selected seats into an array
            $current_datetime = date('Y-m-d H:i:s');
            // Duyệt mảng ghế và thêm vào bảng ticket
            foreach ($seats as $seat) {
                $query = "insert into tickets set id_user=$user_id,id_showtime=$selected_time,seats='$seat',id_film = $film_id";
                mysqli_query($link, $query);
            }
            $link->close();
            // Success message
            echo '<script> alert("Đặt vé thành công.");
        window.location.href = "ticket.php";
        </script>';
            // header("location:ticket.php");
        }
    }
} catch (Throwable $e) {
    echo "<script> alert('Đặt vé thất bại.Có lỗi xảy ra');
        window.location.href = 'index.php?mod=detail&film_id=$film_id'; </script>";
    // header("location:ticket.php");
}
