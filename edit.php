<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no">
		<title>MEMORY CARDS</title>
		<link rel="stylesheet" href="css/foundation.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<script src="//code.jquery.com/jquery-1.10.2.js"></script>
		<link rel="stylesheet" href="css/custom2.css" />
	</head>
	<body>
		<nav class="top-bar" data-topbar role="navigation">
		  <section class="top-bar-section">
			<ul class="left">
			  <li class="main"><a href="index.php"><i class="fa fa-clone"></i><div>Memory cards</div></a></li>
			</ul>
			<!-- Right Nav Section -->
			<ul class="right">
			  <li><a href="cards.php"><i class="fa fa-book"></i></a></li>
			<li><a href="index.php"><i class="fa fa-plus-circle"></i></a></li>
			<li class="active"><a href="edit.html"><i class="fa fa-pencil-square-o"></i></a></li>
			</ul>
		  </section>
		</nav>
		<div class="row content">
		    <div class="opener parameter" data-parameter-name="filter" data-default-parameter="true">
                <label class="label opener__label secondary">
				    <input type="checkbox" name="filter" class="label__input" data-children-parameters="filter_labels"></input>
					<span class="label__text">
						Filter by Labels
					</span>
				</label>
			</div>
		</div>
		<form class="form save-word-form">
		    <div class="parameter row" data-parameter-name="word" data-default-parameter="true">
		    	<ul class="deutsche_symbols button-group">
					<li class="button-group__item"><button class="button-group__button button secondary" value="ä">Ä</button></li>
					<li class="button-group__item"><button class="button-group__button button secondary" value="ö">Ö</button></li>
					<li class="button-group__item"><button class="button-group__button button secondary" value="ü">Ü</button></li>
					<li class="button-group__item"><button class="button-group__button button secondary" value="&#223;">ß</button></li>
				</ul>
                <div class="input-text small-12">
					<input type="text" name="word" placeholder="Word" autocomplete="off" class="input-text__input" data-verification="german-word" autofocus/>
					<button class="input-text__cleaner">
						<i class="fa fa-times-circle-o text-clearer"></i>
					</button>		
				</div>
		    </div>
		    <div class="parameter row" data-parameter-name="translation" data-default-parameter="true">
                <div class="input-text small-12">
					<input type="text" name="translation" placeholder="Translation" autocomplete="off" class="input-text__input" data-verification="russian-word" autofocus/>
					<button class="input-text__cleaner">
						<i class="fa fa-times-circle-o text-clearer"></i>
					</button>		
				</div>
		    </div>
			<div class="labels-list parameter row" data-parameter-name="word_type" data-default-parameter="true">
				<label class="label labels-list__item secondary">
				    <input type="radio" name="word_type" value="noun" class="label__input" data-children-parameters="article"></input>
					<span class="label__text">
						Noun
					</span>
				</label>
				<label class="label labels-list__item secondary">
				    <input type="radio" name="word_type" value="verb" class="label__input" data-children-parameters="reflexivity preposition_type modal_verb prasens_form prateritum_form perfekt_form"></input>
					<span class="label__text">
						Verb
					</span>
				</label>
				<label class="label labels-list__item secondary">
				    <input type="radio" name="word_type" value="adjective" class="label__input"></input>
					<span class="label__text">
						Adjective
					</span>
				</label>
				<label class="label labels-list__item secondary">
				    <input type="radio" name="word_type" value="other" class="label__input"></input>
					<span class="label__text">
						Other
					</span>
				</label>
			</div>
			<div class="labels-list parameter row" data-parameter-name="article">
                <label class="label labels-list__item secondary">
				    <input type="radio" name="article" value="der" class="label__input" data-children-parameters="plural_form"></input>
					<span class="label__text">
						der
					</span>
				</label>
				<label class="label labels-list__item secondary">
				    <input type="radio" name="article" value="die" class="label__input" data-children-parameters="plural_form"></input>
					<span class="label__text">
						die
					</span>
				</label>
				<label class="label labels-list__item secondary">
				    <input type="radio" name="article" value="das" class="label__input" data-children-parameters="plural_form"></input>
					<span class="label__text">
						das
					</span>
				</label>
				<label class="label labels-list__item secondary">
				    <input type="radio" name="article" value="die_plural" class="label__input"></input>
					<span class="label__text">
						die(Pl)
					</span>
				</label>
			</div>
			<div class="input-text parameter row" data-parameter-name="plural_form">
				<input type="text" name="plural_form" placeholder="Plural form" autocomplete="off" class="input-text__input" data-verification="german-word"/>
				<button class="input-text__cleaner">
					<i class="fa fa-times-circle-o text-clearer"></i>
				</button>
			</div>
			<div class="labels-list parameter" data-parameter-name="reflexivity">
                <label class="label labels-list__item secondary">
				    <input type="checkbox" name="reflexivity" class="label__input"></input>
					<span class="label__text">
						V + sich
					</span>
				</label>
			</div>
			<div class="labels-list parameter" data-parameter-name="preposition">
                <label class="label labels-list__item secondary">
				    <input type="checkbox" name="preposition" class="label__input" data-children-parameters="preposition_type"></input>
					<span class="label__text">
						V + preposition
					</span>
				</label>
			</div>
			<div class="parameter row" data-parameter-name="preposition_type">
                <select name="preposition_type" class="parameter__select">
					<option value="" disabled selected style='display:none'>Preposition</option>
					<option value="Von+Dativ">Von + Dativ</option>
					<option value="Auf+Akkusativ">Auf + Akkusativ</option>
					<option value="Für+Akkusativ">Für + Akkusativ</option>
					<option value="Mit+Dativ">Mit + Dativ</option>
					<option value="An+Akkusativ">An + Akkusativ</option>
					<option value="An+Dativ">An + Dativ</option>
					<option value="Über+Akkusativ">Über + Akkusativ</option>
					<option value="Gegen+Akkusativ">Gegen + Akkusativ</option>
					<option value="Bei+Dativ">Bei + Dativ</option>
					<option value="Um+Akkusativ">Um + Akkusativ</option>
					<option value="Aus+Dativ">Aus + Dativ</option>
					<option value="Zu+Dativ">Zu + Dativ</option>
					<option value="Vor+Dativ">Vor + Dativ</option>
					<option value="Nach+Dativ">Nach + Dativ</option>
					<option value="In+Akkusativ">In + Akkusativ</option>
					<option value="In+Dativ">In + Dativ</option>
					<option value="Als+Nominativ">Als + Nominativ</option>
				</select>
			</div>
			<div class="input-text parameter row" data-parameter-name="prasens_form">
				<input type="text" name="prasens_form" placeholder="Prasens form" autocomplete="off" class="input-text__input" data-verification="german-word"/>
				<button class="input-text__cleaner">
					<i class="fa fa-times-circle-o text-clearer"></i>
				</button>
			</div>
			<div class="input-text parameter row" data-parameter-name="prateritum_form">
				<input type="text" name="prateritum_form" placeholder="Prateritum form" autocomplete="off" class="input-text__input" data-verification="german-word"/>
				<button class="input-text__cleaner">
					<i class="fa fa-times-circle-o text-clearer"></i>
				</button>
			</div>
			<div class="input-text parameter row" data-parameter-name="perfekt_form">
				<input type="text" name="perfekt_form" placeholder="Perfekt form" autocomplete="off" class="input-text__input" data-verification="german-word"/>
				<button class="input-text__cleaner">
					<i class="fa fa-times-circle-o text-clearer"></i>
				</button>
			</div>
			<div class="parameter row collapse" data-parameter-name="add_label" data-default-parameter="true">
				<div class="input-text small-10">
					<input type="text" name="add_label" placeholder="Enter label" autocomplete="off" class="input-text__input" data-verification="german-word"/>
				    <button class="input-text__cleaner">
					    <i class="fa fa-times-circle-o text-clearer"></i>
				    </button>
				</div>
				<button class="input-text__button button postfix small-2">Add</button>
			</div>
			<div class="labels-list parameter row" data-parameter-name="added_labels">
                <label class="label labels-list__item secondary">
				    <input type="checkbox" name="added_labels" class="label__input"></input>
					<span class="label__text">
						Label
					</span>
				</label>
			</div>
			<div class="opener parameter row" data-parameter-name="show_all_labels" data-default-parameter="true">
                <label class="label opener__label small-12 secondary">
				    <input type="checkbox" name="show_all_labels" class="label__input" data-children-parameters="all_labels"></input>
					<span class="label__text">
						Show all labels
					</span>
				</label>
			</div>
			<div class="labels-list labels-list--center parameter row" data-parameter-name="all_labels">
                <label class="label labels-list__item secondary">
				    <input type="checkbox" name="all_labels" class="label__input"></input>
					<span class="label__text">
						Label
					</span>
				</label>
			</div>
			<div class="opener parameter row" data-parameter-name="add_params" data-default-parameter="true">
                <label class="label opener__label small-12 secondary">
				    <input type="checkbox" name="add_params" class="label__input" data-children-parameters="image importance complexity knowledge examples"></input>
					<span class="label__text">
						Show additional params
					</span>
				</label>
			</div>
			<div class="labels-list labels-list--images parameter row" data-parameter-name="image">
                <label class="label label--image labels-list__item secondary" style="background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1N6aALrRweHU5rgu_MsfaIV1imVVurZpg0k9jVzesLQERPUl4Vfbo79Y)">
				    <input type="radio" name="image" class="label__input"></input>
				</label>
				<label class="label label--image labels-list__item secondary" style="background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1N6aALrRweHU5rgu_MsfaIV1imVVurZpg0k9jVzesLQERPUl4Vfbo79Y)">
				    <input type="radio" name="image" class="label__input"></input>
				</label>
				<label class="label label--image labels-list__item secondary" style="background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1N6aALrRweHU5rgu_MsfaIV1imVVurZpg0k9jVzesLQERPUl4Vfbo79Y)">
				    <input type="radio" name="image" class="label__input"></input>
				</label>
				<label class="label label--image labels-list__item secondary" style="background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1N6aALrRweHU5rgu_MsfaIV1imVVurZpg0k9jVzesLQERPUl4Vfbo79Y)">
				    <input type="radio" name="image" class="label__input"></input>
				</label>
				<label class="label label--image labels-list__item secondary" style="background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1N6aALrRweHU5rgu_MsfaIV1imVVurZpg0k9jVzesLQERPUl4Vfbo79Y)">
				    <input type="radio" name="image" class="label__input"></input>
				</label>
			</div>
            <div class="slider-parameter parameter row" data-parameter-name="importance">
				<button class="button slider-parameter__button slider-parameter__button--left">-</button>
				<div class="slider-parameter__text">
					<div class="slider-parameter__name">Importance</div>
					<div class="slider-parameter__value">0</div>
					<input type="hidden" class="slider-parameter__input" name="importance" value="0" />
				</div>
				<button class="button slider-parameter__button slider-parameter__button--right">+</button>
            </div>
            <div class="slider-parameter parameter row" data-parameter-name="complexity">
				<button class="button slider-parameter__button slider-parameter__button--left">-</button>
				<div class="slider-parameter__text">
					<div class="slider-parameter__name">Complexity</div>
					<div class="slider-parameter__value">0</div>
					<input type="hidden" class="slider-parameter__input" name="complexity" value="0" />
				</div>
				<button class="button slider-parameter__button slider-parameter__button--right">+</button>
            </div>
            <div class="slider-parameter parameter row" data-parameter-name="knowledge">
				<button class="button slider-parameter__button slider-parameter__button--left">-</button>
				<div class="slider-parameter__text">
					<div class="slider-parameter__name">Knowledge</div>
					<div class="slider-parameter__value">0</div>
					<input type="hidden" class="slider-parameter__input" name="knowledge" value="0" />
				</div>
				<button class="button slider-parameter__button slider-parameter__button--right">+</button>
            </div>
            <div class="parameter row" data-parameter-name="examples">
            	<textarea class="parameter__textarea" placeholder="Using examples" name="examples"></textarea>
            </div>
			<button class="form__submit button small-12">Add to Dictionary</button>
		</form>
		<script src="js/foundation.min.js">// Подключаем foundation</script>
		<script src="js/foundation/foundation.reveal.js">// Подключаем модальные окна</script>
		<script>
			$(document).foundation();

			function sendRequest(obj) {
				/*
				send request to server from form
				obj - object with values from form
				*/

				var requestType = obj.type ? obj.type : 'GET';
				var requestUrl = obj.url ? obj.url : null;
				var requestData = obj.data ? obj.data : '';
				var requestCallback = obj.callback ? obj.callback : function(a){return a};

				var result = '';

				$.ajax({
					type: requestType,
					url: requestUrl,
					beforeSend: function(){},
					complete: function(){},
					data: requestData,
					success: function(data){
						requestCallback($.parseJSON(data));
					}
				});

				return result;
			}

			function createCardsList(parentObj){
				var cardsList = '<ul class="cards-list large-12 small-12"></ul>';
                return $(cardsList).appendTo(parentObj);
			}

			function destroyCardsList(listObj){
                return $(obj).remove();
			}

			function fillCardsList(listObj, itemsArr){
				var resultArr = [];
                if (itemsArr.length>0) {
                	for (var key in itemsArr) {
                		var item = $('<li>').appendTo(listObj).addClass('cards-list__item card card--horizontal').attr('data-buttons', true);
                		var background = $('<div>').appendTo(item).addClass('card__background');
                		var forground = $('<div>').appendTo(item).addClass('card__forground');
                		var content = $('<div>').appendTo(item).addClass('card__content');
                		var word = $('<div>').appendTo(content).addClass('card__word');
                		var addParams = $('<div>').appendTo(content).addClass('card__add-params');
                		var translation = $('<div>').appendTo(content).addClass('card__translation');
                        
                		if (itemsArr[key]['labels'].length>0) {
                            var labels = $('<ul>').appendTo(content).addClass('card__labels');
                            for (var labels_key in itemsArr[key]['labels']) {
                                var label = $('<li>').appendTo(content).addClass('card__label');
                                $(label).html(firstCharUppercase(itemsArr[key]['labels'][labels_key]));
                            }
                		}
                        
                        $(item).attr('data-word-id', itemsArr[key]['id']);
                		$(background).css('background-image', 'url('+ itemsArr[key]['image'] +')');
                		$(word).html(getFullWord(itemsArr[key]));
                		$(addParams).html(getWordAddParams(itemsArr[key]));
                		$(translation).html(firstCharUppercase(itemsArr[key]['translate']));

                		resultArr.push(item);
					}
                }
                
                return $(resultArr[0]).appendTo(listObj);
			}

			function firstCharUppercase(str){
                return str.charAt(0).toUpperCase() + str.substr(1);
			}

			function getWordAddParams(wordObj){
                if (wordObj['type']=='noun') {
                    return String(wordObj['plural']);
                }
                else if (wordObj['type']=='verb') {
                    if (wordObj['prasens'] || wordObj['prateritum'] || wordObj['partizip']) {
                        var noValuePic = '<i class="fa fa-ban" aria-hidden="true"></i>';
                	    var prasensForm = wordObj['prasens'] ? 'er ' + String(wordObj['prasens']) : noValuePic;
                	    var prateritumForm = wordObj['prateritum'] ? 'er ' + String(wordObj['prateritum']) : noValuePic;
                	    var partizipModalVerb = wordObj['modal_verb'] ? String(wordObj['modal_verb']) : 'hat';
                	    var partizipForm = wordObj['partizip'] ? 'er ' + partizipModalVerb + String(wordObj['partizip']) : noValuePic;

                	    return prasensForm+' - '+prateritumForm+' - '+partizipForm;
                    }
                }
                return '';
			}

			function getFullWord(wordObj){
                if (wordObj['type']=='noun') {
                    var article = wordObj['article'] ? String(wordObj['article'])+' ' : '';
                    var word = wordObj['word'] ? firstCharUppercase(String(wordObj['word'])) : '';
                    return article + word;
                }
                else if (wordObj['type']=='verb') {
                	var word = wordObj['word'] ? String(wordObj['word']) : '';
                	var sich = wordObj['sich'] ? ' sich' : '';
                	var preposition = wordObj['preposition'] ? ' ' + String(wordObj['preposition']) : '';
                	return word + sich + preposition;
                }
                else {
                	if (wordObj['word']) {
                        return String(wordObj['word']);
                	}
                	return '';
                }
			}

			function addButtonsInCard(parentObj){
				var buttons = $('<div>').appendTo(parentObj).addClass('card__buttons');
                var editButton = $('<button>').appendTo(buttons).addClass('card__button').attr('data-button-role', 'editCard').html('<i class="fa fa-pencil" aria-hidden="true"></i>');
                var deleteButton = $('<button>').appendTo(buttons).addClass('card__button').attr('data-button-role', 'deleteCard').html('<i class="fa fa-trash-o" aria-hidden="true"></i>');

                return buttons;
			}

			function removeButtonsInCard(parentObj){
                return $(parentObj).find('.card__buttons').remove();
			}

			function deleteCard(cardObj){
                return $(cardObj).remove();
			}

			function openModalWindow(content){
				if (content) {
					var modalWindow = $('<div class="reveal-modal xlarge" data-reveal aria-hidden="true" role="dialog"><a class="close-reveal-modal" aria-label="Close">&#215;</a></div>');
                    $(content).appendTo(modalWindow);
				}

                return $(modalWindow).foundation('reveal','open');
			}

			function closeModalWindow(obj){
                return $(obj).foundation('reveal','close');
			}

			$('body').on("click", "[data-buttons=true]", function(){
				removeButtonsInCard($(this).parents('.cards-list'));
				addButtonsInCard($(this));
			});

			$('body').on("click", "[data-button-role=deleteCard]", function(){
				var card = $(this).parents('.card')
				var wordId = $(card).attr('data-word-id');

				if (confirm("Delete word from database?")) {
                    sendRequest({
                    	'data':'id='+wordId,
						'url':'php/database/delete_words.php', 
						'callback':function(data){
							deleteCard(card);
						}
					});
				}
			});

            var cardsList = createCardsList($('.content'));
			sendRequest({
				'url':'php/database/get_words.php', 
				'callback':function(data){
					console.log(data);
					fillCardsList(cardsList, data);
					openModalWindow($('.form'));
				}
			});
			
		</script>
	</body>
</html>