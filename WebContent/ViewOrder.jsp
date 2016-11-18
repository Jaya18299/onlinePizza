<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="org.pk.hotel.constants.GlobalConstants"%>
<%@page import="org.pk.hotel.beans.OrderMaster.OrderStatus"%>
<%@page import="org.pk.hotel.beans.OrderMaster.OrderStatus"%>
<%@page import="org.pk.hotel.beans.OrderMaster"%>
<%@page import="org.pk.hotel.dao.CookServices"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<OrderMaster> orders = new CookServices().getAllOrders();
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="refresh" content="4" />
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
				<jsp:include page="Menu.jsp" />
			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">
				<div style="width: 70%">
					<h1>View Orders</h1>
					<table width="100%" style="text-align: center;">
						<%
								if (!GlobalConstants.MESSAGE.equals("")
										&& GlobalConstants.MESSAGE != null) {
									out.write("<tr><td colspan='3' align='center' style=''color:white;visibility:visible'> "
											+ GlobalConstants.MESSAGE + " </td></tr>");
									GlobalConstants.MESSAGE = "";
								}
							%>
						<% if(orders.size() != 0 && orders != null) {%>
						<tr>
							<th>Sr No</th>
							<th>Table No</th>
							<th>Name</th>
							<th>Actual Status</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
						<% for(int i=0;i<orders.size();i++)
						{
							OrderMaster om = orders.get(i);
						%>
						<form action="cook?action=updateOStatus" method="post">
							<tr>
								<td><%=i+1 %> <input type="hidden" name="orderId"
									value="<%= om.getId()%>" /></td>
								<td><%=om.getTableNo() %></td>
								<td><a href="ViewOrderedItems.jsp?orderId=<%=om.getId() %>"><%=om.getOrderName() %>
								</a></td>
								<td><%=om.getOrderStat().name() %></td>
								<td><select name="status">
										<% for(OrderStatus os : OrderStatus.values()){ %>
										<option><%=os.name() %>
										</option>

										<%}%>
								</select></td>
								<td><input type="submit" value="update" /></td>
							</tr>
						</form>
						<%}
						} else {%>
						<tr>
							<td>Their no Orders Available</td>
						</tr>
						<%} %>
					</table>

				</div>
				<div class="cleaner_with_height">&nbsp;</div>

				<a href="subpage.html"></a>
			</div>
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