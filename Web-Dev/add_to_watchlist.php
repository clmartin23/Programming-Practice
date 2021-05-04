<?php
include('conn.php');

session_start();

$email=$_SESSION['emailaddres'];
$show_id=$_SESSION['showid'];




$query="SELECT `user_id` FROM `user_registration` WHERE `email`= '$email';";

$result = mysqli_query($conn,$query);
$resultcheck = mysqli_num_rows($result);

if($resultcheck>0){
while($row=mysqli_fetch_assoc($result)){
    $user_id = $row['user_id'];
}
}



$query2="INSERT INTO `user_favourited_shows` (`user_shows_id`, `user_id`, `show_id`) VALUES (NULL, '$user_id', '$show_id');";



mysqli_query($conn,$query2);

header('location:useraccount.php');






?>
