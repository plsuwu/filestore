<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, HEAD, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// read json from request body + convert to associative array
$json_str = file_get_contents('php://input');
$json_obj = json_decode($json_str, true);

$clientId = $json_obj['clientId'] ?? '';
$filename = $json_obj['filename'] ?? '';

$response = ['status' => 'error', 'message' => 'Failed to delete file.'];

if ($clientId && $filename) {

    $filePath = "./uploads/$clientId/$filename";
    if (realpath($filePath) === false || strpos(realpath($filePath), realpath("uploads/$clientId")) !== 0) {
        $response['message'] = 'Invalid file path.';
    }
    elseif (!file_exists($filePath) || !is_file($filePath)) {
        $response['message'] = 'File does not exist.';
    }

    // attempt file removal
    elseif (unlink($filePath)) {
        $response['status'] = 'success';
        $response['message'] = 'File deleted successfully.';
    }
}

header('Content-Type: application/json');
echo json_encode($response);

?>