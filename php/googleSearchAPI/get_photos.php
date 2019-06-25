<?php
    include "../mylib/functions.php";
	include "../googleSearchAPI/functions.php";
    
    /*
    Адрес админки Google API (100 запросов в сутки)
	https://console.developers.google.com/apis/dashboard?project=words-cards-168209&duration=P1D
	*/

    $word = &$_GET['word'];
    $photosNum = 4;
    $serverKey = 'AIzaSyC_pAIQXLFc-SpJpSZKQOhkWhWFusTOMWM';
    $searchId = '013870468293562395903:fi-3encgckk';

	$result_arr = get_photos_by_word($word, $photosNum, $serverKey, $searchId);

    /*Тестовые данные*/
/*    $result_arr = json_decode('[{"imageUrl": "https://s-media-cache-ak0.pinimg.com/736x/f1/34/16/f134160fb3d77890f322593b01b98616.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSEtpJ_Rs-1NgHnyQQLDNm2xqHnH1IWVIpPKflLJLC-N3vEAkNYIJ0CTkzXg"},{"imageUrl": "http://www.duden.de/_media_/full/S/Stuhl-201100281861.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmf3pg6r5B1i3uUEJPzlrEsPpglzJsz58xgGh7V0ic6eEs16eTq917RUMWUQ"},{"imageUrl": "https://s-media-cache-ak0.pinimg.com/736x/04/9a/c2/049ac2dd6c4c60d5a0cda88575e574a9.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSu6PNS23Hxnpvea5tmB2BotJpSkC2ik8YQSaqW0EKrhqS8dynBLLeHGM"},{"imageUrl": "http://static.schoener-wohnen.de/bilder/04/eb/55327/galleryimage/sw201508081-stuhl-rolf-benz-640-rolf-benz.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrheBeM61Vq2fZyw_11QUBLByA97QvcHCkkbk8Kp_sRxx9HXQSJdhlY78"},{"imageUrl": "https://s-media-cache-ak0.pinimg.com/736x/f2/e1/f2/f2e1f2b098133c5a233b6b4f9c750b53.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZsog89_lVHGvMJNRE02ElqkPp_9sl-rVr5QBCLMOdAYqatOfz6RWbNa0t"},{"imageUrl": "https://www.roller.de/medias/sys_master/root/h4c/hf1/9012043251742/0344006100-1600Wx1600H.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3prpL0TAhj4bhkz3qHdH9IUSDQH4OeXyGvrubyd_nSw0T72cdAnggDQG3"},{"imageUrl": "https://cdn1.cairo.de/out/pictures/generated/product/1/1024_1024_80/stuhl-eames-plastic-side-chair-weiss-110501.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScHiymUmXf4GMvv5RYik9UNOrMEBV_jzesnijtG-Ns7ZONNlGbrn9t_4A"},{"imageUrl": "https://s-media-cache-ak0.pinimg.com/originals/6f/e3/d7/6fe3d7cf137086207a1592e3bbedcdf5.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpe660WjAWO8MmVYN_O-2kJWH1LYyIkFlN3J5o52OJsiyiRxgUAnQqLWAPEA"},{"imageUrl": "https://www.das-rote-paket.de/media/catalog/product/cache/1/image/1800x/040ec09b1e35df139433887a97daa66f/1/3/134.stuhl-diago_28.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlG-fxxtJIqKqOPZQUtScpAFFq2LL6eCKHat8UKWnB9j3zep-RY-WKTpza"},{"imageUrl": "https://s-media-cache-ak0.pinimg.com/736x/fa/82/79/fa82799fbc7fd1e94d2050c9c1f9fc2a.jpg","thumbnailUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-g6rxy2tp3B1K9-j3IBoHXOP-r3Csc0k6vGxux_p4LhgbmuVOB4DbOA2"}]');*/

	echo json_encode($result_arr);


/* Пример ответа от сервера Google
{
 "kind": "customsearch#search",
 "url": {
  "type": "application/json",
  "template": "https://www.googleapis.com/customsearch/v1?q={searchTerms}&num={count?}&start={startIndex?}&lr={language?}&safe={safe?}&cx={cx?}&cref={cref?}&sort={sort?}&filter={filter?}&gl={gl?}&cr={cr?}&googlehost={googleHost?}&c2coff={disableCnTwTranslation?}&hq={hq?}&hl={hl?}&siteSearch={siteSearch?}&siteSearchFilter={siteSearchFilter?}&exactTerms={exactTerms?}&excludeTerms={excludeTerms?}&linkSite={linkSite?}&orTerms={orTerms?}&relatedSite={relatedSite?}&dateRestrict={dateRestrict?}&lowRange={lowRange?}&highRange={highRange?}&searchType={searchType}&fileType={fileType?}&rights={rights?}&imgSize={imgSize?}&imgType={imgType?}&imgColorType={imgColorType?}&imgDominantColor={imgDominantColor?}&alt=json"
 },
 "queries": {
  "request": [
   {
    "title": "Google Custom Search - stuhl",
    "totalResults": "22600000",
    "searchTerms": "stuhl",
    "count": 10,
    "startIndex": 1,
    "inputEncoding": "utf8",
    "outputEncoding": "utf8",
    "safe": "off",
    "cx": "013870468293562395903:fi-3encgckk",
    "fileType": "jpg",
    "searchType": "image",
    "imgSize": "xlarge"
   }
  ],
  "nextPage": [
   {
    "title": "Google Custom Search - stuhl",
    "totalResults": "22600000",
    "searchTerms": "stuhl",
    "count": 10,
    "startIndex": 11,
    "inputEncoding": "utf8",
    "outputEncoding": "utf8",
    "safe": "off",
    "cx": "013870468293562395903:fi-3encgckk",
    "fileType": "jpg",
    "searchType": "image",
    "imgSize": "xlarge"
   }
  ]
 },
 "context": {
  "title": "words"
 },
 "searchInformation": {
  "searchTime": 0.507881,
  "formattedSearchTime": "0.51",
  "totalResults": "22600000",
  "formattedTotalResults": "22,600,000"
 },
 "items": [
  {
   "kind": "customsearch#result",
   "title": "17 Best ideas about Stuhl Retro on Pinterest | Retro-stühle, Retro ...",
   "htmlTitle": "17 Best ideas about \u003cb\u003eStuhl\u003c/b\u003e Retro on Pinterest | Retro-\u003cb\u003estühle\u003c/b\u003e, Retro ...",
   "link": "https://s-media-cache-ak0.pinimg.com/736x/f1/34/16/f134160fb3d77890f322593b01b98616.jpg",
   "displayLink": "www.pinterest.com",
   "snippet": "17 Best ideas about Stuhl Retro on Pinterest | Retro-stühle, Retro ...",
   "htmlSnippet": "17 Best ideas about \u003cb\u003eStuhl\u003c/b\u003e Retro on Pinterest | Retro-\u003cb\u003estühle\u003c/b\u003e, Retro ...",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.pinterest.com/explore/stuhl-retro/",
    "height": 736,
    "width": 736,
    "byteSize": 28631,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSEtpJ_Rs-1NgHnyQQLDNm2xqHnH1IWVIpPKflLJLC-N3vEAkNYIJ0CTkzXg",
    "thumbnailHeight": 141,
    "thumbnailWidth": 141
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Duden | Stuhl | Rechtschreibung, Bedeutung, Definition, Synonyme ...",
   "htmlTitle": "Duden | \u003cb\u003eStuhl\u003c/b\u003e | Rechtschreibung, Bedeutung, Definition, Synonyme ...",
   "link": "http://www.duden.de/_media_/full/S/Stuhl-201100281861.jpg",
   "displayLink": "www.duden.de",
   "snippet": "Duden | Stuhl | Rechtschreibung, Bedeutung, Definition, Synonyme ...",
   "htmlSnippet": "Duden | \u003cb\u003eStuhl\u003c/b\u003e | Rechtschreibung, Bedeutung, Definition, Synonyme ...",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "http://www.duden.de/rechtschreibung/Stuhl",
    "height": 700,
    "width": 698,
    "byteSize": 51767,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmf3pg6r5B1i3uUEJPzlrEsPpglzJsz58xgGh7V0ic6eEs16eTq917RUMWUQ",
    "thumbnailHeight": 140,
    "thumbnailWidth": 140
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Die besten 17 Ideen zu Stühle auf Pinterest",
   "htmlTitle": "Die besten 17 Ideen zu \u003cb\u003eStühle\u003c/b\u003e auf Pinterest",
   "link": "https://s-media-cache-ak0.pinimg.com/736x/04/9a/c2/049ac2dd6c4c60d5a0cda88575e574a9.jpg",
   "displayLink": "www.pinterest.de",
   "snippet": "Die besten 17 Ideen zu Stühle auf Pinterest",
   "htmlSnippet": "Die besten 17 Ideen zu \u003cb\u003eStühle\u003c/b\u003e auf Pinterest",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.pinterest.de/explore/st%C3%BChle/",
    "height": 1061,
    "width": 736,
    "byteSize": 58722,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSu6PNS23Hxnpvea5tmB2BotJpSkC2ik8YQSaqW0EKrhqS8dynBLLeHGM",
    "thumbnailHeight": 150,
    "thumbnailWidth": 104
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Stühle für Esszimmer und Küche: Friedlicher Freund: \"Roc 902\" von Cor",
   "htmlTitle": "\u003cb\u003eStühle\u003c/b\u003e für Esszimmer und Küche: Friedlicher Freund: &quot;Roc 902&quot; von Cor",
   "link": "http://static.schoener-wohnen.de/bilder/04/eb/55327/galleryimage/sw201508081-stuhl-rolf-benz-640-rolf-benz.jpg",
   "displayLink": "www.schoener-wohnen.de",
   "snippet": "Stühle für Esszimmer und Küche: Friedlicher Freund: \"Roc 902\" von Cor",
   "htmlSnippet": "\u003cb\u003eStühle\u003c/b\u003e für Esszimmer und Küche: Friedlicher Freund: &quot;Roc 902&quot; von Cor",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "http://www.schoener-wohnen.de/moebel/34354-bstr-stuehle-fuer-esszimmer-und-kueche",
    "height": 1035,
    "width": 620,
    "byteSize": 47557,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrheBeM61Vq2fZyw_11QUBLByA97QvcHCkkbk8Kp_sRxx9HXQSJdhlY78",
    "thumbnailHeight": 150,
    "thumbnailWidth": 90
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Die besten 17 Ideen zu Stühle auf Pinterest",
   "htmlTitle": "Die besten 17 Ideen zu \u003cb\u003eStühle\u003c/b\u003e auf Pinterest",
   "link": "https://s-media-cache-ak0.pinimg.com/736x/f2/e1/f2/f2e1f2b098133c5a233b6b4f9c750b53.jpg",
   "displayLink": "www.pinterest.de",
   "snippet": "Die besten 17 Ideen zu Stühle auf Pinterest",
   "htmlSnippet": "Die besten 17 Ideen zu \u003cb\u003eStühle\u003c/b\u003e auf Pinterest",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.pinterest.de/explore/st%C3%BChle/",
    "height": 981,
    "width": 736,
    "byteSize": 39267,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZsog89_lVHGvMJNRE02ElqkPp_9sl-rVr5QBCLMOdAYqatOfz6RWbNa0t",
    "thumbnailHeight": 149,
    "thumbnailWidth": 112
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Stuhl ROM-G - braun - Kernbuche massiv | Holzstühle | Stühle ...",
   "htmlTitle": "\u003cb\u003eStuhl\u003c/b\u003e ROM-G - braun - Kernbuche massiv | Holzstühle | \u003cb\u003eStühle\u003c/b\u003e ...",
   "link": "https://www.roller.de/medias/sys_master/root/h4c/hf1/9012043251742/0344006100-1600Wx1600H.jpg",
   "displayLink": "www.roller.de",
   "snippet": "Stuhl ROM-G - braun - Kernbuche massiv | Holzstühle | Stühle ...",
   "htmlSnippet": "\u003cb\u003eStuhl\u003c/b\u003e ROM-G - braun - Kernbuche massiv | Holzstühle | \u003cb\u003eStühle\u003c/b\u003e ...",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.roller.de/M%C3%B6bel/St%C3%BChle-%26-Hocker/St%C3%BChle/Holzstuehle/Stuhl-ROM-G---braun---Kernbuche-massiv/p/0344006100",
    "height": 750,
    "width": 750,
    "byteSize": 45813,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3prpL0TAhj4bhkz3qHdH9IUSDQH4OeXyGvrubyd_nSw0T72cdAnggDQG3",
    "thumbnailHeight": 141,
    "thumbnailWidth": 141
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Designer-Stühle – sofort lieferbar! | cairo.de",
   "htmlTitle": "Designer-\u003cb\u003eStühle\u003c/b\u003e – sofort lieferbar! | cairo.de",
   "link": "https://cdn1.cairo.de/out/pictures/generated/product/1/1024_1024_80/stuhl-eames-plastic-side-chair-weiss-110501.jpg",
   "displayLink": "www.cairo.de",
   "snippet": "Designer-Stühle – sofort lieferbar! | cairo.de",
   "htmlSnippet": "Designer-\u003cb\u003eStühle\u003c/b\u003e – sofort lieferbar! | cairo.de",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.cairo.de/Sitzmoebel/Stuehle/",
    "height": 928,
    "width": 696,
    "byteSize": 49374,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScHiymUmXf4GMvv5RYik9UNOrMEBV_jzesnijtG-Ns7ZONNlGbrn9t_4A",
    "thumbnailHeight": 147,
    "thumbnailWidth": 110
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Eames DSW Stuhl in Weiß | Wohnung | Pinterest | Eames and House",
   "htmlTitle": "Eames DSW \u003cb\u003eStuhl\u003c/b\u003e in Weiß | Wohnung | Pinterest | Eames and House",
   "link": "https://s-media-cache-ak0.pinimg.com/originals/6f/e3/d7/6fe3d7cf137086207a1592e3bbedcdf5.jpg",
   "displayLink": "www.pinterest.com",
   "snippet": "Eames DSW Stuhl in Weiß | Wohnung | Pinterest | Eames and House",
   "htmlSnippet": "Eames DSW \u003cb\u003eStuhl\u003c/b\u003e in Weiß | Wohnung | Pinterest | Eames and House",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.pinterest.com/pin/377880224959244596/",
    "height": 800,
    "width": 800,
    "byteSize": 28276,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpe660WjAWO8MmVYN_O-2kJWH1LYyIkFlN3J5o52OJsiyiRxgUAnQqLWAPEA",
    "thumbnailHeight": 143,
    "thumbnailWidth": 143
   }
  },
  {
   "kind": "customsearch#result",
   "title": "Stuhl DIAGO - Junges Design für Daheim",
   "htmlTitle": "\u003cb\u003eStuhl\u003c/b\u003e DIAGO - Junges Design für Daheim",
   "link": "https://www.das-rote-paket.de/media/catalog/product/cache/1/image/1800x/040ec09b1e35df139433887a97daa66f/1/3/134.stuhl-diago_28.jpg",
   "displayLink": "www.das-rote-paket.de",
   "snippet": "Stuhl DIAGO - Junges Design für Daheim",
   "htmlSnippet": "\u003cb\u003eStuhl\u003c/b\u003e DIAGO - Junges Design für Daheim",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.das-rote-paket.de/de/stuhl-diago.html",
    "height": 800,
    "width": 800,
    "byteSize": 39934,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlG-fxxtJIqKqOPZQUtScpAFFq2LL6eCKHat8UKWnB9j3zep-RY-WKTpza",
    "thumbnailHeight": 143,
    "thumbnailWidth": 143
   }
  },
  {
   "kind": "customsearch#result",
   "title": "17 Best ideas about Freischwinger on Pinterest | Retro bank ...",
   "htmlTitle": "17 Best ideas about Freischwinger on Pinterest | Retro bank ...",
   "link": "https://s-media-cache-ak0.pinimg.com/736x/fa/82/79/fa82799fbc7fd1e94d2050c9c1f9fc2a.jpg",
   "displayLink": "www.pinterest.com",
   "snippet": "17 Best ideas about Freischwinger on Pinterest | Retro bank ...",
   "htmlSnippet": "17 Best ideas about Freischwinger on Pinterest | Retro bank ...",
   "mime": "image/jpeg",
   "image": {
    "contextLink": "https://www.pinterest.com/explore/freischwinger/",
    "height": 736,
    "width": 736,
    "byteSize": 97684,
    "thumbnailLink": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-g6rxy2tp3B1K9-j3IBoHXOP-r3Csc0k6vGxux_p4LhgbmuVOB4DbOA2",
    "thumbnailHeight": 141,
    "thumbnailWidth": 141
   }
  }
 ]
}*/
?>