package com.cart;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ShoppingCart {
    private List<CartItem> cartItems;

    public ShoppingCart() {
        cartItems = new ArrayList<>();
    }

    // Add product to cart
    public void addProduct(Product product) {
        cartItems.add(new CartItem(product, 1)); // Assume quantity is 1 for now
    }

    // Remove product by id
    public void removeProduct(int productId) {
        Iterator<CartItem> iterator = cartItems.iterator();
        while (iterator.hasNext()) {
            CartItem item = iterator.next();
            if (item.getProduct().getId() == productId) {
                iterator.remove();
                break;
            }
        }
    }

    // Get the cart items
    public List<CartItem> getCartItems() {
        return cartItems;
    }
    
    
    
    public double getTotal() {
        double total = 0;
        for (CartItem item : cartItems) {
            total += item.getProduct().getPrice() * item.getQuantity();
        }
        return total;
    }
    
 

}
