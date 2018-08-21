<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*, Form.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Page </title>
	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="keywords" content="Gallivant Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta Tags -->
	<!-- Style-sheets -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/lightbox.css">
	<!-- // Style-sheets -->
	<!-- Online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,200,400,500,600" rel="stylesheet">
	
	<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
	<!--// Online-fonts -->
	<title>Welcome User</title>
	<link rel="stylesheet" type="text/css" href="css/welcome.css">
</head>


<body>
<%
response.setHeader("Pragma","no-cache") ;
response.setHeader("Cache-Control","no-store") ;
response.setHeader("Expires","0") ;
response.setDateHeader("Expires",-1) ;
%>

<%String t=(String)session.getAttribute("name"); %>
<%if(t!=null) {%>

	<!--Header-->
	
		<!--top-bar-w3-agile-->
		<div class="top-bar-w3-agile">
			<div class="container">
				<div class="header-top-agileits">
					<div class="agile_forms">
						
					</div>
					<br>
					<div class="clearfix"></div>
				</div>
				<div class="header-nav">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<br><br>
							<h1><a class="navbar-brand" href="1.html">E<span>lection Commission Of India</span></a></h1>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
							<nav class="cl-effect-15" id="cl-effect-15">
								<ul>
									<li><a href="1.html" data-hover="Home">Home</a></li>
									<li><a href="admin_logout.jsp" class="active" data-hover="Logout">Logout</a></li>
								</ul>
							</nav>
						</div>
					</nav>
					
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--//top-bar-w3-agile-->
	
	<!--//Header-->
	<div class="divider">
</div>
<div class="fwimage2">
<br><br><br><br><br><br><br><br><br><br><br><br>
<% 	
	 try
      {
    	    Connection c=ConnectionClass.conTest();
			Statement st=c.createStatement();
%>
<div class="team featured_services">
		<div class="container">
			
			<div  class="agile_wthree_inner_grids">
			  <div style="float:left; display: flex; align-items: center;" class="col-md-3 w3_agile_team_grid_inf">
			  <h1 style=" text-decoration: underline;"> RESULT </h1>
			  
			</div>
				</div>
				<div style="float:left;" class="col-md-3 w3_agile_team_grid_inf">
					<img src="images/sbjp3.jpg" alt=" " class="img-responsive" />
					<div class="team_agile _icons">
 <% 
			ResultSet rs1=st.executeQuery("select count(PARTY) from RESULT where PARTY='"+"Bharatiya Janata Party"+"'");
			while(rs1.next()) { 
				String PART=rs1.getString(1);
%>
            <h3> <%= PART %></h3>
            <div class="clearfix"> </div>
					</div>
				</div>

<% 	} %>
             	<div style="float:left;" class="col-md-3 w3_agile_team_grid_inf">
					<img src="images/BSP.png" alt=" " class="img-responsive" />
					<div class="team_agile _icons">
         
<% 
			ResultSet rs2=st.executeQuery("select count(PARTY) from RESULT where PARTY='"+"Bahujan Samaj Party"+"'");
			while(rs2.next()) { 
				String PAR=rs2.getString(1);
%>
			<h3> <%= PAR %></h3>
			<div class="clearfix"> </div>
			        </div>
			   </div>
<% 	} %>
             	<div style="float:left;" class="col-md-3 w3_agile_team_grid_inf">
					<img src="images/scpi1.jpg" alt=" " class="img-responsive" />
					<div class="team_agile _icons">
<%         
			ResultSet rs3=st.executeQuery("select count(PARTY) from RESULT where PARTY='"+"Communist Party of India"+"'");
			while(rs3.next()) { 
				String PAR=rs3.getString(1);
%>
				
			<h3> <%= PAR %></h3>
			<div class="clearfix"> </div>
			        </div>
			   </div>
<% 	} %>
             	<div style="float:left;" class="col-md-3 w3_agile_team_grid_inf">
					<img src="images/scpim1.jpg" alt=" " class="img-responsive" />
					<div class="team_agile _icons">
<%         
			ResultSet rs4=st.executeQuery("select count(PARTY) from RESULT where PARTY='"+"Communist Party of India (Marxist)"+"'");
			while(rs4.next()) { 
				String PAR=rs4.getString(1);
%>
            <h3> <%= PAR %></h3>
			<div class="clearfix"> </div>
			        </div>
			   </div>
<% 	} %>
             	<div style="float:left;" class="col-md-3 w3_agile_team_grid_inf">
					<img src="images/sinc2.jpg" alt=" " class="img-responsive" />
					<div class="team_agile _icons">
<%         
			ResultSet rs5=st.executeQuery("select count(PARTY) from RESULT where PARTY='"+"Indian National Congress"+"'");
			while(rs5.next()) { 
				String PAR=rs5.getString(1);
%>
            <h3> <%= PAR %></h3>
			<div class="clearfix"> </div>
			        </div>
			   </div>
<% 	} %>
             	<div style="float:left;" class="col-md-3 w3_agile_team_grid_inf">
					<img src="images/stmc3.png" alt=" " class="img-responsive" />
					<div class="team_agile _icons">
<%         
			ResultSet rs6=st.executeQuery("select count(PARTY) from RESULT where PARTY='"+"All India Trinamool Congress"+"'");
			while(rs6.next()) { 
				String PAR=rs6.getString(1);
%>
            <h3> <%= PAR %></h3>
			<div class="clearfix"> </div>
			        </div>
			   </div>
<% 	} %>
             	<div style="float:left;" class="col-md-3 w3_agile_team_grid_inf">
					<img src="images/NCP1.jpg" alt=" " class="img-responsive" />
					<div class="team_agile _icons">
<%         
			ResultSet rs7=st.executeQuery("select count(PARTY) from RESULT where PARTY='"+"Nationalist Congress Party"+"'");
			while(rs7.next()) { 
				String PAR=rs7.getString(1);
%>
             <h3> <%= PAR %></h3>
			 <div class="clearfix"> </div>
			        </div>
			   </div>
<% 	} 
      }
		catch(Exception e) {System.out.println(e);}
%>
</div>		
	
</div>

<% } else { %>

<div class="fwimg">
<h1 align="center">You are not logged in!!!</h1>
</div>

<%} %>	

</body>
</html>