$(document).ready(function(){
			var $this = $(this);
			$('.pic').click(function(){
				$(this).css("cursor", "pointer");
				$(this).animate({width: "300px"}, '3s');
			});
			$('.pic').mouseleave(function(){
				$(this).animate({width: "50px"}, 'slow');
			});
		});