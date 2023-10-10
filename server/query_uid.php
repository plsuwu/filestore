<?php 

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, HEAD, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

$uid = $_GET['uid'] ?? ''; // url params
$check_dir = "uploads/$uid";

// let client know if uid exists
if (file_exists($check_dir)) {
    header('Content-Type: application/json');
    echo json_encode(['status' => '200', 'message' => 'uid found.']);
} else {
    header('Content-Type: application/json');
    echo json_encode(['status' => '404', 'message' => 'failed to find uid.']);
}

// do we need these trailers for PHP?? idk
?>