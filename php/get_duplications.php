<?php 
	require_once("connection.php"); /*Подключение к БД*/

	function getDuplications($word, $link, $dbname, $dbtable) {
		$postSQL= "SELECT * FROM ".$dbname.".".$dbtable." where (word='".mb_strtolower($word, 'UTF-8')."')";
		$data = mysqli_query($link, $postSQL);
		$result=array();

		while ($res = mysqli_fetch_assoc($data)) {
			$result[] = $res;
		}
		return $result;
	}
?>