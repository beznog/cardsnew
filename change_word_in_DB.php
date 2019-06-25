<?php include "connection.php"; /*Подключение к БД*/?>

<?php 
	$postSQL= 'UPDATE words SET '.$_POST['column'].' = '.$_POST['val'].' WHERE id = '.$_POST['id'].'';
	$data = mysqli_query($link, $postSQL);
	$requestRes['result'] = 'success';
	echo json_encode($requestRes);
?>