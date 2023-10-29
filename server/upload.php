<?php

// CORS headers - using wildcards here because i dont care
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, HEAD, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// if a file exists, rename it to avoid overwriting
function getUniqueFilename($targetDir, $originalFilename)
{
    $filenameWithoutExt = pathinfo($originalFilename, PATHINFO_FILENAME);
    $extension = pathinfo($originalFilename, PATHINFO_EXTENSION);
    $newFilename = $originalFilename;
    $counter = 1;
    while (file_exists("$targetDir/$newFilename")) {
        $newFilename = $filenameWithoutExt . " ($counter)." . $extension;
        $counter++;
    }
    return $newFilename;
}

// check for file & identifier
if ($_FILES && isset($_POST['clientId'])) {
    $uploads_dir = './uploads';
    $clientId = $_POST['clientId'];
    $user_upload_dir = "$uploads_dir/$clientId";

    // create a directory based on identifier if nonexistent
    if (!is_dir($user_upload_dir)) {
        mkdir($user_upload_dir, 0777, true);
    }

    // allow arbitrary filetypes
    if ($_FILES['file']['error'] == UPLOAD_ERR_OK && is_uploaded_file($_FILES['file']['tmp_name'])) {
        $uniqueFilename = getUniqueFilename($user_upload_dir, $_FILES['file']['name']);  // ensure filename is unique

        // move the uploaded file from tmp dir to indentified directory
        if (move_uploaded_file($_FILES['file']['tmp_name'], "$user_upload_dir/$uniqueFilename")) {

            // send a response
            header("Content-Type: application/json");
            echo json_encode(['status' => 'success', 'message' => 'upload successful!', 'filename' => $uniqueFilename]);
        } else {
            header("Content-Type: application/json");
            echo json_encode(['status' => 'error', 'message' => 'file move operation failed.']);
        }
    } else {
        header("Content-Type: application/json");
        echo json_encode(['status' => 'error', 'message' => 'upload failed.']);
    }
} else {
    header("Content-Type: application/json");
    echo json_encode(['status' => 'error', 'message' => 'file or clientId missing.']);
}

?>
