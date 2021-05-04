<?php




include('tmdbapikey.php');


$inputspaces = $_SESSION['inputtitle'];
$apiinput = str_replace(' ','%20',$inputspaces);



$endpoint = "https://api.themoviedb.org/3/search/tv?api_key=$tmdbapikey&query=$apiinput";

$response = file_get_contents($endpoint);

$comments = json_decode($response, true);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TMDb API</title>
</head>

<body>

    <?php
   // print_r($comments);
  

    if (array_key_exists('name',$comments)){

        $title=$comments['name'];
        $overview=$comments['overview'];
        $posterlink=$comments['poster_path'];

        

    }else{
        $array1=$comments['results'];
    }

    if (array_key_exists('name',$array1)){

        $title=$array1['name'];
        $overview=$array1['overview'];
        $posterlink=$array1['poster_path'];

        

    }else{
        $array2=$array1[0];
    }

    if (array_key_exists('name',$array2)){

        

        $title=$array2['name'];
        $overview=$array2['overview'];
        $posterlink=$array2['poster_path'];

        

    }else{

        echo "not found";
        
    }

    $poster="https://image.tmdb.org/t/p/w500$posterlink";

    
    $_SESSION['posterpic'] = $poster;
    $_SESSION['synopsis'] = $overview;
    
    
?>




  

   


</body>

</html>