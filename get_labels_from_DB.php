<?php include "connection.php"; /*Подключение к БД*/?>

<?php 
	$postSQL= "SELECT * FROM `cardsnew`.`labels`";
		$data = mysqli_query($link, $postSQL);
		
		while ($res = mysqli_fetch_assoc($data)) {
			$result[] = $res;
		}
		echo json_encode($result);
?>