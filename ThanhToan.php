<?php
header('Content-Type: application/json');
require_once("libs/db.php");
$input = json_decode(file_get_contents('php://input'), true);
$seat = explode(',', $input['seat']);
echo json_encode(['seat' => $seat]);
