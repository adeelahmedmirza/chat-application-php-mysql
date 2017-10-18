<?php

$con = mysqli_connect('localhost','root','');
mysqli_select_db($con, 'final-group-chat');

$user1 = $_GET['user1'];
$user2 = $_GET['user2'];
echo "user1 : ".$user1."</br>";
echo "user2 : ".$user2."</br>";

$sql = mysqli_query($con, "SELECT * FROM user_conn WHERE user1_id = '".$user1."' AND user2_id = '".$user2."'");
$sql1 = mysqli_query($con, "SELECT * FROM user_conn WHERE user1_id = '".$user2."' AND user2_id = '".$user1."'");

if(mysqli_num_rows($sql) > 0 && mysqli_num_rows($sql1) > 0)
{
	echo "something is working";
	$sql2 = mysqli_query($con, "SELECT total_chats FROM user_conn WHERE user1_id = '".$user1."' AND user2_id = '".$user2."'");
	while($row = mysqli_fetch_array($sql2))
	{
		$total = $row['total_chats'];
		mysqli_query($con, "UPDATE user_conn SET read_chats = $total WHERE user1_id = '".$user1."' AND user2_id = '".$user2."'");
	}
}else
{
	echo "something else is working";
	mysqli_query($con, "INSERT INTO user_conn (user1_id, user2_id) VALUES ('$user1', '$user2')");
	mysqli_query($con, "INSERT INTO user_conn (user1_id, user2_id) VALUES ('$user2', '$user1')");
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Chats</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
        var user1 = <?php echo json_encode($user1) ?>;
        var user2 = <?php echo json_encode($user2) ?>;
    </script>
    <script type="text/javascript" src="userChatAjax.js"></script>
</head>
<body>

<form action="" method="POST" name="chatForm">

<label for="message">Enter your message</label>
<textarea name="message"></textarea>
<button name="sendMessage" type="submit" onclick="chat()">Send</button>

</form>

<div id = "chatlogs">
LOADING CHATS, PLEASE WAIT...
</div>

</body>
</html>