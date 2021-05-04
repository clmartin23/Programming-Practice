

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

	<?php include ('header.php')?>


<div class="register_container">



<div class="register_form">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create Account</h4>
	<p class="text-center">Get started with your free account</p>
	
	<p></p>

	<form action="registration.php" method="POST">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="name" class="form-control" placeholder="Full name" type="text" required>
    </div> 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="Email address" type="email" required>
    </div> 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fas fa-tv"></i> </span>
		</div>
		
    	
		<select class="form-control" name="streaming_service">
			<option selected=""> Select favourite streaming service</option>
			<option>Netflix</option>
			<option>Amazon Prime</option>
			<option>Hulu</option>
            <option>Disney+ </option>
		</select>
	</div> <!-- form-group end.// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Create password" type="password" name="password">
    </div> <!-- form-group// -->
                                         
    <div class="form-group">
        <p></p>
        <button type="submit" class="btn btn-primary btn-block" name="submit"> Create Account  </button>
    </div> <!-- form-group// -->  
    <p></p>    
    <p class="text-center">Already have an account? <a href="login.php">Log In</a> </p>
    
    <div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="customControlInline">
								<label class="custom-control-label" for="customControlInline">I agree to the <a href="">Terms and Conditions</a> </label>
							</div>
						</div>
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->


</article>