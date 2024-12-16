<?php
session_start();
require('libs/db.php');
try {
    if (isset($_GET['idTicket'])) {
        $idUser = $_SESSION['user_id'] ? $_SESSION['user_id'] : 0;
        $id = $_GET['idTicket'] !== '' ? $_GET['idTicket'] : 0;
        $query = "delete tickets where id_ticket = $id AND id_user =$idUser ";
        mysqli_query($link, $query);
        echo '<script> alert("Hủy vé thành công."); </script>';
        header("location:ticket.php");
    }
} catch (Throwable $e) {
    echo '<script> alert("Hủy vé thất bại."); </script>';
    header("location:ticket.php");
}
