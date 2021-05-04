<?php

session_start();
header('location:login.php');
include('conn.php');

$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
if ($_POST['streaming_service'] == 'Netflix'){
    $streaming_service=1;
}
if ($_POST['streaming_service'] == 'Amazon Prime'){
    $streaming_service=2;
}
if ($_POST['streaming_service'] == 'Hulu'){
    $streaming_service=3;
}
if ($_POST['streaming_service'] == 'Disney+'){
    $streaming_service=4;
}

$query="SELECT * from `user_registration` WHERE `email` = '$email'";

$result = mysqli_query($conn,$query);

$num=mysqli_num_rows($result);

$login='login.php';

if($num>=1){

    echo "It looks like you already have an account, please <a href='$login'>Login</a>";
}else{

    $reg="INSERT INTO `user_registration` (`user_id`, `name`, `email`, `streaming_service`, `password`) VALUES (NULL, '$name', '$email', '$streaming_service', 'password');";
    mysqli_query($conn, $reg);
    echo "Registration Successfuly";



}









?>