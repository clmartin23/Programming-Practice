<?php
//headers
//this will make public, allow any to access
header ('Access-Control-Allow-Origin: *');
header('Content-Type: appplication/json');

include_once 'database.php';
include_once 'post.php';

//instantiate DB and Connect
$database = new Database ();
$db = $database->connect();

//instantiate post object
$post = new Post($db);

//db query
$result = $post->read();

//row count 
//$num = $result->rowCount();

//check if any 
if($result->rowCount >0){
    //create array 
    $posts_arr = array();
    $post_arr ['data']= array();

    while ($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);

        $post_item = array(
            'title' => $title,
            'year' => $year,
            'age' => $age,
            'imdb' => $imdb,
            'rotten_tomatoes' => $rotten,
            'netflix' => $netflix,
            'hulu' => $hulu,
            'prime' => $prime,
            'disney' => $disney,
            'type' => $type,

        );

        //push to 'data'
        array_push($posts_arr['data'], $post_item);
    }

    //turn to JSON and output 
    echo json_encode($posts_arr);

}else{
//if no results
    echo json_encode(
        array('message' => 'No Results Found'));
    

}