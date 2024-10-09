<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DAO.Cart_DAO" %>
<%@ page import="DAO.Favorite_DAO" %>
<%@ page import="DAO.Product_DAO" %>
<%@ page import="java.util.List" %>
<%@ page import="ENTITY.Favorites" %>
<%@ page import="ENTITY.Products" %>
<%@ page import="DTO.Customer_DTO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RevShop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .product-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 15px;
            transition: transform 0.2s ease-in-out;
        }
        .product-card:hover {
            transform: translateY(-5px);
        }
        .product-img {
            width: 100px;
            height: auto;
            border-radius: 5px;
            transition: transform 0.2s ease;
        }
        .product-img:hover {
            transform: scale(1.05);
        }
        .product-details h5 {
            font-weight: bold;
        }
        .btn-action {
            margin-right: 10px;
        }
        .btn-action:hover {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .product-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }
        .price-details {
            color: #28a745;
            font-weight: bold;
        }
        hr {
            border-top: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <%@ include file="Customer_navbar.jsp" %>

    <div class="container mt-5">
        <h1 class="mb-4">My Favorites</h1>

        <%
            Customer_DTO customer_DTO = (Customer_DTO) session.getAttribute("customer");
        
            if (customer_DTO != null) {
                Cart_DAO cartDAO = new Cart_DAO();
                Product_DAO productDAO = new Product_DAO();
                Favorite_DAO favoriteDAO = new Favorite_DAO();
                List<Favorites> favoriteItems = favoriteDAO.viewFavoriteByCustomer_id(customer_DTO.getCustomer_id());
                if (favoriteItems != null && !favoriteItems.isEmpty()) {
        %>
        <div class="row">
            <% for (Favorites favoriteItem : favoriteItems) { 
                int product_id = favoriteItem.getProduct_id();
                Products product = productDAO.getProductDetails(product_id);
                double discountPrice = product.getPrice() - (product.getMax_discount() * product.getPrice() / 100);
            %>
            <div class="col-md-12">
                <div class="product-card row">
                    <div class="col-md-2">
                        <a href="/RevShop_P0/CustomerJSP/ProductDetails.jsp?product_id=<%= product.getProduct_id() %>">
                            <img src="<%= product.getImage_url() %>" class="img-fluid product-img" alt="<%= product.getProduct_name() %>">
                        </a>
                    </div>
                    <div class="col-md-6 product-details">
                        <h5><%= product.getProduct_name() %></h5>
                        <p class="text-muted">Original Price: ₹<%= product.getPrice() %></p>
                        <p class="price-details">Discounted Price: ₹<%= discountPrice %></p>
                    </div>
                    <div class="col-md-4 product-actions">
                        <form method="post" action="/RevShop_P0/CustomerFavoriteActionsServlet">
                            <input type="hidden" name="favorite_id" value="<%= favoriteItem.getFavorite_id() %>">
                            <input type="hidden" name="product_id" value="<%= product_id %>">
                            <button type="submit" name="action" value="remove" class="btn btn-danger btn-action">Remove</button>
                            <button type="submit" name="action" value="move_to_cart" class="btn btn-success btn-action">Move to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
        <% 
                } else {
                    out.println("<p class='text-muted'>Your Favorites is empty.</p>");
                }
            } else {
                out.println("<p class='text-danger'>You need to log in to view your favorites.</p>");
            }
        %>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
