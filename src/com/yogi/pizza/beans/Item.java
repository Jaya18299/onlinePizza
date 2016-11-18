package com.yogi.pizza.beans;

public class Item {
	int id;
	int categoryId;
	String itemName;
	int qnt;
	String cost;
	
	public Item() {	
	}
	
	public Item(String itemName, int categoryId,int qnt, String cost) {
		this.itemName = itemName;
		this.categoryId = categoryId;
		this.qnt = qnt;
		this.cost = cost;
	}
	
	

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getCategoryId() {
		return categoryId;
	}



	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}



	public String getItemName() {
		return itemName;
	}



	public void setItemName(String itemName) {
		this.itemName = itemName;
	}



	public int getQnt() {
		return qnt;
	}



	public void setQnt(int qnt) {
		this.qnt = qnt;
	}



	public String getCost() {
		return cost;
	}



	public void setCost(String cost) {
		this.cost = cost;
	}



	@Override
	public String toString()
	{
		return "Item {id="+this.id+", categoryId="+this.categoryId+", itemName="+this.itemName+", qnt="+this.qnt+" cost="+this.cost+" }";
	}

}
