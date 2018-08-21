<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register here</title>
<link rel="stylesheet" type="text/css" href="css/reg.css">
</head>
<body>
<header> 
<nav> 
<h1 style="color:white; align:center;"> Election Commission Of India</h1>
<ul id="nav">
</ul>
</nav>
</header>
<div class="divider">
</div>
<div class="fwimage1">
</div>
<div class="regbox">
<img src="images/reg.png" class="ava">
<h2 style="color:Black">Register Here</h2>
<form action="rah" method="post">
<p style="color:Black">Full Name*</p>
<input type="text" name="a" placeholder="Enter Name" required="required">
<p style="color:Black">Unique Code*</p>
<input type="text" name="b" placeholder="Enter unique code and remember" required="required">
<p style="color:Black">Voter id*</p>
<input type="text" name="c" placeholder="Enter VoterId No." required="required">
<p style="color:Black">Email*</p>
<input type="email" name="d" placeholder="Enter email">
<p style="color:Black">Address*</p>
<input type="text" name="e" placeholder="Enter Address" required="required">
<p style="color:Black">Date of Birth</p>
<input type="text" name="f" placeholder="Enter Date of Birth">
<p style="color:Black">Contact Number*</p>
<input type="text" name="g" placeholder="Enter Mobile Number" required="required">
<p style="color:Black">Password*</p>
<input type="password" name="h" placeholder="Enter Password" required="required">
<input type="submit" value="Register">
<a href="admin.jsp">Admin Login</a><br>
<a href="login.jsp">User Login Here</a><br>
</form>
</div>
</body>
</html>