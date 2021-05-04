<?php




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
    <title>Display All</title>
</head>

<body>

    <?php

    include('header.php');

   

   
?>
  
<div class="row myrow displayall">

<div class="col-md-12 displaytitle">
<h1><u>All Disney+</u></h1>

</div>
<div class="col-md-4">



<?php
    




    foreach ($comments as $row) {
        
       

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

            if($disney==1){

            
            echo "<p> </p>";
                    echo "<p> </p>";
                    echo "<p>---------------------------------------------------</p>";
            
            echo "<h1>$title</h1>";

    
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

                    

                }

                }
                    ?>
                    

        </div>

        </div>


        
        }
        
    


        <?php
        include(footer.php);

    ?>
    </div>  

</body>

</html>