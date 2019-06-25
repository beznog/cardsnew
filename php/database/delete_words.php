<?php  
    include '../database/connect_DB.php';
    include '../database/functions.php';

    $word_id = &$_GET['id'];
    echo json_encode(delete_word_by_id($word_id));
?>