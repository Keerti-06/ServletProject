<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, com.cart.*" %>
<%
    HttpSession sessionObj = request.getSession(false);
    ShoppingCart cart = null;
    if (sessionObj != null) {
        cart = (ShoppingCart) sessionObj.getAttribute("cart");
    }

    List<CartItem> items = cart != null ? cart.getCartItems() : new ArrayList<>();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <style>
        body {
            font-family: Arial;
            background-color: #ffffff;
            padding: 20px;
        }
        .cart-container {
            width: 80%;
            margin: auto;
        }
        .cart-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 15px;
            margin-bottom: 10px;
            border: 1px solid #bcbcbc;
            border-radius: 12px;
            background-color: #fce54b;
        }
        .cart-item img {
            height: 100px;
            width: 100px;
            object-fit: cover;
            border-radius: 8px;
        }
        .cart-details {
            flex: 1;
            padding-left: 20px;
        }
        .cart-actions {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }
        .remove-btn {
            background-color: #f3030e;
            color: #ffffff;
            padding: 5px 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        .total {
            font-size: 20px;
            font-weight: bold;
            margin-top: 30px;
            text-align: right;
        }
        .buy-btn {
            background-color: #fa4860;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            float: right;
            margin-top: 15px;
        }
    </style>
</head>
<body>
<div class="cart-container">
    <h2>Your Shopping Cart</h2>
    <%
        if (items != null && !items.isEmpty()) {
        	 for (CartItem item : items) {
                Product p = item.getProduct();
    %>
    <div class="cart-item">
        <img src="<%= p.getImageUrl() %>" alt="<%= p.getName() %>">
        <div class="cart-details">
            <h3><%= p.getName() %></h3>
            <p>Price: ₹<%= p.getPrice() %></p>
            <p>Quantity: <%= item.getQuantity() %></p>
        </div>
        <div class="cart-actions">
            <form action="remove-from-cart" method="post">
                <input type="hidden" name="productId" value="<%= p.getId() %>">
                <button class="remove-btn" type="submit">Remove</button>
            </form>
        </div>
    </div>
    <%
            }
        } else {
    %>
        <p>No items in cart.</p>
    <%
        }
    %>

   <div class="total">
    Total Amount: ₹<%= cart != null ? cart.getTotal() : 0 %>
   </div>

    <form action="buy" method="post">
        <button type="submit" class="buy-btn">Buy Now</button>
    </form>
</div>
</body>
</html>
