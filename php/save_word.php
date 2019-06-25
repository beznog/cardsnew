<?php 
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);
	
	require_once "connection.php"; /*connect to DB*/

	require_once "get_duplications.php"; /*check if word is already in DB*/

	function saveNewWord ($word, $link, $dbname, $dbtable) {
		$postSQL= "INSERT INTO `cardsnew`.`new_words` (`id`, `word`, `created`) VALUES (NULL, '".trim(mb_strtolower($word, 'UTF-8'))."', CURRENT_TIMESTAMP);";
			$data = mysqli_query($link, $postSQL);
			
			$lastWordId = mysqli_insert_id($link);
				
				//if($_POST['labels']){
				//	$labelsArr = explode(",", trim(mb_strtolower($_POST['labels'], 'UTF-8'))); 
				//	$uniqueLabels = array_unique($labelsArr);
					
				//	while(list($key, $value) = each($uniqueLabels)) {
				//		$postSQL= "INSERT IGNORE INTO labels (id, name, date) VALUES (NULL, '".$value."', '".date('Y-m-d H:i:s')."')";
				//		$data = mysqli_query($link, $postSQL);
				//		$lastLabelId = mysqli_insert_id($link);
				//		if ($lastLabelId==0) {
				//			$postSQL= "SELECT id FROM `cards`.`labels` where (name='".$value."')";
				//			$data = mysqli_query($link, $postSQL);
				//			$res = mysqli_fetch_assoc($data);
				//			$labelsIds[$res['id']] = $lastWordId;
				//		}
				//		else {
				//			$labelsIds[$lastLabelId] = $lastWordId;
				//		}
				//	}
					
				//	while(list($key, $value) = each($labelsIds)) {
				//		$postSQL= "INSERT INTO `cards`.`words-labels` (word_id, label_id, date) VALUES ('".$value."', '".$key."', '".date('Y-m-d H:i:s')."')";
				//		$data = mysqli_query($link, $postSQL);
				//	}
				//}
			//$res = mysqli_fetch_assoc($data);
			//return json_encode($res);
			return array('result' => 'success','id' =>  $lastWordId);
	}

	if (isset($_GET['word'])) {
		$duplications=getDuplications($_GET['word'], $link, $dbname, 'new_words');

		if (!$duplications) {
			echo json_encode(saveNewWord ($_GET['word'], $link, $dbname, 'new_words'));
		}
		else {
			echo json_encode($duplications);
		}
	}
?>