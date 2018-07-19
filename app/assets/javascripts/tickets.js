jQuery(function(){

	$('#ticket_sla_unit').on('change', function(){
		sla_units = $('#ticket_sla_unit').val();
	  option = ''
	  max_value = 10;

		if (sla_units == 'year')
		  max_value = 5
		else if (sla_units == 'month')
		  max_value = 60
		else
		  max_value = 50

	  for(i = 1; i <= max_value; i++){
	    option += "<option value='" +  i + "'>" + i + "</option>"
	  }
    
    $('#ticket_sla option').remove();
		$('#ticket_sla').append(option);
	})

})	
