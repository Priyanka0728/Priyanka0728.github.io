package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {

	public static void main(String[] args) throws CartEmptyException {
	    
		testAddCartItem();
		testGEtAllCartItems();
	    testRemoveCartItem();
	    testGEtAllCartItems();
		
	}
	
		public static void testAddCartItem() throws CartEmptyException {
		
            CartDao cartDao = new CartDaoCollectionImpl();
            cartDao.addCartItem(1, 2L);
            cartDao.addCartItem(1, 5L);
        

           
            List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
            System.out.println("User Added Cart List for CheckOut");
            for (MenuItem menuItem : menuItemListCustomer) {
                   System.out.println(menuItem);

		}
		}
		
		public static void testGEtAllCartItems() throws CartEmptyException {
			CartDao cartDao =new CartDaoCollectionImpl();
			try {
			List<MenuItem> menuItemListCustomer=cartDao.getAllCartItems(1l);
			System.out.println("User List All cart Itemas");
			for(MenuItem menuItem :menuItemListCustomer) {
				System.out.println(menuItem);
				
			}
			}catch (CartEmptyException e) {
                System.out.println("Cart is Empty");
			
			}
		}
		public static void testRemoveCartItem() {
            CartDao cartDao = new CartDaoCollectionImpl();
            System.out.println("Item List for Customer after Remove");
            try {
                   cartDao.removeCartItem(1, 2L);
                   cartDao.removeCartItem(1, 5L);
                   List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
                   for (MenuItem menuItem : menuItemListCustomer) {
                         System.out.println(menuItem);
                   }
            } catch (CartEmptyException e) {
                   System.out.println();
            }
     }

}


	

