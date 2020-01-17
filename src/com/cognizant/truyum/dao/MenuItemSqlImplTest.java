package com.cognizant.truyum.dao;

import java.text.ParseException;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemSqlImplTest {

	public static void main(String[] args) {
		try {
			System.out.println("*********Admin List*******");
			testGetMenuItemListAdmin();
			System.out.println("*********Customer List*******");
			testGetMenuItemListCustomer();
			testModifyMenuItem();
			System.out.println("*********Modified List*******");
			testGetMenuItemListAdmin();
		} catch (ParseException e) {
			System.out.println(e);
		}
	}

	public static void testGetMenuItemListAdmin() throws ParseException {
		MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListAdmin();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}
	}

	public static void testGetMenuItemListCustomer() throws ParseException {
		MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
		List<MenuItem> customerList = menuItemDao.getMenuItemListCustomer();
		for (MenuItem x : customerList) {
			System.out.println(x);
		}
	}

	private static void testModifyMenuItem() throws ParseException {

		MenuItem m = new MenuItem(1, "veg fry",100.00f,true, DateUtil.convertToDate("20/12/2022"), "Starters",true);
       MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
       menuItemDao.modifyMenuItem(m);
}

		
	}

