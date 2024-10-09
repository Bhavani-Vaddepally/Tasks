<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products - RevShop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../CSS/Seller_Main.css">

    <style>
        /* Custom styles for product cards */
        .product-card {
            margin-bottom: 30px; /* Space between cards */
            border: 1px solid #dee2e6; /* Light border */
            border-radius: 5px; /* Rounded corners */
            overflow: hidden; /* Clip any overflowing content */
            transition: transform 0.2s; /* Smooth hover effect */
        }

        .product-card:hover {
            transform: scale(1.05); /* Slight zoom on hover */
        }

        .product-image {
            height: 200px; /* Fixed height for product images */
            object-fit: cover; /* Cover the image without stretching */
        }

        .product-title {
            font-size: 1.25rem; /* Title font size */
            font-weight: bold; /* Title boldness */
        }

        .product-price {
            color: #28a745; /* Green color for price */
            font-weight: bold; /* Bold price */
        }
    </style>
</head>

<body>

    <%@ include file="header.jsp" %>
    <div class="container mt-5">
        <h1 class="text-center">Our Products</h1>
        <div class="row">
            <!-- Example Product Card 1 -->
            <div class="col-md-4">
                <div class="product-card">
                    <img src="https://i.etsystatic.com/28132690/r/il/0964d6/5820028046/il_1588xN.5820028046_e76n.jpg" alt="Product 1" class="product-image card-img-top">
                    <div class="card-body">
                        <h5 class="product-title">Neck Velvet Dress</h5>
                        <p class="product-price">$1600</p>
                        <p class="card-text">Modern Classic with Sensual Front Cut - Elegant High Neck Velvet Dress - Timeless Sophistication</p>
                        <a href="Login_page.jsp" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Example Product Card 2 -->
            <div class="col-md-4">
                <div class="product-card">
                    <img src="https://rukminim2.flixcart.com/image/750/900/xif0q/fairness/y/a/o/bb-cream-instant-spot-coverage-9g-white-beauty-cream-23g-pond-s-original-imagh5wt43qquuxm.jpeg?q=20&crop=false" alt="Product 2" class="product-image card-img-top">
                    <div class="card-body">
                        <h5 class="product-title">POND's BB+ Cream, Instant Spot Coverage 9g & White Beauty Cream 15g  (24 g)</h5>
                        <p class="product-price">$290</p>
                        <p class="card-text">
BB+ Cream, Instant Spot Coverage + Natural Glow & White Beauty Anti Spot Fairness Cream SPF 15 PA++</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Example Product Card 3 -->
            <div class="col-md-4">
                <div class="product-card">
                    <img src="https://paragonfootwear.com/cdn/shop/files/PUK7030L-MTN_1.jpg?v=1722572795&width=1920" alt="Product 3" class="product-image card-img-top">
                    <div class="card-body">
                        <h5 class="product-title">Paragon Women Chappals</h5>
                        <p class="product-price">$550</p>
                        <p class="card-text">Look your stylish best with the latest women's wedge heel sandals from Paragon. The modern design and timeless comfort of this pair make</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>
            

            <!-- You can add more products here in the same structure -->
        </div>
    </div>

    <!-- Load Bootstrap JS at the end of the body for better performance -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
