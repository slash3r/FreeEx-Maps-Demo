<form class="form-horizontal" id="insert_event_form" action="<?php echo base_url(); ?>index.php/main/add_event" method="post"> 
<!-- 
<form class="form-horizontal" id="insert_event_form" action="#" method="get">
-->
		  <fieldset>
          <legend>File a case</legend>
          <div class="control-group">
            <label class="control-label" for="input01">Title</label>
            <div class="controls">
              <input type="text" class="input-xlarge span7" id="title_id" name="title_name">
            </div>
          </div>
		  
		  <div class="control-group">
            <label class="control-label" for="location_id">Location</label>
            <div class="controls">
              <input type="text" class="input-xlarge span3" id="location_id" name="location_name">
			  <input type="hidden" id="hidden_location_id" name="hidden_location_name">
			  
			  <input type="date" class="span2" id="date_id" name="date_name">
            </div>
          </div>
          
          <div class="control-group">
            <label class="control-label" for="select01">Category</label>
            <div class="controls">
              <select id="select01" name="category_name">
			  <?php
				foreach ($catarr as $cat)
				{
					echo '<option value="' . $cat['id'] . '">' . $cat['name'] . '</option>';
				}
			  ?>
              </select>
            </div>
          </div>
		  
          <div class="control-group">
            <label class="control-label" for="textarea">Content</label>
            <div class="controls">
              <textarea class="input-xlarge span7" id="textarea" rows="3" name="content_name"></textarea>
            </div>
          </div>
		  
<!--
		  <div class="control-group">
            <label class="control-label" for="optionsCheckbox">Publish to</label>
            <div class="controls">
              <label class="checkbox">
                <input type="checkbox" id="optionsCheckbox" value="yes" name="fb_check">
                Facebook
              </label>
			  <label class="checkbox">
                <input type="checkbox" id="optionsCheckbox" value="yes" name="tw_check">
                Twitter
              </label>
            </div>
          </div>
-->
		  
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">Save changes</button>
            <button class="btn" type="reset" >Reset</button>
          </div>
		  
		  </fieldset>
</form>

<div id="autocomplete_location" class="autocomplete" style="display:none;"></div>

<script type="text/javascript" src="<?php echo base_url()?>third_party/tiny_mce/tiny_mce.js"></script>
		
<script src="<?php echo base_url(); ?>third_party/scriptaculous-js/lib/prototype.js"></script>
<script src="<?php echo base_url(); ?>third_party/scriptaculous-js/src/effects.js"></script>
<script src="<?php echo base_url(); ?>third_party/scriptaculous-js/src/controls.js"></script>

<script type="text/javascript">
	tinyMCE.init({
		// General options
		mode : "textareas",
		theme : "advanced",
		plugins : "inlinepopups,nonbreaking,fullscreen",
		height : "400",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,strikethrough,removeformat,|,justifyleft,justifycenter,justifyright,justifyfull,|",
		theme_advanced_buttons1_add : "outdent,indent,|,bullist,numlist,|,sub,sup,|,fullscreen,|,code",
		theme_advanced_buttons2 : "cut,copy,paste,|,undo,redo,|,link,unlink,|,styleselect,formatselect",
		theme_advanced_buttons3 : "",
		theme_advanced_buttons4 : "",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		// theme_advanced_resizing : true,
		
		nonbreaking_force_tab : true
	});

	// enable the autocompleter
	new Ajax.Autocompleter("location_id", "autocomplete_location", "<?= base_url();?>index.php/main/search_location/", {
		minChars : 2,
		afterUpdateElement : updateLocationId
	});
	
	function updateLocationId(text, li) {
		document.forms['insert_event_form'].elements['hidden_location_id'].value = li.id;
	}
	
	// hook to submit and check the data
	/* TODO: laterz + add bootstrap error
	$('form').submit(function() {
		alert('Handler for .submit() called.');
		return false;
	});
	*/
</script>