<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Streamscan - About</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="homebody">
    <div class="navbarcontainer">
    
        
        <div class="row myrow navbar">
            

            

            
            <div class="col-md-1">
                <a href="index.html">Home</a>
            </div>
            <div class="col-md-2">
                <a href="highestrated.html">Highly Rated</a>
            </div>
            <div class="col-md-2">
                <a href="family.html">Family Friendly</a>
            </div>
            <div class="col-md-1">
                <a href="netflix.html">Netflix</a>
            </div>
            <div class="col-md-2">
                <a href="prime.html">Amazon Prime</a>
            </div>
            <div class="col-md-1">
                <a href="hulu.html">Hulu</a>
            </div>
            <div class="col-md-1">
                <a href="disney.html">Disney+</a>
            </div>
        </div>

        <div class="input-group searchbar">
            <input type="text" class="form-control rounded" id="search" placeholder="Search For TV Programmes" aria-label="Search"
              aria-describedby="search-addon" />
              
            <button type="button" class="btn btn-outline-primary search-button">search</button>
          </div>
        </div>
        <div class="searchsuggestions">
            <ul></ul>
        </div>


    </div>
</div>

<!---
<div class="side-menu">
    <div class="side-bar-overlay">
        <div class="username-input-row">
            <label for="username-label">Username</label>
            <input type="email" class="usename-input" placeholder="">
          </div>
          <div class="password-input-row">
            <label for="password-label">Password </label>
            <input type="password" class="password-input"  placeholder="">
          </div>
    
    
          <button type="button" class="sign-in-button">Sign In</button>

        
    </div>

    

</div>


to go in navbar class --

<button class="burgerBTN">
            <div class="col-md-1 burger-menu">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M2.5 11.5A.5.5 0 0 1 3 11h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 7h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 3h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                  </svg>
            </div>
        </button>

-->

    


<div class="row welcome">
    <div class="col-md-2 stream-scan-about-logo">
        <img src="images/streamscanlogo.jpg" style="width:100%">
    </div>

        <div class="col-md-8 welcometitle">
            <h1>About Me</h1>
            
    </div>


</div>
    


   

    <div class="row">

        <div class="col-md-6">
            <div class="aboutmepicture">
            <img src="images/aboutmephoto.jpg" style="width: 60%">
        </div>


        </div>

        <div class="col-md-6">
            <div class="aboutmecontent">
                <h2>Hi there!</h2>
           <p>I'm Curtis, the creator and proprietor of this here fine website, which i'm honoured you've decided to visit. </p>
           <p>I am super excited to be currently studying my Msc in Software Development at Queens University in Belfast. I have created this website as part fulfilment of my CSC7062 Web Development module, taught by Beatles and Coffee enthuiast John Busch. </p>
           <p>I sincerly hope you enjoy your visit, browsing the television shows you know and love, and hopefully some new ones you will grow to love.</p>
           <p>I welcome any comments or suggestions you may have on my <a href="feedback.html">Feedback</a> page. </p>
        </div>


        </div>
    </div>





    <div class="row myrow">

        <div class="col-sm-4 homesymbol">
            <a href="index.html"><img src="images/homesymbol.jpg" style="width:10%"> <p> Home</p></a>
        </div>

        <div class="col-sm-4 aboutsymbol">
            <a href="about.html"><img src="images/aboutme.jpeg" style="width:10%"> <p>About</p></a>
        </div>

        <div class="col-sm-4 aboutsymbol">
            <a href="feedback.html"><img src="images/feedback.jfif" style="width:30%"> <p>Feedback</p></a>
        </div>

        <div>
            <div class="col-sm-12 copyright">
            <p>© 2021 Curtis Martin Productions, for the betterment of my learnings. ALL RIGHTS RESERVED</p>
            </div>
        </div>


    </div>
    
</body>
</html>
<script>
    const homepagesearches = ['Tiger King','Better Call Saul','Black Mirror','Curtis Martin Adventures in Javascript','Stranger Things'];
    
    document.getElementById('search').addEventListener('input',(e)=>{
    
        let homepageseachArray = [];

        if (e.target.value){
            homepageseachArray = homepagesearches.filter(homepagesearch => homepagesearch.toLowerCase().includes(e.target.value));
            homepageseachArray=homepageseachArray.map(homepagesearch => `<li>${homepagesearch}</li>`)
            
        }
    
        showhomepagesearchArray(homepageseachArray);
    
    
    });

    function showhomepagesearchArray(homepageseachArray){
        const html = !homepageseachArray.length ? '':homepageseachArray.join('');
        document.querySelector('ul').innerHTML =html;
    }
    
   
    
    </script>