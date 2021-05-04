<?php


//include('authentication.php');
include ('conn.php');

    if (isset($_GET['alltv'])){

    $query = "SELECT * FROM `tv_shows`";
    $result = mysqli_query($conn,$query);
    //parent array
    $all_shows = array ();

    //assoc array


    if($result){
        header("Content-Type: JSON");
        $i=0;
        while($row = mysqli_fetch_assoc($result)){
            $response[$i]['show_id'] = $row ['show_id'];
            $response[$i]['title'] = $row ['title'];
            $response[$i]['year'] = $row ['year'];
            $response[$i]['age'] = $row ['age'];
            $response[$i]['imdb'] = $row ['imdb'];
            $response[$i]['rotten_tomatoes'] = $row ['rotten_tomatoes'];
            $response[$i]['netflix'] = $row ['netflix'];
            $response[$i]['hulu'] = $row ['hulu'];
            $response[$i]['prime'] = $row ['prime'];
            $response[$i]['disney'] = $row ['disney'];
            $response[$i]['type'] = $row ['type'];

            $i++;


        }

        $all_shows[]=$response;

        echo json_encode($response);
        
       // echo json_encode($all_shows);

        
    }
}
   

?>