<!DOCTYPE HTML>
<html>
<head>
	<title><?php if (isset($title)) { echo $title; } else { echo "Don't forget the title";} ?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/main.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/DT_bootstrap.css">
	
	<script src="<?php echo base_url(); ?>third_party/jquery/jquery-1.8.2.min.js"></script>
	<script src="http://openlayers.org/api/OpenLayers.js"></script>
	
	<script src="<?php echo base_url(); ?>third_party/bootstrap/bootstrap.js"></script>
</head>
<body>
	<div id="body_wrap">
	
	<!-- menu.start -->
	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container"><!-- Collapsable nav bar -->
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>

				<!-- Your site name for the upper left corner of the site -->
				<a class="brand">FreeEx Demo</a>

				<!-- Start of the nav bar content -->
				<div class="nav-collapse"><!-- Other nav bar content -->
					<ul class="nav">
						<li><a href="<?php echo base_url(); ?>index.php/main">View Map</a></li>
						<li><a href="<?php echo base_url(); ?>index.php/main/browse">Browse the cases</a></li>
						<li><a href="<?php echo base_url(); ?>index.php/main/browse_alerts">Browse the complains</a></li>
						<?php
						if ($this->ion_auth->logged_in())
						{
						?>
							<li><a href="<?php echo base_url(); ?>index.php/main/form">File a case!</a></li>
						<?php
						}
						else
						{
						?>
							<li><a href="<?php echo base_url(); ?>index.php/main/form">File a complaint!</a></li>
						<?php
						}
						?>
					</ul>

					<?php
						if ($this->ion_auth->logged_in())
						{
					?>
					<ul class="nav pull-right">
						<li><a href="<?php echo base_url(); ?>index.php/main/logout">Sign out, <?php echo $this->ion_auth->user()->row()->username?></a></li>
					</ul>
					<?php
						}
						else
						{
					?>
					<!-- The drop down menu -->
					<ul class="nav pull-right">
						<li class="dropdown">
							<a class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
							<div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
								<!-- Login form here -->
								
								<form action="<?php echo base_url(); ?>index.php/main/login" method="post" autocomplete="off">
									<input type="text" placeholder="username" name="user">
									<input type="password" placeholder="password" name="pass">
									<button type="submit" class="btn">Sign in</button>
								</form>
								
								
								
							</div>
						</li>
					</ul>
					<?php
						}
					?>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$(function() {
			// Setup drop down menu
			$('.dropdown-toggle').dropdown();

			// Fix input element click problem
			$('.dropdown input, .dropdown label').click(function(e) {
				e.stopPropagation();
			});
		});
	</script>
	<!-- menu.end -->
	
	<!-- content.start -->
	<div id="content_div">
	