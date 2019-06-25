<?php 
    include '../database/connect_DB.php';
    include '../database/functions.php';
    
    $words = get_words_by_number();

	foreach ($words as $word) {
		$word_id = $word['id'];
		/*Получаем id всех лэйблов связанных со словом*/
		$labels_ids = get_labels_ids_by_word_id($word_id);
		$word['labels'] = array();

		foreach ($labels_ids as $labels_ids_value) {
			/*По id лэйблов получаем их названия*/
			$labels_names = get_labels_names_by_label_id($labels_ids_value);
			/*Добавляем строку в массив слова*/
			$word['labels'] = $labels_names;
		}

		/*Собираем новый массив, с обогащенными лэйблами словами*/
		$result[] = $word;
	}

	echo json_encode($result);
?>