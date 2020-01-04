package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {
    static CartDao cartDao = new CartDaoCollectionImpl();

    public static void main(String[] args) {
        testAddCartItem();
        testgetAllCartItems();
        testRemoveCartItems();
        testgetAllCartItems();

    }

    public static void testAddCartItem() {
        System.out.println("Products added into cart");
        cartDao.addCartItem(1, 2); // 1 is userId,2 IS menuItemId
        cartDao.addCartItem(1, 3); // 1 is userId,3 is menuItemid

    }

    public static void testgetAllCartItems() {
        try {
            System.out.println("Retrieving all the items from cart");
            List<MenuItem> list = cartDao.getAllCartItems(2).getMenuItemList();
            for (MenuItem menuItem : list) {
                System.out.println(menuItem);
            }
            System.out.println("Total price:" + cartDao.getAllCartItems(2).getTotal());
        } catch (CartEmptyException e) {
            System.err.println(e);
        }
    }

    public static void testRemoveCartItems() {
        System.out.println("Remove Cart");
        cartDao.removeCartItem(1, 3);
    }
}
