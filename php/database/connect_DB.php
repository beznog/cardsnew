<?php
    $HOSTNAME = 'k35.hostenko.com';
    $DATABASE_NAME = 'rskes_124972';
    $LOGIN = 'bbrayfi_124972';
    $PASSWORD = 'd3Nri4699zhG_TB';
    $ERROR_TEXT = 'Error by connecting to database';

    // Подключаемся к MYSQL серверу
    mysql_connect($HOSTNAME, $LOGIN, $PASSWORD) or die($ERROR_TEXT); 
    // Подключаемся к БД
	mysql_select_db($DATABASE_NAME) or die($ERROR_TEXT);
    // Устанавливаем кодировку UTF-8
	mysql_query("SET NAMES 'utf8'");
?>