package com.yogi.pizza.dao;

import java.util.ArrayList;

import com.yogi.pizza.beans.BillDetails;
import com.yogi.pizza.beans.Category;
import com.yogi.pizza.beans.Item;
import com.yogi.pizza.beans.Login;
import com.yogi.pizza.beans.OrderDetails;
import com.yogi.pizza.beans.OrderMaster;

public class UserService
{
	
	
DBConnect dbconnect = new DBConnect();
	
	public ArrayList<Category> getAllCategorys(){
		return dbconnect.getAllCategory();
	}
	public boolean checkLogin(Login login)
	{
		return  dbconnect.checkLogin(login);		
	}
	
	public ArrayList<Item> getAllItems(int catId)
	{
		return dbconnect.getAllItemsByCategory(catId);
	}
	
	public ArrayList<OrderMaster> getAllOrders(int tableNo){
		return dbconnect.getAllOrders(tableNo);
	}
	
	public ArrayList<BillDetails> getBill(int tableNo)
	{
		return dbconnect.getBill(tableNo);
	}
}