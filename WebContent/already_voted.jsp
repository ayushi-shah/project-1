<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/welcome.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Already voted</title>
</head>
<body>
<div class="fwimg">
 <%
      String name = request.getParameter("name");
 %>
<h1 style="text-align: center">Sorry!! Vote is allowed only once... <br>You have already used this voter card number: </h1>
<br>
<h1 style="text-align: center;"><%out.println(name);%></h1>
<br><br>
<h2 style="text-align: center;">Click Here to <a href="login.jsp">Login Again</a></h2>
</div>
</body>
</html>