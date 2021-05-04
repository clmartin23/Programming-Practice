<?php

session_start();

include('conn.php');


$email = $_POST['email'];
$password = $_POST['password'];


$query="SELECT * from `user_registration` WHERE `email` = '$email' && password = '$password'";

$result = mysqli_query($conn,$query);

$num=mysqli_num_rows($result);



if($num>=1){
    $_SESSION['emailadd'] = $email;
header('location:useraccount.php');
    
}else{
    header('location:login.php');

    



}









?>