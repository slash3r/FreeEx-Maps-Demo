<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
	<thead>
		<tr>
			<th>Title</th>
			<th>Location</th>
			<th>Date</th>
			<th>Category</th>
		</tr>
	</thead>
	<tbody></tbody>
</table>

<script src="<?php echo base_url(); ?>third_party/jquery/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>third_party/bootstrap/DT_bootstrap.js"></script>

<script>
$(document).ready(function() {
	$('#example').dataTable( {
		"sAjaxSource": '<?php echo base_url(); ?>index.php/main/get_events<?php echo $get_data?>',
		"bAutoWidth": false,
		"sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
		"sPaginationType": "bootstrap",
		"oLanguage": {
			"sLengthMenu": "_MENU_ records per page"
		},
		"aoColumns": [
			{ "sType": "html" },
			null,
			null,
			null
		]
	} );
} );
</script>