<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>footer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles.css"> 
</head>
<body>
<div class="row myrow">

<div class="col-sm-4 homesymbol">
    <a href="index.php"><img src="images/homesymbol.jpg" style="width:10%"> <p> Home</p></a>
</div>

<div class="col-sm-4 aboutsymbol">
    <a href="about.html"><img src="images/aboutme.jpeg" style="width:10%"> <p>About</p></a>
</div>

<div class="col-sm-4 aboutsymbol">
    <a href="feedback.php"><img src="images/feedback.jfif" style="width:30%"> <p>Feedback</p></a>
</div>

<?php
function generateCopyright (){
    $year = date ("Y");
    echo "<p> © $year Curtis Martin Productions, for the betterment of my learnings. ALL RIGHTS RESERVED</p>";
}

?>

<div>
    <div class="col-sm-12 copyright">
    <p><?php generateCopyright (); ?></p>
    </div>
</div>


</div>
    
</body>
</html>
