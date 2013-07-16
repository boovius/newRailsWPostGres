$(function(){

	$('#toggle-password-field').on('click', function(evnt){
		if ($(this).hasClass('alert'))
		{
			$(this).val('Hide Password');
			$(this).removeClass('alert');
			$(this).addClass('success');
			$('#password').attr('type', 'text');
		}
		else
		{
			$(this).val('Show Password');
			$(this).removeClass('success');
			$(this).addClass('alert');
			$('#password').attr('type', 'password');
		}



		return false;
	});
	
})