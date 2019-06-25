<?php 
	include "../lingvoAPI/lingvo_functions.php";
	include "../articles/articles_functions.php";

	$text_arr = array();
	$word = &$_GET['word'];



	$session_token = get_token("MDgyNWNhNzAtMmM5ZC00NGRiLWI5MjMtZGQ4NTg0ODZiNjcxOjNlZGQ0ZGUyNDFmMDRmYmViZWRkMzRmYjdlMThmNTE1");
	$translation_http_context = create_http_context(array(
									'method' => 'GET', 
									'header' => "Content-type: application/x-www-form-urlencoded\r\n".
												"Authorization: Bearer ".
												$session_token
									)
								);

	$text_arr = get_full_words($word, 1031, 1049, 20, $session_token);

	echo json_encode($text_arr);
?>