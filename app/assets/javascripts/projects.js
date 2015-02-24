// Ajax search using jQuery
$(document).ready(function(){
	$('#search-form').submit(function(event){
		event.preventDefault();
		var searchValue = $('#search').val();

		$.get('/projects?search=' + searchValue)
		.done(function(data){
			console.log(data);
			$('.projects').html(data);
		});
	});
});
