package com.cognizant.truyum.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<MenuItem> menuItemList;
	private double total;
	
	public Cart() {
		super();
	menuItemList = new ArrayList<>();
	total = 0.0;
	}
	
	
	public double getTotal() {
		return total;
	}
	public void setTotal(double toatal) {
		this.total = toatal;
	}
	public List<MenuItem> getMenuItemList() {
		return menuItemList;
	}
	public void setMenuItemList(List<MenuItem> menuItemList) {
		this.menuItemList = menuItemList;
	}

}
