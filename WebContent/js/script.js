function validation() {
   var a = document.forms["menucard"]["txtname"].value;
   if (a==""){
	    alert("name is required");
	    return false;
	}
	if ((a.length < 2) || (a.length > 65)) {
	    alert("Title should have 2 t0 65 charecter.");
		document.forms["menucard"]["txtname"].select();
		return false;
	}
	if (/[^a-zA-Z]/.test(a)){
	    alert("Name has to be a alphabet.");
	    return false;
	}
	var b = document.forms["menucard"]["txtprice"].value;
	if(b==""){
		alert("title is required");
		document.forms["menucard"]["txtprice"].focus();
		return false;
	}
	if (/[^0-9]/.test(b)){
	    alert("price has to be a number.");
	    return false;
	}
	var c = document.forms["menucard"]["launch"].value;
	if(c==""){
	    alert("data of launch required");
     	document.forms["menucard"]["launch"].focus();
	    return false;
	}
	var d = document.forms["menucard"]["category"].value;
	if(d==""){
		alert("category is required.");
		return false;
    }
    alert("Details submitted successfully");
}
