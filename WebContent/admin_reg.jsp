<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Registration</title>
<link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
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

<div class="adminbox">
<img src="images/log.png" class="ava">
<h2 style="color:Black">Admin Registration</h2>
<form action="s2" method="post">
<p style="color:Black">Name</p>
<input type="text" name="n1" placeholder="Enter Name">
<p style="color:Black">Password</p>
<input type="password" name="p1" placeholder="Enter Password">
<p style="color:Black">Email</p>
<input type="email" name="e1" placeholder="Enter Email">
<input type="submit" value="Register">
<div style="color: blue">Already registered?
<a href="admin_login.jsp">Admin Login here </a>
</div>
</form>
</div>
</body>
</html>