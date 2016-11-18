package com.yogi.pizza.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TableController extends HttpServlet {

	private static final long serialVersionUID = -2019821864628575150L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	{
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{
		String action = request.getParameter("action");
		doPostAction(action, request, response);
	}
	private void doPostAction(String action, HttpServletRequest request,
			HttpServletResponse response) {
		
		
	}

		
}
