<?php
	if (isset($title)) 
		$data['title'] = $title;
	
	$data['junk'] = 'food';
	
	$this->load->view('header.php', $data);
	echo $body;
	$this->load->view('footer.php');
?>
