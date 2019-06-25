<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    include "../mylib/functions.php";

	function get_token($app_key) {
		$context_settings = array(
			'method' => 'POST',
			'header'  => "Content-type: application/x-www-form-urlencoded\r\n".
			      "Authorization: Basic ".$app_key
		);
		$url = 'https://developers.lingvolive.com/api/v1.1/authenticate/';

		//$result = file_get_contents($url, false, create_http_context($context_settings), -1, 40000); // doesn't work
        $result = file_get_contents($url, false, create_http_context($context_settings));
        return $result;
	}

	function get_translate($context, $word, $srcLang, $dstLang, $token, $timeout) {
		$url = 'https://developers.lingvolive.com/api/v1/Minicard'.'?'.'text='.$word.'&'.'srcLang='.$srcLang.'&'.'dstLang='.$dstLang;

		if ($request_result = @file_get_contents($url, false, $context)) {
			$request_result = json_decode($request_result, true);
			return $result = array('type' => 'translation', 'words' => preg_split("/[,|;]+\s/", $request_result['Translation']['Translation']));
		}
		else {
			$answer_code = $http_response_header[0];
			if ($answer_code=='HTTP/1.1 404 Not Found') {
				return $error = array('type' => 'error', 'code' => 404, 'text' => 'no word in dictionary');
			}
			else if ($answer_code=='HTTP/1.1 429 ') {
				if (!isset($i)) {
					$i = 0;
				}
				if ($i < 5) {
					get_translate($context, $word, $srcLang, $dstLang, $token, 2.5);
					$i++;
				}
				else {
					return $error = array('code' => 429, 'text' => 'too many requests');
				}
			}
			else {
				return $error = array('text' => '$answer_code');
			}
		}
		sleep($timeout);
	}

	function get_word_forms($word, $lang, $token) {
        $context_settings = array(
			'method' => 'GET',
		    'header' => "Content-type: application/x-www-form-urlencoded\r\n".
			"Authorization: Bearer ".$token
		);

	    $url = 'https://developers.lingvolive.com/api/v1/WordForms'.'?'.'text='.$word.'&'.'lang='.$lang;
	    $result = file_get_contents($url, false, create_http_context($context_settings));

        $result = json_decode($result, true);

		return $result;
	}

	function get_full_words($prefix, $srcLang, $dstLang, $wordsNum, $token) {
		$context_settings = array(
			    'method' => 'GET',
			    'header' => "Content-type: application/x-www-form-urlencoded\r\n".
			      "Authorization: Bearer ".$token
		);

	    $url = 'https://developers.lingvolive.com/api/v1/WordList'.'?'.'prefix='.$prefix.'&'.'srcLang='.$srcLang.'&'.'dstLang='.$dstLang.'&'.'pageSize='.$wordsNum;
	    $result = file_get_contents($url, false, create_http_context($context_settings));

        $result = json_decode($result, true);

        $result_arr = array();

		foreach($result['Headings'] as $key) {
			$result_arr['words'][] = array('word' => $key['Heading'], 'translation' => $key['Translation']);
		}

		if ($result['HasNextPage']) {
			$result_arr['tooManyWords'] = true;
		}

		return $result_arr;
    }

    function format_word_form($wordObj) {

    	function _get_word_type($wordObj) {
    		if ($wordObj['PartOfSpeech']=='Verb') {
                return 'verb';
    		}
    		elseif ($wordObj['PartOfSpeech']=='Substantiv') {
                return 'noun';
            }
    		elseif ($wordObj['PartOfSpeech']=='Adjektiv') {
                return 'adjective';
            }
            else {
                return 'other';
            }
    	}

    	function _get_partizip_modal_type($wordObj) {
    		if ($wordObj['ParadigmJson']['Groups'][2]['Table'][0][0]['Prefix']=="ich bin " || $wordObj['ParadigmJson']['Groups'][2]['Table'][0][0]['Prefix']=="ich habe (bin) ") {
                return 'sein';
            }
            else {
                return 'haben';
            }
    	}

    	function _get_prasens_form($wordObj) {
    		if ($wordObj['ParadigmJson']['Groups'][0]['Table'][2][0]['Value']) {
                return $wordObj['ParadigmJson']['Groups'][0]['Table'][2][0]['Value'];
    		}
    	}

    	function _get_prateritum_form($wordObj) {
    		if ($wordObj['ParadigmJson']['Groups'][1]['Table'][2][0]['Value']) {
                return $wordObj['ParadigmJson']['Groups'][1]['Table'][2][0]['Value'];
    		}
    	}

    	function _get_partizip_form($wordObj) {
    		if ($wordObj['ParadigmJson']['Groups'][2]['Table'][0][0]['Value']) {
    			return $wordObj['ParadigmJson']['Groups'][2]['Table'][0][0]['Value'];
    		}
    	}

    	function _get_article_type($wordObj) {
    		$wordOptions = explode(", ", $wordObj['ParadigmJson']['Grammar']);
    		$articleType = $wordOptions[1];
    		if ($articleType == 'Maskulinum') {
                return 'der';
    		}
    		elseif ($articleType == 'Femininum') {
                return 'die';
    		}
    		elseif ($articleType == 'Neutrum') {
    			return 'das';
    		}
    		elseif ($articleType == 'Plural') {
    			return 'die_plural';
    		}
    	}

    	function _get_plural_form($wordObj) {
    		return format_plural_form($wordObj['ParadigmJson']['Groups'][0]['Table'][1][2]['Value']);
    	}

    	$result['word'] = $wordObj['Lexem'];
    	$result['word_type'] = _get_word_type($wordObj);

        if ($result['word_type']=='verb') {
            $result['partizip_modal_verb'] = _get_partizip_modal_type($wordObj);
            $result['regularity'] = 'irregular';
            $result['prasens'] = _get_prasens_form($wordObj);
            $result['prateritum'] = _get_prateritum_form($wordObj);
            $result['partizip'] = _get_partizip_form($wordObj);
        }
        elseif ($result['word_type']=='noun') {
            $result['article_type'] = _get_article_type($wordObj);
            $result['plural'] = _get_plural_form($wordObj);
        }
        return $result;
    }

    function format_translation($translation) {
        return str_replace('́', '', $translation);
    }

    function format_plural_form($word) {
        return str_replace('*', '', $word);
    }
?>