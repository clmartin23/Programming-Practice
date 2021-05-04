







<?php

$filename ="http://cmartin89.lampt.eeecs.qub.ac.uk/7062project/api.php?alltv";
$filestring = file_get_contents($filename);

$arrayjson = json_decode($filestring,true);





foreach($arrayjson as $row){
    
    $data=$row["title"];

    echo "<div> [$data} </div>";
}


?>