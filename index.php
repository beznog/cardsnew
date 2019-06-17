<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>MEMORY CARDS</title>
		<link rel="stylesheet" href="css/foundation.css">
		<link rel="stylesheet" href="css/app.css">
		<link rel="stylesheet" href="css/jquery-ui.css">
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="top-bar" id="nav-main">
		  <div class="top-bar-left">
			<a href="/">Memorize</a>
		  </div>
		  <div class="top-bar-right">
			<ul class="menu">
			  <li><a href="/add.php">Add</a></li>
			  <li><a href="/show.php">Show</a></li>
			  <li><a href="/edit.php">Edit</a></li>
			</ul>
		  </div>
		</div>
		<div class="content">
			<div class="cell small-12">
				<form id="add_word" class="grid-x" action="/add_word.php" autocomplete="off" enctype="text/plain" method="get" name="add_word" target="_blank">
					<div class="cell small-12 parameter default" data-parameter-name="word">
						<input type="text" id="word_text" name="word" placeholder="Word" autocomplete="off" autofocus />
					</div>
					<div class="cell small-12 parameter default" data-parameter-name="translation">
						<input type="text" name="translation" placeholder="Translation" autocomplete="off" />
					</div>
					<fieldset class="cell small-12 parameter default" data-parameter-name="word_type">
						<div class="label-button">
							<input type="radio" name="word_type" value="noun" id="word_type_noun" data-next-params="article_type">
							<label for="word_type_noun">Noun</label>
						</div>
						<div class="label-button">
							<input type="radio" name="word_type" value="verb" id="word_type_verb" data-next-params="reflexive preposition partizip_modal_verb regularity">
							<label for="word_type_verb">Verb</label>
						</div>
						<div class="label-button">
							<input type="radio" name="word_type" value="adjective" id="word_type_adjective">
							<label for="word_type_adjective">Adjective</label>
						</div>
						<div class="label-button">
							<input type="radio" name="word_type" value="other" id="word_type_other">
							<label for="word_type_other">Other</label>
						</div>
					</fieldset>
					<fieldset class="cell small-12 parameter hide" data-parameter-name="article_type">
						<div class="label-button">
							<input type="radio" name="article_type" value="der" id="article_type_der" data-next-params="plural">
							<label for="article_type_der">der</label>
						</div>
						<div class="label-button">
							<input type="radio" name="article_type" value="die" id="article_type_die" data-next-params="plural">
							<label for="article_type_die">die</label>
						</div>
						<div class="label-button"> 
							<input type="radio" name="article_type" value="das" id="article_type_das" data-next-params="plural">
							<label for="article_type_das">das</label>
						</div>
						<div class="label-button">
							<input type="radio" name="article_type" value="die_plural" id="article_type_die_plural">
							<label for="article_type_die_plural">die(Pl)</label>
						</div>
					</fieldset>
					<div class="cell small-12 parameter hide" data-parameter-name="plural">
						<input type="text" name="plural" placeholder="Plural Form">
					</div>
					<div class="cell small-6 parameter hide" data-parameter-name="reflexive">
						<div class="label-button">
							<input type="checkbox" name="reflexive" id="reflexive">
							<label for="reflexive">V + sich</label>
						</div>
					</div>
					<div class="cell small-6 parameter hide" data-parameter-name="preposition">
						<div class="label-button">
							<input type="checkbox" name="preposition" id="preposition" data-next-params="preposition_verb">
							<label for="preposition">V + preposition</label>
						</div>
					</div>
					<div class="cell small-12 parameter hide" data-parameter-name="preposition_verb">
						<select name="preposition_verb" class="UI-element">
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
					<fieldset class="cell small-12 parameter hide" data-parameter-name="partizip_modal_verb">
						<div class="label-button">
							<input type="radio" name="partizip_modal_verb" value="haben" id="partizip_modal_verb_haben">
							<label for="partizip_modal_verb_haben">Haben</label>
						</div>
						<div class="label-button">
							<input type="radio" name="partizip_modal_verb" value="sein" id="partizip_modal_verb_sein">
							<label for="partizip_modal_verb_sein">Sein</label>
						</div>
					</fieldset>
					<fieldset class="cell small-12 parameter hide" data-parameter-name="regularity">
						<div class="label-button">
							<input type="radio" name="regularity" value="regular" id="regularity_regular">
							<label for="regularity_regular">Regural</label>
						</div>
						<div class="label-button">
							<input type="radio" name="regularity" value="irregular" id="regularity_irregural" data-next-params="irregurality_forms">
							<label for="regularity_irregural">Irregural</label>
						</div>
					</fieldset>
					<div class="cell small-12 parameter hide" data-parameter-name="prasens_form">
						<input type="text" name="prasens" placeholder="Prasens">
					</div>
					<div class="cell small-12 parameter hide" data-parameter-name="prateritum_form">
						<input type="text" name="prateritum" placeholder="Prateritum">
					</div>
					<div class="cell small-12 parameter hide" data-parameter-name="partizip_form">
						<input type="text" name="partizip" placeholder="Partizip II">
					</div>
					<div class="cell small-12 parameter default" data-parameter-name="add_tag">
						<fieldset class="ajax-form" id="add_tag" data-action="/add_label.php" data-method="get" data-enctype="text/plain">
							<div class="input-group">
								<input id="add_tag_text" class="input-group-field" type="text" name="add_tag" placeholder="Enter Tag">
								<div class="input-group-button">
									<input id="add_tag_submit" data-form="add_tag" class="ajax-form-submit button" value="Add">
								</div>
							</div>
						</fieldset>
						<span class="added-tags"></span>
					</div>


					<ul class="accordion cell small-12" data-accordion data-allow-all-closed="true" data-multi-expand="true">
						<li class="accordion-item" data-accordion-item>
							<a href="#" class="accordion-title">Show all tags</a>
							<div class="accordion-content" data-tab-content>
								<div class="cell small-12 parameter default" data-parameter-name="all_tags">
								</div>
							</div>
						</li>						
						<li class="accordion-item" data-accordion-item>
							<a href="#" class="accordion-title">Show additional Params</a>
							<div class="accordion-content" data-tab-content>
								<div class="cell small-12 parameter default" data-parameter-name="illustrations">
									<fieldset class="illustrations-result">
										<div class="label-button-image">
											<input type="radio" data-thumbnail="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIJCWUFvMJ4-okjqOtjwE5QO5KxouLIfpzVnDKZZXLWw7zlNxpT5bPRw" value="https://i.pinimg.com/originals/b2/d7/c9/b2d7c959316d4a9ae68f30cb8b84170c.jpg" name="picture" id="illustration-0">
											<label for="illustration-0">
												<div class="thumbnail">
													<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIJCWUFvMJ4-okjqOtjwE5QO5KxouLIfpzVnDKZZXLWw7zlNxpT5bPRw">
												</div>
											</label>
										</div>
										<div class="label-button-image">
											<input type="radio" data-thumbnail="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIJCWUFvMJ4-okjqOtjwE5QO5KxouLIfpzVnDKZZXLWw7zlNxpT5bPRw" value="dfsaadffd" name="picture" id="illustration-1">
											<label for="illustration-1">
												<div class="thumbnail">
													<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIJCWUFvMJ4-okjqOtjwE5QO5KxouLIfpzVnDKZZXLWw7zlNxpT5bPRw">
												</div>
											</label>
										</div>
									</fieldset>
									<div class="illustrations-noresult">
										<h3>No images</h3>
									</div>
								</div>
								
								
								<div class="cell small-12 parameter default" data-parameter-name="importance">
									<div class="input-group counter">
										<span class="input-group-label">Importance</span>
										<div class="input-group-button">
											<button type="button" class="button number-decrement">-</button>
										</div>
										<input class="input-group-field" type="number" name="importance" min="1" max="5" value="3" step="1">
										<div class="input-group-button">
											<button type="button" class="button number-increment">+</button>
										</div>
									</div>
								</div>
								<div class="cell small-12 parameter default" data-parameter-name="complexity">
									<div class="input-group counter">
										<span class="input-group-label">Complexity</span>
										<div class="input-group-button">
											<button type="button" class="button number-decrement">-</button>
										</div>
										<input class="input-group-field" type="number" name="complexity" min="1" max="5" value="3" step="1">
										<div class="input-group-button">
											<button type="button" class="button number-increment">+</button>
										</div>
									</div>
								</div>
								<div class="cell small-12 parameter default" data-parameter-name="knowledge">
									<div class="input-group counter">
										<span class="input-group-label">Knowledge</span>
										<div class="input-group-button">
											<button type="button" class="button number-decrement">-</button>
										</div>
										<input class="input-group-field" type="number" name="knowledge" min="1" max="5" value="3" step="1">
										<div class="input-group-button">
											<button type="button" class="button number-increment">+</button>
										</div>
									</div>
								</div>
								<div class="cell small-12 parameter default" data-parameter-name="examples">
									<textarea placeholder="Using examples" name="examples"></textarea>
								</div>
							</div>
						</li>
					</ul>
					<div class="cell small-12 parameter default">
						<input type="submit" form="add_word" class="button cell small-12" value="Submit">
					</div>
				</form>
			</div>
		</div>
		<script src="js/vendor/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script src="js/vendor/foundation.js"></script>
		<script src="js/custom.js"></script>
	</body>
</html>
