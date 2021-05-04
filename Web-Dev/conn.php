<?php



$host = "cmartin89.lampt.eeecs.qub.ac.uk";
 $user = "cmartin89";
 $pw = "yVWRpnTby7sqJgBp";
 $db = "cmartin89";
 
 $conn = new mysqli($host, $user, $pw, $db);

 if ($conn->connect_error) {
 
    echo "NOT CONNECTED";


}
?>