<!DOCTYPE html>
<html>

<head>

<title>Login :: Hackathon</title>
<meta name="generator" content="Bluefish 2.2.5" >
<meta name="author" content="root" >
<meta name="date" content="2014-08-13T01:33:33+0200" >
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

<link href="css/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/main.js"></script>

</head>

<body>

<div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            
            <div class="form-box">
                <form action="./" method="POST">
                    <input class="form-control" name="user" type="email" placeholder="Username" required>
                    <input class="form-control" name="password" type="password" placeholder="Password" required>
                    <span class="label">Not a user? Click here to register</span>
                    <button class="btn btn-warning btn-block login" type="submit">Login</button>
                </form>
            </div>
        </div>
        
</div>

</body>

</html>