package com.yogi.pizza.beans;

public class Category {

		int id;
		String categoryName;
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getCategoryName() {
			return categoryName;
		}
		public void setCategoryName(String string) {
			this.categoryName = string;
		}
		
		@Override
		public String toString()
		{
			return "Category { id="+this.id+", categoryName="+this.categoryName+" }";
		}
				
}
