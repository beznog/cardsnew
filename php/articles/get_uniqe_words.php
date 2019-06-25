<?php 
	include "../lingvoAPI/lingvo_functions.php";
	include "../articles/articles_functions.php";

	$text_arr['text'] = format_text($_POST['text']);
	$text_arr['words'] = array();

	$words = preg_split("/[\s]+/", format_text($text_arr['text']));
	$words = format_array($words);

	$session_token = get_token("MDgyNWNhNzAtMmM5ZC00NGRiLWI5MjMtZGQ4NTg0ODZiNjcxOjNlZGQ0ZGUyNDFmMDRmYmViZWRkMzRmYjdlMThmNTE1");
	$translation_http_context = create_http_context(array(
									'method' => 'GET', 
									'header' => "Content-type: application/x-www-form-urlencoded\r\n".
												"Authorization: Bearer ".
												$session_token
									)
								);

	foreach ($words as $key => $value) {
		$text_arr['words'][] = array('word' => $value, 'translation' => get_translate($translation_http_context, $value, 1031, 1049, $session_token, 2));
	}

	echo json_encode($text_arr);
?>