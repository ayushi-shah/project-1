<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>successfully voted</title>
<link rel="stylesheet" type="text/css" href="css/welcome.css">
</head>
<body>
<%
response.setHeader("Pragma","no-cache") ;
response.setHeader("Cache-Control","no-store") ;
response.setHeader("Expires","0") ;
response.setDateHeader("Expires",-1) ;
String s=(String)session.getAttribute("vname");
if(s!=null){
%>
<div class="fwimg">
<br><br>
<h1 align="center">VOTE SUCCESSFULLY REGISTERED.</h1><br>
<h3>Click Here to <a href="logout.jsp">Logout</a></h3>
</div>
<% }
else{ %>
<div class="fwimg">
<h1 align="center">You are not logged in!!!</h1>
</div>

<% } %>

</body>
</html>