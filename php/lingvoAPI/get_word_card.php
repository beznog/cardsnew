<?php
	include "../lingvoAPI/lingvo_functions.php";
	include "../articles/articles_functions.php";

	$word = &$_GET['word'];
	$words = array($word);
	$words = format_array($words);

	$session_token = get_token("MDgyNWNhNzAtMmM5ZC00NGRiLWI5MjMtZGQ4NTg0ODZiNjcxOjNlZGQ0ZGUyNDFmMDRmYmViZWRkMzRmYjdlMThmNTE1");
	
	$translation_http_context = create_http_context(array(
								'method' => 'GET', 
								'header' => "Content-type: application/x-www-form-urlencoded\r\n".
											"Authorization: Bearer ".
											$session_token
								)
							);

    $word_forms = get_word_forms($word, 1031, $session_token);

    $new_word_forms = exact_match_elements('Lexem', $word, $word_forms);

	$priorityWordForm = get_element_by_priority('PartOfSpeech', 
		                                        array(
		                                        	'Verb' => 4, 
		                                        	'Substantiv' => 3, 
		                                        	'Adjektiv' => 2, 
		                                        	'Adverb' => 1
		                                        ), 
		                                        $new_word_forms);

    $resultArr = format_word_form($priorityWordForm);

    $translation = get_translate($translation_http_context, $word, 1031, 1049, $session_token, 2);
    if ($translation['type']=='translation' && count($translation['words'])) {
        $translation = implode(", ", $translation['words']);
        $resultArr['translation'] = format_translation($translation);
    }
    else {
    	$resultArr['translation'] = '';
    }
    
	echo json_encode($resultArr);
?>