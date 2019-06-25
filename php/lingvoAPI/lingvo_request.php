<?php

	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);

	include "../lingvoAPI/lingvo_functions.php";

	$app_key = "MDgyNWNhNzAtMmM5ZC00NGRiLWI5MjMtZGQ4NTg0ODZiNjcxOjNlZGQ0ZGUyNDFmMDRmYmViZWRkMzRmYjdlMThmNTE1";
	$german_lang_id = 1031;

	$wordsArr = array(
		'Ausladeplatz',
		'Ausladerampe',
		'Ausladestelle',
		'Ausladung',
		'Auslage',
		'Auslage-',
		'Auslader',
		'Auslagenarrangeur',
		'Auslagenfenster',
		'Auslagenpauschale',
		'Auslagenscheibe',
		'Auslagenstück',
		'Auslagentisch',
		'Auslagenvorschuß',
		'auslagern'
	);

	$token = get_token($app_key);

	$forms_arr = get_word_forms($wordsArr, 1031, $token);

	echo json_encode($forms_arr);
?>