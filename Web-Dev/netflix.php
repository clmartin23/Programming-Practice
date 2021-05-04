<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles.css"> 
</head>
<body class="homebody">
    <div class="navbarcontainer">
    
        
    <?php

    include('header.php')
    ?>


    </div>
</div>
<div class="row myrow welcome">
    <div class="col-md-2 stream-scan-logo">
        <img src="images/netflix.jpg" style="width:100%">
    </div>

        <div class="col-md-9 welcometitle">
            <h1>Available on Netflix</h1>
            <div class="welcomebody">
                <p>Got a Netflix subscription? Then you're in the right place. All these great shows available on Netflix.
                </p>
            </div>
    </div>

    <div class="col-md-4">
    <a href="allnetflix.php"><u>Display all Netflix Shows<u></a>
    </div>

<div class="row myrow featured-tv-title">
    <div class="col-sm-12">
        <h2>Featured Neflix</h2>
    </div>
    

</div>
</div>



   

    <div class="row">
        

        
        
            <div class="col-sm-3">
                <div class="featured">
                    <img class="featured-img" src="./images/twinpeaks.jfif" alt="twinpeaks">
                    <div class="featured-overlay">
                        <div class="featured-title">Twin Peaks</div>
                        <div class="featured-description">
                           <p>An idiosyncratic FBI agent investigates the murder of a young woman in the even more 
                               idiosyncratic town of Twin Peaks.</p>

                        </div>
                    </div>
                    


                </div>
            </div>
               
               
    

    

        
            <div class="col-sm-3">
                <div class="featured">
                    <img class="featured-img" src="./images/thegoodplace.jfif" alt="thegoodplace">
                        <div class="featured-overlay">
                            <div class="featured-title">The Good Place</div>
                            <p class="featured-description">
                                Four people and their otherworldly frienemy struggle in the afterlife to define what it means to be good.
                            </p>
                        </div>


                </div>


            </div>
           
        



            
        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/madmen.jfif" alt="madmen">
                    <div class="featured-overlay">
                        <div class="featured-title">Mad Men</div>
                        <p class="featured-description">
                            A drama about one of New York's most prestigious ad agencies at the beginning of the 1960s, 
                            focusing on one of the firm's most mysterious but extremely talented ad executives, Donald Draper.
                        </p>
                    </div>


            </div>
        </div>
        

        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/prettylittleliars.jfif" alt="prettylittleliars">
                    <div class="featured-overlay">
                        <div class="featured-title">Pretty Little Liars</div>
                        <p class="featured-description">
                            Four friends band together against an anonymous foe who threatens to reveal their darkest secrets, 
                            while also investigating the disappearance of their best friend.
                        </p>
                    </div>


            </div>
        </div>



        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/thecrown.jfif" alt="thecrown">
                    <div class="featured-overlay">
                        <div class="featured-title">The Crown</div>
                        <p class="featured-description">
                            Follows the political rivalries and romance of Queen Elizabeth II's reign 
                            and the events that shaped the second half of the twentieth century.
                        </p>
                    </div>


            </div>
        </div>



        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/broadchurch.jfif" alt="broadchurch">
                    <div class="featured-overlay">
                        <div class="featured-title">Broadchurch</div>
                        <p class="featured-description">
                            The murder of a young boy in a small coastal town brings a media frenzy, which threatens to tear the community apart.
                            
                        </p>
                    </div>


            </div>
        </div>




        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/thesinner.jfif" alt="thesinner">
                    <div class="featured-overlay">
                        <div class="featured-title">The Sinner</div>
                        <p class="featured-description">
                            Anthology series that examines how and why ordinary people commit brutal crimes.

                        </p>
                    </div>


            </div>
        </div>



        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/bodyguard.jfif" alt="bodyguard">
                    <div class="featured-overlay">
                        <div class="featured-title">Bodyguard</div>
                        <p class="featured-description">
                            A contemporary thriller featuring the Royalty and Specialist Protection Branch of London's Metropolitan Police Service.
                        </p>
                    </div>


            </div>
        </div>








        
    
    </div>

<?php

include('footer.php')
?>

</body>
</html>
