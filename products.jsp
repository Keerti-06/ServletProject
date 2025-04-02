<%@ page import="java.util.List" %>
<%@ page import="com.cart.Product" %>
<%
    List<Product> productList = (List<Product>) request.getAttribute("products");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Available Products</title>
    <style>
        body {
            background-color: #ffffff;
            font-family: Arial, sans-serif;
            color: #020202;
            margin: 0;
        }

        h1 {
            background-color: #fa4860;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 30px;
        }

        .product {
            border: 1px solid #bcbcbc;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 0 10px #bcbcbc;
            text-align: center;
        }

        .product img {
            width: 100%;
            max-height: 180px;
            object-fit: contain;
        }

        .add-btn {
            background-color: #fa4860;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 10px;
        }

        .add-btn:hover {
            background-color: #871c27;
        }
    </style>
</head>
<body>
    <h1>Available Products</h1>

    <div class="products">
        <%
            if (productList != null && !productList.isEmpty()) {
                for (Product p : productList) {
        %>
        <div class="product">
            <img src="<%= p.getImageUrl() %>" alt="Product Image">
            <h3><%= p.getName() %></h3>
            <p>₹<%= p.getPrice() %></p>
            <form action="add-to-cart" method="post">
		    <input type="hidden" name="productId" value="${product.id}" />
		    <input type="submit" value="Add to Cart" />
		</form>
        </div>
        <%
                }
            } else {
        %>
        <p>No products available.</p>
        <%
            }
        %>
    </div>
</body>
</html>
