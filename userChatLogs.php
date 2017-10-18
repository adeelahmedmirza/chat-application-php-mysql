<?php

$con = mysqli_connect('localhost','root','');
mysqli_select_db($con, 'final-group-chat');

$user1 = $_GET['user1'];
$user2 = $_GET['user2'];

$query = mysqli_query($con, "SELECT * FROM user_chats WHERE sender_id IN ($user1, $user2) AND receiver_id IN ($user1, $user2) ORDER BY chat_id DESC");
while($row = mysqli_fetch_array($query))
{
	echo "USER ID: " . $row['sender_id'] . "MESSAGE: " . $row['message'] . "</br>";
}
?>