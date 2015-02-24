function display_search_results() {
		if (this.readyState === 4) {
			console.log(this);
			document.getElementsByClassName('projects').innerHTML = this.responseText;
		}
	}
	
	var form = document.getElementById('search-form');
	form.addEventListener('submit', function(event) {
		event.preventDefault();
		var searchValue = document.getElementById('search').value;

		var xhr = new XMLHttpRequest();
		xhr.onload = display_search_results;
		xhr.open('GET', '/projects?search=' + searchValue, true);
		xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
		xhr.send();
	});