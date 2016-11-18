<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="org.pk.hotel.beans.Login"%>
<%@page import="org.pk.hotel.beans.BillDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.pk.hotel.dao.UserService"%>
<%@page import="org.pk.hotel.constants.GlobalConstants"%>
<%
	UserService uService = new UserService(); 
	String tblNo = "0";
	if(request.getParameter("tableNo") != null)
	{
		tblNo = request.getParameter("tableNo");
	}
	
	ArrayList<BillDetails> bDetails = uService.getBill(Integer.parseInt(tblNo));
%>
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
				<jsp:include page="Menu.jsp" />
			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">
			<form action="ViewBillToCook.jsp" method="post">
			<table style="width: 90%; margin: 10px; padding: 10px; border-style: double">
				<tr>
					<td> tableNo</td>
					<td> <select name="tableNo">
						<option value="1"> Table 1</option> 
						<option value="2"> Table 2</option>
						<option value="3"> Table 3</option>
						<option value="4"> Table 4</option>
						<option value="5"> Table 5</option>						
					</select></td>
				</tr>
				<tr>					
					<td colspan="2">
						<input type="submit"/>
					</td>
				</tr>
			</table>
			</form>	
			<% if(bDetails != null && !bDetails.isEmpty()) {%>			
					<table
						style="width: 90%; margin: 20px; padding: 20px; border-style: double">
						<%
								if (!GlobalConstants.MESSAGE.equals("")
										&& GlobalConstants.MESSAGE != null) {
									out.write("<tr><td colspan='3' align='center' style=''color:white;visibility:visible'> "
											+ GlobalConstants.MESSAGE + " </td></tr>");
									GlobalConstants.MESSAGE = "";
								}
							%>
						<tr>
							<th>Sr No</th>
							<th>Order Name</th>
							<th>Item Name</th>
							<th>Item Cost</th>
							<th>Item Qnt</th>
							<th>Order Qnt</th>
							<th>Amt</th>
						</tr>
						<% double total = 0; %>
						<%for(int i=0; i < bDetails.size(); i++)
						{
							BillDetails bd = bDetails.get(i);
						%>
						<tr>
							<td><%=i+1 %></td>
							<td><%=bd.getOrderName() %></td>
							<td> <%=bd.getItemName() %></td>
							<td> <%=bd.getItemCost() %></td>
							<td><%=bd.getItemQnt() %></td>
							<td><%=bd.getOrderQnt() %></td>
							<td> <%=Double.parseDouble(bd.getItemCost()) * bd.getOrderQnt() %>
							<% total = (Double.parseDouble(bd.getItemCost()) * bd.getOrderQnt()) + total; %>
							</td>
						</tr>
						<%}%>
						<tr>
						
							<td  style="text-align: center;"> Total </td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td ><%=total %></td>
							
						</tr>
						
						
												
					</table>
					<%} else{%>
						Their is no Bill Details available on this table No <%=request.getParameter("tableNo") %>
					<% }%>
										
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