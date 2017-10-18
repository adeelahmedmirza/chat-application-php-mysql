function chat()
{
	var message = chatForm.message.value;
	var xmlhttp = new XMLHttpRequest();
   	xmlhttp.onreadystatechange = function()
   	{
    	if(xmlhttp.readyState==4&&xmlhttp.status==200)
    	{
     		document.getElementById('chatlogs').innerHTML = xmlhttp.responseText;
    	}
	}
	xmlhttp.open('GET', 'insertChat.php?message='+message+'&user='+user+'&group='+group, true);
  xmlhttp.send();	
}
$(document).ready(function(e)
{
	$.ajax({cache: false});
    setInterval(function()
    {
 		$('#chatlogs').load('logs.php?group='+group);
	}, 200);
});

