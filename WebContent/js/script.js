function valid()
{
	var name=document.forms["user"]["title"].value;
	if(name == "" )
	{
		alert("Title is required");
		return false;
	}
	if(name.length<2 || name.length>65)
	 {
		  alert("Title should have 2 to 65 characters.");
		  return false;
	 }
    var price=document.forms["user"]["price"].value;
	if(price == "")
	{
		alert("Price is required");
		return false;
	}
	else if(isNaN(price))
	{
		alert("Price has to be a number");
		return false;
	}
	var date=document.forms["user"]["dateoflaunch"].value;
	if(date == "" )
	{
		alert("Date of Launch is required");
		return false;
	}
	var category=document.forms["user"]["Category"].value;
	if(category == "" )
	{
		alert("Select one category");
		return false;
	}
}
	
	
	