package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

//menu item admin main class
public class MenuItemDaoCollectionImplTest {
	static MenuItemDao menudao = new MenuItemDaoCollectionImpl();

	public static void main(String[] args) {
		testGetMenuItemListAdmin();
		testGetMenuItemListCustomer();
		testModifyMenuItem();
		testGetMenuItem();
	}

	public static void testGetMenuItemListAdmin() {
		System.out.println("Admin View");
		List<MenuItem> menu = menudao.getMenuItemListAdmin();
		System.out.printf("%-10s%-20s%-10s%-10s%-20s%-25s%-10s\n", "Id", "Name", "Price", "Active", "Date of Launch",
				"Category", "Free Delivery");
		for (MenuItem menuItem : menu) {
			System.out.println(menuItem);
		}
	}

	public static void testGetMenuItemListCustomer() {
		System.out.println("Customer View");
		List<MenuItem> menuitem = menudao.getMenuItemListCustomer();
		System.out.printf("%-10s%-20s%-10s%-10s%-20s%-25s%-10s\n", "Id", "Name", "Price", "Active", "Date of Launch",
				"Category", "Free Delivery");
		for (MenuItem menuItem : menuitem) {
			System.out.println(menuItem);
		}
	}

	public static void testModifyMenuItem() {
		System.out.println("Modify Menu Item");
		System.out.printf("%-10s%-20s%-10s%-10s%-20s%-25s%-10s\n", "Id", "Name", "Price", "Active", "Date of Launch",
				"Category", "Free Delivery");
		MenuItem menuitem = new MenuItem(1, "Eat and enjoy", 12345.0f, true, DateUtil.convertToDate("02/01/2020"),
				"Main Dish", false);
		menudao.modifyMenuItem(menuitem);
	}

	public static void testGetMenuItem() {
		System.out.println("Get Menu item");
		System.out.printf("%-10s%-20s%-10s%-10s%-20s%-25s%-10s\n", "Id", "Name", "Price", "Active", "Date of Launch",
				"Category", "Free Delivery");
		MenuItem menuitem = menudao.getMenuItem(3);
		System.out.println(menuitem);
	}

}
