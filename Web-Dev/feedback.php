<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="homebody">
    <div class="navbarcontainer">
    
        <?php
        include('header.php');
        ?>
        


    </div>
</div>



    



<div class="row welcome">
    <div class="col-md-2 stream-scan-logo">
        <img src="images/streamscanlogo.jpg" style="width:100%">
    </div>

        <div class="col-md-8 welcometitle">
            <h1>Feedback</h1>
            <div class="welcomebody">
                <p>Here at Streamscan.com, we are always keen to hear feedback from users of the site about areas which they liked and areas 
                    they would like to see improved for the future.
                </p>
                <p>We would greatly appreciate if you could take the time to fill out the feeback form below to let us know how we are doing and also
                    include any show recommendations for other users on the site.
                </p>
            </div>
    </div>


</div>
    


<div class="row">
    <div class="col-md-4 feedbackform">


    <form action="feedbacksubmit.php" method="POST">
      

  <div class="form-group">
    <label for="exampleFormControlInput1">Name</label>
    <input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="">
  </div>
  <label for="exampleFormControlInput1">City</label>
    <input type="text" name="city" class="form-control" id="exampleFormControlInput1" placeholder="">
 
  <div class="form-group">
    <label for="exampleFormControlSelect1">Rate your experience out of 5</label>
    <select class="form-control" name="rating" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Reasons for your feedback</label>
    <textarea class="form-control" name="reasons" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Show recommendations for other users</label>
    <textarea class="form-control" name="recommendations" id="exampleFormControlTextarea1" rows="2"></textarea>
  </div>
  <div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="submit" name="submit" class="btn login_btn">Submit</button>
				   </div>
  </div>
</form>
</div>


<div class="row myrow sitereviews">
<col-md-4>
<h1>Site Reviews</h1>


</col-md-4>



</div>


<div class="feedbackposts row myrow">
<div class="col-md-12">

<?php
include('conn.php');

$query="SELECT * FROM `feedback`";

$result=mysqli_query($conn,$query);


 while ($row = mysqli_fetch_assoc($result)){

    $name=$row['name'];
    $city=$row['city'];
    $rating=$row['rating'];
    $reasons=$row['reasons'];
    $recommendations=$row['recommendations'];
    



echo"<p> ------------------------------------</p>";
echo
    "<h3>Name - ".$name."</h3>";

    echo "<p> City - ".$city."</p>";
    echo "<p> Rating - ".$rating."&#9734;</p>";
    echo "<p> Reasons for rating - ".$reasons."</p>";
    echo "<p> Recommendations for other users - ".$recommendations."</p>";
    
 }
?>

</div>
</div>

     <?php
     include('footer.php');
     ?>
    
</body>


</html>