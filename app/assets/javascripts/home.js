$( document ).ready(function() {
    console.log( "ready!" );
    $('.recentProjects').hide();
    $( window ).scroll(function() {
    	if($(this).scrollTop() > 430) {
            $( ".recentProjects" ).slideDown("slow");
        }
	});
});
