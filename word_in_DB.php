<?php include "connection.php"; /*Подключение к БД*/?>

<?php 
	if ($_POST['type']=="get_words") {
		
		$postSQL= "SELECT * FROM `words` WHERE hide!= 1";
		$data = mysqli_query($link, $postSQL);

		while ($res = mysqli_fetch_assoc($data)) { 
			$postSQL2= "SELECT label_id FROM `cards`.`words-labels` where (word_id='".$res['id']."')";
			$data2 = mysqli_query($link, $postSQL2);

			while ($labelsResult = mysqli_fetch_assoc($data2)) {
				$postSQL3= "SELECT name FROM `cards`.`labels` where (id='".$labelsResult['label_id']."')";
				$data3 = mysqli_query($link, $postSQL3);

				while ($labelsNames = mysqli_fetch_assoc($data3)) {
					$labelsList[] = trim(mb_strtolower($labelsNames['name'], 'UTF-8'));
				}

				if ($labelsList){
					$res['labels'] = $labelsList;
				}
			}
			$labelsList = array();
			$result[] = $res;
		}
		//shuffle($result);
		echo json_encode($result);
	}
	elseif ($_GET['action']=="filter") { // Новая ветка для получения элементов из базы по параметрам из URL
		
		/* TODO LIST
			1. Передача в одном GET параметре нескольких значений
			2. Создать модель в виде объекта где описывалась бы структура параметров (какие основные - типа type, а какие дочерние типа article, так же есть общие, например, labels)
			3. Собирать строку с параметрами для запроса с учетом модели из п.2
			4. Не допускать к запросу параметров которых нет в таблице базы с учетом модели из п.2
		*/
		
		
		/* Модель всех параметров. Нужно сделать так, чтобы из нее брала свою логику и клиентская часть и фильтр слов 
		
		$paramsModel = array(
						array('name' => 'word_type',
						'type' => 'radio_buttons',
						'elements' => array('noun','verb','adjective','other'),
						'parent' => ''),
						
						array('name' => 'article_type',
						'type' => 'radio_buttons',
						'elements' => array('der','die','das','die(pl)'),
						'parent' => 'word_type(noun)'),
						
						array('name' => 'plural',
						'type' => 'select',
						'elements' => array(),
						'parent' => array('article_type(der)','article_type(die)','article_type(das)')),
						
						array('name' => 'sich',
						'type' => 'checkbox',
						'elements' => array('V + sich'),
						'parent' => 'word_type(verb)'),
						
						array('name' => 'preposition',
						'type' => 'checkbox',
						'elements' => array('V + preposition'),
						'parent' => 'word_type(verb)'),
						
						array('name' => 'partizip_modal_verb',
						'type' => 'radio_buttons',
						'elements' => array('haben','sein'),
						'parent' => 'word_type(verb)'),
						
						array('name' => 'regularity',
						'type' => 'radio_buttons',
						'elements' => array('regular','irregular'),
						'parent' => 'word_type(verb)'),
						
						array('name' => 'irregular_forms',
						'type' => 'text_inputs',
						'elements' => array('prasens','prateritum','partizip'),
						'parent' => 'regularity(irregular)'),
						
						array('name' => 'label',
						'type' => 'text_inputs_button',
						'elements' => array(),
						'parent' => ''),
						
						array('name' => 'show_labels',
						'type' => 'radio_buttons',
						'elements' => array('Show all labels'),
						'parent' => ''),
						
						array('name' => 'all_labels',
						'type' => 'labels',
						'elements' => array(),
						'parent' => 'show_labels(Show all labels)'),
						
						array('name' => 'show_add_params',
						'type' => 'radio_buttons',
						'elements' => array('Show additional params'),
						'parent' => ''),
						
						array('name' => 'importance',
						'type' => 'counter',
						'elements' => array('importance'),
						'parent' => 'show_add_params(Show additional params)'),
						
						array('name' => 'complexity',
						'type' => 'counter',
						'elements' => array('complexity'),
						'parent' => 'show_add_params(Show additional params)'),
						
						array('name' => 'knowledge',
						'type' => 'counter',
						'elements' => array('knowledge'),
						'parent' => 'show_add_params(Show additional params)'),
						
						array('name' => 'image',
						'type' => 'text_inputs',
						'elements' => array('Image URL'),
						'parent' => 'show_add_params(Show additional params)'),
						
						array('name' => 'examples',
						'type' => 'textareas',
						'elements' => array('Using examples'),
						'parent' => 'show_add_params(Show additional params)')); // Создаем модель параметров
		*/
		
		
		
		foreach ($_GET as $key => $value) {
			$getParams[$key] = explode(",", $value);
		}
		
		unset($getParams['action']); // HARDCODE action в запросе к базе нам уже не нужен
		
		if (count($getParams) > 0) { // есть ли элементы в массиве
			$i = 0;
			foreach ($getParams as $key => $value) { // перебираем массив и составляем строку для передачи в запрос
				$count = count($value);
				$j = 1;
				foreach ($value as $item) {
					$paramsStr = $paramsStr.'name="'.$item.'"';
					if($j!=$count){
						$paramsStr = $paramsStr.' OR ';
					}
					$j++;
				}
				$i++;
				
				/*if ($i == count($getParams)) { // в конце добавляем проверку на нескрытость
					$paramsStr = $paramsStr.'hide!= 1';
				}*/
			}
		}
		
		
		$postSQL= "SELECT id FROM `labels` WHERE (".mb_strtolower($paramsStr, 'UTF-8').")";
		$data = mysqli_query($link, $postSQL);
		$words_ids = array();
		
		while ($res = mysqli_fetch_assoc($data)) {
			$postSQL2= "SELECT word_id FROM `cards`.`words-labels` where (label_id='".$res['id']."')";
			$data2 = mysqli_query($link, $postSQL2);

			while ($labelsResult = mysqli_fetch_assoc($data2)) {
				if (!in_array($labelsResult['word_id'], $words_ids)) {
					/*Собираем массив id слов без повторений*/
                    $words_ids[] = $labelsResult['word_id'];
				}
			}
		}

		foreach ($words_ids as $value) {
			$postSQL3= "SELECT * FROM `cards`.`words` where (id='".$value."' AND hide!=1)";
			$data3 = mysqli_query($link, $postSQL3);
			
			while ($res = mysqli_fetch_assoc($data3)) {
                $result[] = $res;
			}
		}
		echo json_encode($result);
	}
	elseif ($_POST['type']=="delete") {
		$postSQL= "DELETE FROM `words` WHERE id='".$_POST['id']."'";
		$data = mysqli_query($link, $postSQL);
	}
	else {
		if ($_POST['word'] || $_POST['translation']) {
			$test = false;
			if ($_POST['type']=='add_without_test') {
				$test = true;
			}
			else {
				$postSQL= "SELECT * FROM `cards`.`words` where (word='".mb_strtolower($_POST['word'], 'UTF-8')."')";
				$data = mysqli_query($link, $postSQL);
				$res = mysqli_fetch_assoc($data);
				
				if($res){
					$result['result'] = 'double';
					while(list($key, $value) = each($res)) {
						$result['object'][$key] = $value;
					}
					echo json_encode($result);
				}
				else {
					$test = true;
				}
			}
			if($test) {
				$postSQL= "INSERT INTO `cards`.`words` (`id`, `type`, `word`, `translate`, `article`, `plural`, `sich`, `preposition`, `regularity`, `prasens`, `prateritum`, `partizip`, `modal_verb`, `importance`, `complexity`, `knowledge`, `image`, `thumbnail`, `examples`, `themes`, `date`) VALUES (NULL, '".mb_strtolower($_POST['word_type'], 'UTF-8')."', '".trim(mb_strtolower($_POST['word'], 'UTF-8'))."', '".trim(mb_strtolower($_POST['translation'], 'UTF-8'))."', '".mb_strtolower($_POST['article_type'], 'UTF-8')."', '".mb_strtolower($_POST['plural'], 'UTF-8')."', '".mb_strtolower($_POST['sich'], 'UTF-8')."', '".mb_strtolower($_POST['preposition_verb'], 'UTF-8')."', '".mb_strtolower($_POST['regularity'], 'UTF-8')."', '".trim(mb_strtolower($_POST['prasens'], 'UTF-8'))."', '".trim(mb_strtolower($_POST['prateritum'], 'UTF-8'))."', '".trim(mb_strtolower($_POST['partizip'], 'UTF-8'))."', '".mb_strtolower($_POST['partizip_modal_verb'], 'UTF-8')."', '".trim(mb_strtolower($_POST['importance'], 'UTF-8'))."', '".trim(mb_strtolower($_POST['complexity'], 'UTF-8'))."', '".trim(mb_strtolower($_POST['knowledge'], 'UTF-8'))."', '".trim($_POST['image'])."', '".trim($_POST['thumbnail'])."', '".trim(mb_strtolower($_POST['examples'], 'UTF-8'))."', '".mb_strtolower($_POST['themes'], 'UTF-8')."', '".date('Y-m-d H:i:s')."');";
				$data = mysqli_query($link, $postSQL);
				$lastWordId = mysqli_insert_id($link);
				
				if($_POST['labels']){
					$labelsArr = explode(",", trim(mb_strtolower($_POST['labels'], 'UTF-8'))); 
					$uniqueLabels = array_unique($labelsArr);
					
					while(list($key, $value) = each($uniqueLabels)) {
						$postSQL= "INSERT IGNORE INTO labels (id, name, date) VALUES (NULL, '".$value."', '".date('Y-m-d H:i:s')."')";
						$data = mysqli_query($link, $postSQL);
						$lastLabelId = mysqli_insert_id($link);
						if ($lastLabelId==0) {
							$postSQL= "SELECT id FROM `cards`.`labels` where (name='".$value."')";
							$data = mysqli_query($link, $postSQL);
							$res = mysqli_fetch_assoc($data);
							$labelsIds[$res['id']] = $lastWordId;
						}
						else {
							$labelsIds[$lastLabelId] = $lastWordId;
						}
					}
					
					while(list($key, $value) = each($labelsIds)) {
						$postSQL= "INSERT INTO `cards`.`words-labels` (word_id, label_id, date) VALUES ('".$value."', '".$key."', '".date('Y-m-d H:i:s')."')";
						$data = mysqli_query($link, $postSQL);
					}
				}
				$requestRes['result'] = 'success';
				echo json_encode($requestRes);
			}
		}
	}
?>