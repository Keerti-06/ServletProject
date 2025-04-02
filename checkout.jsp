<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, com.cart.*" %>
<%
    HttpSession sessionObj = request.getSession(false);
    ShoppingCart cart = (sessionObj != null) ? (ShoppingCart) sessionObj.getAttribute("cart") : null;
    List<CartItem> items = (cart != null) ? cart.getCartItems() : new ArrayList<>();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
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
            padding: 15px;
            border-bottom: 1px solid #bcbcbc;
            background-color: #fce54b;
        }
        .total {
            font-size: 20px;
            font-weight: bold;
            margin-top: 30px;
            text-align: right;
        }
        .confirm-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            font-size: 18px;
            color: #fa4860;
            font-weight: bold;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="cart-container">
    <h2>Checkout</h2>
    <%
        if (!items.isEmpty()) {
            for (CartItem item : items) {
                Product p = item.getProduct();
    %>
    <div class="cart-item">
        <h3><%= p.getName() %></h3>
        <p>Price: ₹<%= p.getPrice() %></p>
        <p>Quantity: <%= item.getQuantity() %></p>
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
        Total Amount: ₹<%= (cart != null) ? cart.getTotal() : 0 %>
    </div>

    <a href="confirmation.jsp" class="confirm-link">Confirm Your Order</a>
</div>
</body>
</html>
