<?php

$con = mysqli_connect('localhost','root','');
mysqli_select_db($con, 'final-group-chat');

$user1 = $_GET['user1'];
$user2 = $_GET['user2'];
$message = $_GET['message'];

mysqli_query($con, "INSERT INTO user_chats (message, sender_id, receiver_id) VALUES ('$message', '$user1', '$user2')");
mysqli_query($con, "UPDATE user_conn SET total_chats = total_chats + 1 WHERE user1_id = '".$user1."' AND user2_id = '".$user2."'");
mysqli_query($con, "UPDATE user_conn SET total_chats = total_chats + 1 WHERE user1_id = '".$user2."' AND user2_id = '".$user1."'");

$query = mysqli_query($con, "SELECT * from user_chats ORDER BY chat_id DESC");
while ($row = mysqli_fetch_array($query))
{
	echo "USER ID: " . $row['sender_id'] . "MESSAGE: " . $row['message'] . "</br>";
}

?>