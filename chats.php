<?php

$con = mysqli_connect('localhost','root','');
mysqli_select_db($con, 'final-group-chat');

$group = $_GET['group'];
$user = $_GET['user'];

$sql = mysqli_query($con, "SELECT total_chats FROM groups WHERE group_id = '".$group."'");
while ($row = mysqli_fetch_array($sql))
{
    $total = $row['total_chats'];
    $sql1 = mysqli_query($con, "UPDATE users_groups SET read_chats = $total WHERE user_id = '".$user."' AND group_id = '".$group."'");
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Chats</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
        var user = <?php echo json_encode($user) ?>;
        var group = <?php echo json_encode($group) ?>;
    </script>
    <script type="text/javascript" src="chatAjax.js"></script>
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