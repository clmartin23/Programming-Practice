<?php

session_start();

include('conn.php');

$name = $_POST['name'];
$city = $_POST['city'];
$rating = $_POST['rating'];
$reasons = $_POST['reasons'];
$recommendations = $_POST['recommendations'];


$query="INSERT INTO `feedback` (`feedback_id`, `name`, `city`, `rating`, `reasons`, `recommendations`) VALUES 
(NULL, '$name', '$city', '$rating', '$reasons', '$recommendations');";

mysqli_query($conn, $query);


header('location:feedback.php');

/*

&#9734; - star
$result = mysqli_query($conn,$query);

$num=mysqli_num_rows($result);



if($num>=1){

    echo "It looks like you already have an account, please <a href='$login'>Login</a>";
}else{

    $reg="INSERT INTO `user_registration` (`user_id`, `name`, `email`, `streaming_service`, `password`) VALUES (NULL, '$name', '$email', '$streaming_service', 'password');";
    mysqli_query($conn, $reg);
    echo "Registration Successfuly";



}

*/







?>