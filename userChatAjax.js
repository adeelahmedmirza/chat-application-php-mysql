function chat()
{
	console.log("user1 : "+user1);
	console.log("user2 : "+user2);
	var message = chatForm.message.value;
	var xmlhttp = new XMLHttpRequest();
   	xmlhttp.onreadystatechange = function()
   	{
    	if(xmlhttp.readyState==4&&xmlhttp.status==200)
    	{
     		document.getElementById('chatlogs').innerHTML = xmlhttp.responseText;
    	}
	}
	xmlhttp.open('GET', 'insertUserChat.php?message='+message+'&user1='+user1+'&user2='+user2, true);
    xmlhttp.send();	
}

$(document).ready(function(e)
{
	$.ajax({cache: false});
    setInterval(function()
    {
 		$('#chatlogs').load('userChatLogs.php?user1='+user1+'&user2='+user2);
	}, 200);
});