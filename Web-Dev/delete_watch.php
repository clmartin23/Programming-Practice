<?php
session_start();
include('conn.php');
$ufs_id = $_SESSION['ufsid'];



$query="DELETE FROM `user_favourited_shows` WHERE `user_favourited_shows`.`user_shows_id` ='$ufs_id'";

mysqli_query($conn,$query);

header('location:useraccount.php');

?>

