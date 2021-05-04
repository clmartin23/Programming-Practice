<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hulu</title>
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
        <img src="images/hulu.jpg" style="width:100%">
    </div>

        <div class="col-md-9 welcometitle">
            <h1>Available on Hulu</h1>
            <div class="welcomebody">
                <p>If Hulu is what you're into, this are what you could be watching. 
                </p>
            </div>
    </div>

    <div class="col-md-4">
    <a href="allhulu.php"><u>Display all Hulu shows<u></a>
    </div>

<div class="row myrow featured-tv-title">
    <div class="col-sm-12">
        <h2>Featured Hulu</h2>
    </div>
    

</div>
</div>



   

    <div class="row">
        

        
        
            <div class="col-sm-3">
                <div class="featured">
                    <img class="featured-img" src="./images/familyguy.jfif" alt="familyguy">
                    <div class="featured-overlay">
                        <div class="featured-title">Family Guy</div>
                        <div class="featured-description">
                           <p>In a wacky Rhode Island town, a dysfunctional family 
                               strive to cope with everyday life as they are thrown from one crazy scenario to another.</p>

                        </div>
                    </div>
                    


                </div>
            </div>
               
               
    

    

        
            <div class="col-sm-3">
                <div class="featured">
                    <img class="featured-img" src="./images/startrek.jfif" alt="startrek">
                        <div class="featured-overlay">
                            <div class="featured-title">Star Trek</div>
                            <p class="featured-description">
                                n the 23rd Century, Captain James T. Kirk and the crew of the U.S.S. 
                                Enterprise explore the galaxy and defend the United Federation of Planets.
                            </p>
                        </div>


                </div>


            </div>
           
        



            
        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/rickandmorty.jpg" alt="rickandmorty">
                    <div class="featured-overlay">
                        <div class="featured-title">Rick and Morty</div>
                        <p class="featured-description">
                            An animated series that follows the exploits of a super scientist and his not-so-bright grandson.
                        </p>
                    </div>


            </div>
        </div>
        

        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/brooklynnine.jfif" alt="brooklynnine">
                    <div class="featured-overlay">
                        <div class="featured-title">Brooklyn Nine-Nine </div>
                        <p class="featured-description">
                            Comedy series following the exploits of Det. Jake Peralta and his diverse, 
                            lovable colleagues as they police the NYPD's 99th Precinct.
                        </p>
                    </div>


            </div>
        </div>



        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/lost.jfif" alt="lost">
                    <div class="featured-overlay">
                        <div class="featured-title">Lost</div>
                        <p class="featured-description">
                            The survivors of a plane crash are forced to work together in order to 
                            survive on a seemingly deserted tropical island.
                        </p>
                    </div>


            </div>
        </div>



        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/thesimpsons.jfif" alt="thesimpsons">
                    <div class="featured-overlay">
                        <div class="featured-title">The Simpsons</div>
                        <p class="featured-description">
                            The satiric adventures of a working-class family in the misfit city of Springfield.

                            
                        </p>
                    </div>


            </div>
        </div>




        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/modernfamily.jfif" alt="thesinner">
                    <div class="featured-overlay">
                        <div class="featured-title">Modern Family</div>
                        <p class="featured-description">
                            Three different but related families face trials and tribulations in their own uniquely comedic ways.

                        </p>
                    </div>


            </div>
        </div>



        <div class="col-sm-3">
            <div class="featured">
                <img class="featured-img" src="./images/southpark.jpg" alt="southpark">
                    <div class="featured-overlay">
                        <div class="featured-title">South Park</div>
                        <p class="featured-description">
                            Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.
                        </p>
                    </div>


            </div>
        </div>

<?php
include('footer.php')
?>

</body>
</html>
