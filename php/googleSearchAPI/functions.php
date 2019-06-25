<?php 
	function get_photos_by_word($word, $photosNum, $serverKey, $searchId) {
        $url = 'https://www.googleapis.com/customsearch/v1'.'?'.'key='.$serverKey.'&'.'cx='.$searchId.'&'.'q='.$word.'&searchType=image&fileType=jpg&imgSize=medium&alt=json';

        if ($request_result = @file_get_contents($url, false, NULL)) {
			$request_result = json_decode($request_result, true);

			$photosArr  = array();

			foreach ($request_result['items'] as $value) {
				$photosArr[] = array('imageUrl' => $value['link'], 'thumbnailUrl' => $value['image']['thumbnailLink']);
			}

			return $photosArr;
		}
		else {
			return 'no result';
		}
	}
?>