<?php  
    function get_labels_ids_by_word_id($word_id){
        $postSQL= "SELECT label_id FROM `rskes_124972`.`words-labels` where (word_id='".$word_id."')";
		$data = mysql_query($postSQL);

		while ($res = mysql_fetch_assoc($data)) {
			$labels_ids[] = $res['label_id'];
		}

		return $labels_ids;
	}

	function get_labels_names_by_label_id($label_id) {
        $postSQL= "SELECT name FROM `rskes_124972`.`labels` where (id='".$label_id."')";
		$data = mysql_query($postSQL);

		while ($res = mysql_fetch_assoc($data)) {
			$labels_names[] = trim(mb_strtolower($res['name'], 'UTF-8'));
		}

		return $labels_names;
	}

	function get_words_by_number($items_num, $offset_num, $order_type){
		$offset_num = $offset_num ? $offset_num : 0;
		$items_num = $items_num ? $items_num : 1000;
        $order_type = $order_type=='DESC' ? ' ORDER BY id DESC' : '';

        $postSQL = 'SELECT * FROM words WHERE hide!=1'.$order_type.' LIMIT '.$items_num.' OFFSET '.$offset_num;
        $data = mysql_query($postSQL);

        while ($res = mysql_fetch_assoc($data)) {
			$words[] = $res;
		}

		return $words;
	}

	function delete_word_by_id($word_id){
		$postSQL = "DELETE `words-labels`, `words` FROM `words` LEFT JOIN `words-labels` ON `words-labels`.word_id = `words`.id WHERE `words`.id='".$word_id."'";
		$data = mysql_query($postSQL);

		return mysql_fetch_assoc($data);
    }
?>