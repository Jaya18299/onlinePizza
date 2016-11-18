<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setHeader ("Expires", "0"); //prevents caching at the proxy server
%> 
<%@page import="com.yogi.pizza.constants.GlobalConstants"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hotel Ordering System</title>
<link href="resources/css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container">
		<!-- end of menu -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1></h1>
			</div>
		</div>
		<div id="templatemo_header">
			
		</div>
		<!-- end of header -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1></h1>
			</div>
		</div>
		<div id="templatemo_content">

			<div id="templatemo_content_left">
				<div class="templatemo_content_left_section">
					<h1 style="text-align: center">HOS Menu's</h1>
					<ul>
						<li><a href="HomePage.html"> Home </a></li>
						<li><a href="LoginPage.jsp"> Login </a></li>
						<li><a href="LoginPage.jsp"> Table Login </a></li>
						<li><a href="AboutUs.html">About Us</a></li>
						<li><a href="ContactUs.html">Contact Us </a></li>
					</ul>
				</div>
			</div>
			<form action="control?action=login" method="post">
				<table
					style="width: 40%; margin: 20px; padding: 20px; border-style: double">
					<tr>
						<td colspan="2" style="text-align: center; font-size: 17px">
							Login</td>
					</tr>
					<%
								if (!GlobalConstants.MESSAGE.equals("")
										&& GlobalConstants.MESSAGE != null) {
									out.write("<tr><td colspan='3' align='center' style=''color:white;visibility:visible'> "
											+ GlobalConstants.MESSAGE + " </td></tr>");
									GlobalConstants.MESSAGE = "";
								}
							%>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="userName" id="userName" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" id="pass" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="Login" /> 
							<input type="reset" />
						</td>
					</tr>
				</table>
			</form>
			<!-- end of content left -->
			<!-- end of content right -->
			<div class="cleaner_with_height">&nbsp;</div>
		</div>
		<!-- end of content -->

		<div id="templatemo_footer">
			<a href="HomePage.html">Home</a> | <a href="LoginPage.jsp"> Login
			</a> | <a href="LoginPage.jsp">Table Login </a> | <a href="AboutUs.html">About
				Us</a> | <a href="ContactUs.html">Contact Us</a><br /> Copyright ©
			2015 <a href="AboutUs.html"><strong>My Project Details </strong></a>
			| Designed by <a href="ContactUs.html" target="_parent"
				title="free css templates"> Project Team</a>
		</div>
		<!-- end of footer -->
		<!--  Free CSS Template www.templatemo.com -->
	</div>
	<!-- end of container -->
</body>
</html>