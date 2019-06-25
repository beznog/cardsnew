<?php include "connection.php"; /*Подключение к БД*/?>
 
<?php 
	mb_internal_encoding("UTF-8");
	function mb_ucfirst($text) {
		return mb_strtoupper(mb_substr($text, 0, 1)) . mb_substr($text, 1);
	}
	
	$translation = explode(",", trim(mb_strtolower($_POST['value'], 'UTF-8')));
	$translation = array_unique($translation);
	while (list($key, $value) = each($translation)) {
		$translation[$key] = mb_ucfirst($value);
	}
	
	$translation = implode(", ", $translation);
	//$postSQL= 'UPDATE words SET '.$_POST['column'].' = '.$translation.' WHERE id = '.$_POST['id'].'';
	//$data = mysqli_query($link, $postSQL);
	$requestRes['result'] = 'success';
	$requestRes['object'] = $translation;
	echo json_encode($requestRes);
?>