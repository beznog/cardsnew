<?php
	function format_text ($text) {
		$text = trim($text, ' \t.-?!-„“');
		return preg_replace('/[\n]+/', ' ', $text);
	}

	function format_array ($arr) {
		$result = array();
		foreach ($arr as $key => $value) {
			$formatted_word = format_word($value);
			if ($formatted_word && !(in_array($formatted_word, $result))) {
				$result[] = $formatted_word;
			}
		}
		return $result;
	}

	function format_word ($word) {
		$word = preg_replace('/[^a-zA-ZÜüÖöÄäß-–\s]+/', '', $word);
		$word = mb_strtolower($word, 'UTF-8');
		return trim($word, ' .-?!-„“');
	}
?>