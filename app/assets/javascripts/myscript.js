function myrefresh(){
	field_class = document.getElementsByClassName("fieldset_class");

	for(var i=0;i<field_class.length;i++)
	{
		field_class[i].checked = 0;
	}
}
