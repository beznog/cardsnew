<?php include "connection.php"; /*Подключение к БД*/?>

<?php 
	$translation = explode(",", trim(mb_strtolower($_POST['val'], 'UTF-8')));
	$translation = array_unique($translation);
	$translation = implode(", ", $translation);
	//$postSQL= 'UPDATE words SET '.$_POST['column'].' = '.$translation.' WHERE id = '.$_POST['id'].'';
	//$data = mysqli_query($link, $postSQL);
	//$requestRes['result'] = 'success';
	//$requestRes['object'] = $translation;
	echo json_encode($translation);
?>