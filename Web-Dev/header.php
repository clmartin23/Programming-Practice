<?php

/*

if(isset( $_SESSION['resultsfound'])){
    session_unset();
}
*/
session_start();



$endpoint = "http://cmartin89.lampt.eeecs.qub.ac.uk/7062project/api.php?alltv";

$response = file_get_contents($endpoint);

$comments = json_decode($response, true);



?>
 
 
 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Header</title>
     
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<link rel="stylesheet" href="styles.css"> 
</head>
<body class="homebody">
    <div class="navbarcontainer">
    
        
        <div class="row myrow navbar">
            

            

            
            <div class="col-md-1">
                <a href="index.php">Home</a>
            </div>
            <div class="col-md-2">
                <a href="highestrated.php">Highly Rated</a>
            </div>
            <div class="col-md-2">
                <a href="family.php">Family Friendly</a>
            </div>
            <div class="col-md-1">
                <a href="netflix.php">Netflix</a>
            </div>
            <div class="col-md-2">
                <a href="prime.php">Amazon Prime</a>
            </div>
            <div class="col-md-1">
                <a href="hulu.php">Hulu</a>
            </div>
            <div class="col-md-1">
                <a href="disney.php">Disney+</a>
            </div>
        </div>

        <form method="POST">

        
<div class="input-group searchbar">
    <input type="text" class="form-control rounded"  name="title" 
    placeholder="Enter programme title to search" >
      
      
    <input type="submit" name="search" button type="button" class="btn btn-outline-primary search-button"></button>

    <div class="row myrow loginbar">
            

    <div class="col-md-5">
    <a href="useraccount.php">Account</a>
    </div>
    <div class="col-md-1">
</div>
    <div class="col-md-5">
    <a href="register.php">Register</a>
    </div>
    
            
    </div>
  </div>
</div>


</form>




<?php





if (isset($_POST ["search"])){

    

$input=$_POST["title"];






    

$results = array();








foreach ($comments as $row) {
    
    if ($row['title']==$input){

        // assign values
        $id = $row['show_id'];
        $title = $row['title'];
        $year = $row['year'];
        $age = $row['age'];
        $imdb = $row['imdb'];
        $rotten = $row['rotten_tomatoes'];
        $netflix = $row['netflix'];
        $hulu = $row['hulu'];
        $prime = $row['prime'];
        $disney = $row['disney'];
        $type = $row['type'];

        // add values to array
        $line = array('id'=>$id, 'title' => $title, 'year'=>$year, 'age'=>$age, 'imdb'=>$imdb, 'rotten'=>$rotten, 'netflix'=>$netflix, 'hulu'=>$hulu, 'prime'=>$prime, 'disney'=>$disney, 'type'=>$type);

        // add array to $results array
        array_push($results, $line);
    
    }
    
}

// printing all (array)
//print_r($results);

// if none found 
if (empty ($results)){
    header('location:nosearchresults.php');

    

}

// print info for found 
else{
    session_start();
    header('location:searchresults.php');
    $_SESSION['resultsfound'] = $results;

}
}








?>

    </div>
</div>







     
 </body>
 </html>