<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, HEAD, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// returns a list of files for a given identifier
$clientId = $_GET['clientId'] ?? '';
$filesDir = "uploads/$clientId";
$files = [];

if (file_exists($filesDir) && is_dir($filesDir)) {
    $files = scandir($filesDir);
    $files = array_diff($files, ['.', '..']);
}

header('Content-Type: application/json');
echo json_encode(['files' => array_values($files)]);

?>