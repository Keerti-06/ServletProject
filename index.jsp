<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart Home</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #ffffff;
        }
        header {
            background-color: #fa4860;
            color: #ffffff;
            padding: 20px;
            font-size: 24px;
            text-align: center;
        }
        .cart-section {
            background-color: #fce54b;
            color: #020202;
            padding: 40px 20px;
            font-size: 28px;
            text-align: center;
        }
        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            padding: 40px;
        }
        .category {
            background-color: #e0e5e9;
            border: 1px solid #bcbcbc;
            border-radius: 12px;
            overflow: hidden;
            transition: transform 0.3s;
        }
        .category:hover {
            transform: scale(1.03);
        }
        .category img {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }
        .category-title {
            padding: 10px;
            text-align: center;
            background-color: #6c6c6c;
            color: #ffffff;
            font-weight: bold;
        }
        nav {
            background-color: #871c27;
            color: #ffffff;
            text-align: center;
            padding: 15px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        Your Cart is Ready to Go
    </header>

    <div class="cart-section">
         Your Picks, Your Style!
    </div>

    <div class="categories">
        <div class="category">
           <a href="ProductServlet?category=Electronics">
                <img src="images/electronics.jpg" alt="Electronics">
                <div class="category-title">Electronics</div>
            </a>
        </div>
        <div class="category">
           <a href="ProductServlet?category=Stationery">
                <img src="images/stationery.jpg" alt="Stationery">
                <div class="category-title">Stationery</div>
            </a>
        </div>
        <div class="category">
            <a href="ProductServlet?category=Fashion">
                <img src="images/fashion.jpg" alt="Fashion">
                <div class="category-title">Fashion</div>
            </a>
        </div>
        <div class="category">
           <a href="ProductServlet?category=Home & Kitchen">
                <img src="images/home.jpg" alt="Home & Kitchen">
                <div class="category-title">Home & Kitchen</div>
            <a href="ProductServlet?category=Home%20%26%20Kitchen">.</a>
            </a>
        </div>
        <div class="category">
            <a href="ProductServlet?category=Books">
                <img src="images/books.jpg" alt="Books">
                <div class="category-title">Books</div>
            </a>
        </div>
    </div>

    <nav>
    <a href="index.jsp" style="color: white; text-decoration: none;">Home</a> |  
    <a href="cart.jsp" style="color: white; text-decoration: none;">Cart</a> |  
    <a href="checkout.jsp" style="color: white; text-decoration: none;">Orders</a></a>
    </nav>
</body>
</html>
