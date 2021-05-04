<?php

$host = "cmartin89.lampt.eeecs.qub.ac.uk";
 $user = "cmartin89";
 $pw = "yVWRpnTby7sqJgBp";
 $db = "cmartin89";
 
 $conn = new mysqli($host, $user, $pw, $db);

 
 if ($conn->connect_error) {
 
      echo "NOT CONNECTED";
 
 }else{

    
    $file=$_FILES ['csvfile']['tmp_name'];
    $handle=fopen($file,"r");
    

    
 
    while(($row=fgetcsv($handle,10000,",")) !==false){

        //if index empty, do the following

        //title 
        if (empty($row[0])){
            $row[0] = 0;
        }
            
        
        
        //year 
        if (empty($row[1])){
            $row[1]= 0;
        }

        //age
        if (empty($row[2])){
            $row[2]= 18;
        }

        //imdb 
        if (empty($row[3])){
            $row[3]= 0.0;
        }

        //rotten tomatoes 
        if (empty($row[4])){
            $row[4]= 0;
        }

        //netflix
        if (empty($row[5])){
            $row[5]= 0;
        }

        //hulu
        if (empty($row[6])){
            $row[6]= 0;
        }

        //prime
        if (empty($row[7])){
            $row[7]= 0;
        }

        //disney
        if (empty($row[8])){
            $row[8]= 0;
        }

        //type 
        if (empty($row[9])){
            $row[9]= 0;
        }

    

    $query="INSERT INTO `tv_shows` (`title`, `year`, `age`, `imdb`, `rotten_tomatoes`, `netflix`,
     `hulu`, `prime`, `disney`, `type`)  VALUES ('$row[0]','$row[1]','$row[2]','$row[3]','$row[4]',
     '$row[5]','$row[6]','$row[7]','$row[8]','$row[9]');";
     echo $query, "<br>";
     mysqli_query($conn,$query);
    }
    
 }

        
     
        
 


     
 
     
?>