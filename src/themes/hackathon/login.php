<!DOCTYPE html>
<html>

<head>

<title>Login :: Hackathon</title>
<meta name="generator" content="Bluefish 2.2.5" >
<meta name="author" content="root" >
<meta name="date" content="2014-08-30T14:09:45+0200" >
<meta name="copyright" content="Dreamhack">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8">
<meta http-equiv="content-style-type" content="text/css">
<meta http-equiv="expires" content="0">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link href="themes/hackathon/css/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="themes/hackathon/js/main.js"></script>

</head>

<body>

<div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            
            <div class="form-box">
                <form action="./" method="POST">
                    <input class="form-control" name="loginuser" type="email" placeholder="Username" required>
                    <input class="form-control" name="loginpassword" type="password" placeholder="Password" required>
                    <span class="label">Not a user? Click <a href='#' data-toggle="modal" data-target="#registerForm">here</a> to register</span>
                    <button name="btnlogin" class="btn btn-warning btn-block login" type="submit">Login</button>
                </form>
            </div>
        </div>
        
</div>

<div class="modal fade" id="registerForm" tabindex="-1" role="dialog" aria-labelledby="regTitle" aria-hidden="true">
	<div class="modal-dialog" title="Register">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
				<span aria-hidden="true">&times;</span>
				<span class="sr-only">Close</span></button>
        		<h4 class="modal-title" id="regTitle">Register</h4>
         </div>
         
         <div class="modal-body">
				<form class="form-horizontal">
					<fieldset>

						<!-- Prepended text-->
						<div class="control-group">
 		 					<label class="control-label" for="username"></label>
		  					<div class="controls">
		    					<div class="input-group">
   		   					<span class="input-group-addon">Private</span><input data-toggle="tooltip" data-placement="top" title="That thing with the @ in it...You got this don't give up now!" id="username" name="username" class="form-control" placeholder="Email Address" type="text" required="">
    							</div>
		    				<p class="help-block">Your email address will be your username.</p>
  							</div>
						</div>

						<!-- Password input-->
						<div class="control-group">
  							<label class="control-label" for="password"></label>
  							<div class="controls">
		    					<input id="password" name="password" type="password" placeholder="Password" class="form-control" required="" data-toggle="tooltip" data-placement="top" title="I don't always enter a secure password... bu7wh3n1d0...">
		    					<p class="help-block">6+ Characters with mix case and at least one number.</p>
		  					</div>
						</div>

						<!-- Password input-->
						<div class="control-group">
		  					<label class="control-label" for="pwdcheck"></label>
 		 					<div class="controls">
 		   					<input id="pwdcheck" name="pwdcheck" type="password" placeholder="Confirm Password" class="form-control" required="">
 		   					<p class="help-block">Confirm your password.</p>
		  					</div>
						</div>

						<!-- Prepended text-->
						<div class="control-group">
  							<label class="control-label" for="forename"></label>
  							<div class="controls">
    							<div class="input-group">
		      					<span class="input-group-addon">Private</span><input id="forename" name="forename" class="form-control" placeholder="Forename" type="text" required="">
    							</div>
    						<p class="help-block">The forename with which you are blessed!</p>
  							</div>
						</div>

						<!-- Prepended text-->
						<div class="control-group">
  							<label class="control-label" for="surname"></label>
  							<div class="controls">
    							<div class="input-group">
      							<span class="input-group-addon">Private</span><input id="surname" name="surname" class="form-control" placeholder="Surname" type="text" required="">
    							</div>
    						<p class="help-block">Followed inevitably by your surname!</p>
  							</div>
						</div>

						<!-- Prepended text-->
						<div class="control-group">
  							<label class="control-label" for="handle"></label>
  							<div class="controls">
    							<div class="input-group">
      							<span class="input-group-addon">Public</span><input id="handle" name="handle" class="form-control" placeholder="Handle / Nickname" type="text" required="">
    							</div>
		    				<p class="help-block">The name your crushed opponents will remember!</p>
  							</div>
						</div>

						<!-- Prepended text-->
						<div class="control-group">
 		 					<label class="control-label" for="title"></label>
		  					<div class="controls">
 		   					<div class="input-group">
		      					<span class="input-group-addon">Public</span><input id="title" name="title" class="form-control" placeholder="Profession / Title" type="text">
		    					</div>
		    				<p class="help-block">What do you do in the real world?</p>
 		 					</div>
						</div>

						<!-- Select Multiple -->
						<div class="control-group">
 		 					<label class="control-label" for="skills">Select Skills:</label>
		  					<div class="controls">
 		   					<select id="skills" name="skills" class="form-control" multiple="multiple">
 		   					</select>
 		 					</div>
						</div>

						<!-- File Button --> 
						<div class="control-group">
		  					<label class="control-label" for="profilepic">Profile Picture:</label>
		  					<div class="controls">
		    					<input id="profilepic" name="profilepic" class="input-file" type="file">
		  					</div>
						</div>

						</fieldset>
					</form>
				</div>

			<div class="modal-footer">
        		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        		<button type="button" class="btn btn-primary">Submit</button>
      	</div>				
				
			</div>
		</div>
</div>
	
</body>

</html>