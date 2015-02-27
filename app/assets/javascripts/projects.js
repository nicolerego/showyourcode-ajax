Turbolinks.enableProgressBar();

$(document).on('ready page:load', function(){
	$('#search-form').submit(function(event){
		event.preventDefault();
		var searchValue = $('#search').val();

		$.getScript('/projects?search=' + searchValue);
	});

	if ($('.pagination').length) {
		$(window).scroll(function(){
			var url = $('.pagination span.next').children().attr('href'); 

			if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 20) {
				$('.pagination').html("Loading more projects...");
				return $.getScript(url);
			}
			//hide page nav when all projects finished loading
			$('.pagination').hide();
		});
	}
});
