$(function(){
	var MIN_STRENGTH = 3;

	$('#user_password').on('keyup', function(evt){
		var s = zxcvbn($(this).val());
		$('#strength-meter')
			.removeClass('w-0')
			.removeClass('w-1')
			.removeClass('w-2')
			.removeClass('w-3')
			.removeClass('w-4')
			.addClass('w-' + s.score);
		$('#strength-meter-display').html(s.crack_time_display);

		$('#hidden-strength').val(s.score);
		
		if (s.score >= MIN_STRENGTH){
			$('#save-password').removeClass('disabled');
		}
		else
		{
			$('#save-password').addClass('disabled');
		}

	}); /* end #user_password on */

	$('#save-password').on('submit', function(){
		if ($('#hidden-strength').val() < MIN_STRENGTH)
			return false;
	}); /* end #new_user on */
}); /* end ready function() */