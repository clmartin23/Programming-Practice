<?php





    ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <link rel="stylesheet" href="styles.css"> 
</head>
<body>
<?php
include('header.php');
include('tmdb.php');




$results=$_SESSION['resultsfound'];



$poster=$_SESSION['posterpic'];
$overview=$_SESSION['synopsis'];







$inner_array=$results[0];
$show_id=$inner_array['id'];
$title=$inner_array['title'];
$year=$inner_array['year'];
$age=$inner_array['age'];
$imdb=$inner_array['imdb'];
$rotten=$inner_array['rotten'];
$netflix=$inner_array['netflix'];
$prime=$inner_array['prime'];
$hulu=$inner_array['hulu'];
$disney=$inner_array['disney'];

$_SESSION['inputtitle']=$title;

$email=$_SESSION['emailaddr'];

if( $_SESSION['emailaddr'] = $email){

    $watchlist="add_to_watchlist.php";
}else{
    $watchlist="useraccount.php";
}

$_SESSION['emailaddre']=$email;
$_SESSION['showid']=$show_id;

?>




<div class="search_results row">

<div class="results_title">
<h1>Search Results Found</h1>
</div>

<div class="results col-md-4">
<?php



echo

"<h2>$title</h2>";



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

        echo "<p> Synopsis - ".$overview."</p>";

        

        


        
        ?>

        <div class="watchlist_link row myrow">
        <p><a href=<?php echo $watchlist ?>>Add to Watchlist</a></p>

        </div>

        
    </div>

    <div class="results_pic col-md-4">

<img src="<?php echo $poster?>">


    </div>
    
    

   


<?php
include('footer.php');
?>
    
</body>
</html>