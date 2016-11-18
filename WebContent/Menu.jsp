<%@page import="java.util.Date"%>
<%@page import="com.yogi.pizza.constants.GlobalConstants"%>
<%@page import="com.yogi.pizza.beans.Login"%>
<%
	Login login =(Login) session.getAttribute(GlobalConstants.USER);
%>

<div class="templatemo_content_left_section">
	<h1 style="text-align: center">HOS Menu's</h1>
	<ul>
		<li><a href=""> <%=new Date() %>
		</a></li>
		<li><a href="UserHome.jsp"> Welcome,<%=login.getUserName() %>
		</a></li>
		<% if(login.getUserName().equals("cook")){%>
		<li><a href="AddCategory.jsp"> Add Category </a></li>
		<li><a href="AddItem.jsp"> Add Item </a></li>
		<li><a href="ViewOrder.jsp"> View Order </a></li>
		<li><a href="ViewBillToCook.jsp"> View Bill </a></li>
		<li><a href="LoginPage.jsp"> Log Out </a></li>
		<%} else{%>
		<li><a href="ViewCategory.jsp">Place Order</a></li>
		<li><a href="OrderStatus.jsp"> View Order Status </a></li>
		<li><a href="ViewBill.jsp"> View Bill </a></li>
		<li><a href="LoginPage.jsp"> Log Out </a></li>
		<%} %>
	</ul>
</div>