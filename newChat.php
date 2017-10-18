<?php

$con = mysqli_connect('localhost','root','');
mysqli_select_db($con, 'final-group-chat');

$username = $_REQUEST['name'];
// echo $username;

$sql = mysqli_query($con, "SELECT * FROM user WHERE user_name = '".$username."'");
while($row = mysqli_fetch_array($sql))
{
	$user1 = $row['user_id'];
	$sql1 = mysqli_query($con, "SELECT * FROM user");
	while($row1 = mysqli_fetch_array($sql1))
	{	
		$query3 = mysqli_query($con, "SELECT * FROM user_conn WHERE user1_id = '".$row['user_id']."' AND user2_id = '".$row1['user_id']."'");
		while($ext = mysqli_fetch_array($query3))
		{
			if ($ext['read_chats'] < $ext['total_chats'])
			{
				$count = $ext['total_chats'] - $ext['read_chats'];
				echo $count;
			}	

		}
		echo "<a href='userChats.php?user1=".urlencode($user1)."&user2=".urlencode($row1['user_id'])."'>". $row1['user_name']."</a><br>";
	}
}

?>