<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
<body>


<header> 
<nav> 
<h1 style="color:white"> Election Commission Of India</h1>
<ul id="nav">

</ul>
</nav>
</header>

<div class="divider">
</div>
<div class="fwimage1">
</div>

<div class="loginbox">
<img src="./images/r.png" class="avatar">
<h2 style="color:Black">Login here</h2>
<form action="l1" method="post">
<p style="color:Black">Voter ID No.</p>
<input type="text" name="c" placeholder="Enter Registered Voterid">
<p style="color:Black">Password</p>
<input type="password" name="h" placeholder="Enter Password">

<input type="submit" value="Login">
<a href="registration.jsp">New User? Register Here</a><br>
<a href="admin.jsp">Admin Login Here</a><br>
</form>
</div>



</body>
</head>
</html>
