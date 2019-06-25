<?php
    function create_http_context($settings) {
        $opts = array(
            'http' => array(
                'method'  => $settings['method'],
                'header'  => $settings['header'],
                'content' => '.',
                'timeout' => 60
            ),
            // deactivate ssl verification by https request. On production must be activated
            "ssl"=>array(
                "verify_peer"=>false,
                "verify_peer_name"=>false,
            ),
        );
        return stream_context_create($opts);
    }

    function get_element_by_priority($arrKey, $valuesPriority, $arr) {
        $higherPriority = 0;
        $elementIndex = 0;
        foreach ($arr as $key => $value) {
			if ($valuesPriority[$value[$arrKey]] > $higherPriority) {
                $higherPriority = $valuesPriority[$value[$arrKey]];
                $elementIndex = $key;
			}

            /*HARDCODE START*/
            elseif ($valuesPriority[$value[$arrKey]] == $higherPriority) {
                if (count($value['ParadigmJson']['Groups']) > count($arr[$elementIndex]['ParadigmJson']['Groups'])) {
                    $elementIndex = $key;
                }
            }
            /*HARDCODE END*/

		}
		return $arr[$elementIndex];
    }

    function exact_match_elements($arrKey, $value, $arr) {
        return array_values(array_filter($arr, function($arrValue) use ($value, $arrKey){
            return ($arrValue[$arrKey]===$value);
        }));
    }
?>