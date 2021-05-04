

<?php



session_start();



if (!isset($_SESSION['emailadd'])){
    header('location:login.php');
}




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Account</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://bootswatch.com/4/simplex/bootstrap.min.css"/>
    <link rel="stylesheet" href="styles.css"> 
</head>
<body>
<?php  

include ('header.php');
include ('conn.php');

$email = $_SESSION['emailadd'];
$delete_watch="delete_watch.php";




$query="SELECT * from `user_registration` WHERE `email` = '$email'";

$result = mysqli_query($conn,$query);


 while ($row = mysqli_fetch_assoc($result)){


        $user_id=$row['user_id'];
        $name=$row['name'];
        $email=$row['email'];
        $streaming_service=$row['streaming_service'];



 }

        $_SESSION['emailaddr']=$email;
        $_SESSION['emailaddres']=$email;

        
?>


<div class="row myrow accounttitle">

<div class="col-md-6">
<h1><?php echo"$name";?></h1>
</div>

<div class="col-md-6 logout_button">

<button type="button" class="btn btn-outline-danger"><a href="logout.php"> Logout</a></button>

</div>
</div>

<div class="row myrow accemail">
    <div class="col-md-6">
    <h3><?php echo"$email";?></h3>

    </div>


</div>

<div class="row myrow watchlist">

<h1>On My Watchlist - </h1>






<?php


$query2="SELECT user_favourited_shows.user_shows_id, tv_shows.title,tv_shows.year,tv_shows.age,tv_shows.imdb,tv_shows.rotten_tomatoes,tv_shows.netflix,tv_shows.hulu,
tv_shows.prime,tv_shows.disney FROM tv_shows JOIN user_favourited_shows ON tv_shows.show_id = user_favourited_shows.show_id 
WHERE user_favourited_shows.user_id = '$user_id'";

$result2 = mysqli_query($conn,$query2);

$num=0;
 while ($row = mysqli_fetch_assoc($result2)){
     

    $ufs_id=$row['user_shows_id'];
    $title=$row['title'];
    $age=$row['age'];
    $imdb=$row['imdb'];
    $year=$row['year'];
    $rotten=$row['rotten_tomatoes'];
    $netflix=$row['netflix'];
    $prime=$row['prime'];
    $disney=$row['disney'];
    $hulu=$row['hulu'];


    echo"<p> </p>";
    echo"<p> </p>";

    echo
    "<h2><u>".$title."</u></h2>";

    



    echo "<p> Year - ".$year."</p>";
    echo "<p> Age Suitable For - ".$age."+</p>";
    echo "<p> IMDB Rating - ".$imdb."</p>";
    echo "<p> Rotten Tomatoes Rating - ".$rotten."%</p>";
    if ($netflix>0){
        echo "<p>Available on Netflix? - Yes</p>";
        }else{echo "<p>Available on Netflix? - No</p>";}
        if ($prime>0){
            echo "<p>Available on Amazon Prime? - Yes</p>";
            }else{echo "<p>Available on Amazon Prime? - No</p>";}
        if ($disney>0){
            echo "<p>Available on Disney+? - Yes</p>";
            }else{echo "<p>Available on Disney+ ? - No</p>";}
        if ($hulu>0){
            echo "<p>Available on Hulu? - Yes</p>";
            }else{echo "<p>Available on Hulu? - No</p>";}
    
            echo
            "<p><a href=$delete_watch ><u>Delete From Watchlist</u></a></p>";

 }
 ?>

 </div>

 
<?php

//$_SESSION['ufsid']=$ufs_id;

 include('footer.php');
?>








</div>





    
</body>
</html>