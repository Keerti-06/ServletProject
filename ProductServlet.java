package com.cart;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class ProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");

        List<Product> products = new ArrayList<>();
        int idCounter = 1;

        switch (category) {
            case "Electronics":
                products.add(new Product(idCounter++, "Smartphone", "images/smartphones.jpg", 15000));
                products.add(new Product(idCounter++, "Laptop", "images/laptop.jpg", 45000));
                products.add(new Product(idCounter++, "Air Conditioner", "images/ac.jpg", 25000));
                products.add(new Product(idCounter++, "Headphone", "images/headphones.jpg", 22000));
                products.add(new Product(idCounter++, "Television", "images/tv.jpg", 3000));
                break;

            case "Stationery":
                products.add(new Product(idCounter++, "Notebook", "images/notebook.jpg", 250));
                products.add(new Product(idCounter++, "Pen Pack", "images/pen.jpg", 80));
                products.add(new Product(idCounter++, "Pencil set", "images/pencil.jpg", 120));
                products.add(new Product(idCounter++, "Pencil Case", "images/pcase.jpg", 140));
                products.add(new Product(idCounter++, "Stapler", "images/stapler.jpg", 70));
                break;

            case "Fashion":
                products.add(new Product(idCounter++, "T-shirt", "images/tshirt.jpg", 599));
                products.add(new Product(idCounter++, "Jeans", "images/jeans.jpg", 1099));
                products.add(new Product(idCounter++, "Saree", "images/saree.jpg", 1999));
                products.add(new Product(idCounter++, "Dress", "images/dress.jpg", 1299));
                products.add(new Product(idCounter++, "Floral Top", "images/tops.jpg", 299));
                break;

            case "Home & Kitchen":
                products.add(new Product(idCounter++, "Mixer Grinder", "images/mixer.jpg", 2999));
                products.add(new Product(idCounter++, "Kettle", "images/kettle.jpg", 499));
                products.add(new Product(idCounter++, "Lamp", "images/lamp.jpg", 999));
                products.add(new Product(idCounter++, "Microwave", "images/microwave.jpg", 3499));
                products.add(new Product(idCounter++, "Curtains", "images/curtains.jpg", 899));
                break;

            case "Books":
                products.add(new Product(idCounter++, "Advance Java Programming", "images/ajp.jpg", 499));
                products.add(new Product(idCounter++, "Data Structures", "images/ds.jpg", 599));
                products.add(new Product(idCounter++, "Harry Potter", "images/hp.jpg", 699));
                products.add(new Product(idCounter++, "Wuthering Heights", "images/wh.jpg", 799));
                products.add(new Product(idCounter++, "Python Programming", "images/py.jpg", 899));
                break;
        }

        // Store the product list in request and session
        request.setAttribute("products", products);
        request.getSession().setAttribute("productList", products);

        // Forward request to the product.jsp
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }
}
