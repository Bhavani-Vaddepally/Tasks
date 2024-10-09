<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - RevShop</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="cssFiles/about.css">
</head>
<body>
<!-- Load Bootstrap JS and Popper.js at the end of the body for better performance -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>


    <!-- Include the header -->
    <%@ include file="header.jsp" %>
    <%-- <%@ include file="Login_page.jsp" %>--%>
    <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="/RevShop_P0/images/profile.png" alt="Profile" class="profile-icon">
    </a>
    <ul class="dropdown-menu" aria-labelledby="profileDropdown">
        <li><a class="dropdown-item" href="">Update Profile</a></li>
        <li><a class="dropdown-item" href="">Wallet</a></li>
        <li><a class="dropdown-item" href="header.jsp">Logout</a></li>
    </ul>
</li>
    

    <!-- Main content for About page -->
    <div class="container my-5">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1>About RevShop</h1>
                <p class="lead">Your One-Stop Online Shop for All Your Needs</p>
            </div>
        </div>

        <div class="row my-4">
            <div class="col-md-6">
                <img src="https://st3.depositphotos.com/20363444/31956/i/450/depositphotos_319560848-stock-photo-excited-friends-having-fun-shopping.jpghttps://st3.depositphotos.com/20363444/31956/i/450/depositphotos_319560848-stock-photo-excited-friends-having-fun-shopping.jpg" class="img-fluid" alt="About Us Image">
            </div>
            <div class="col-md-6">
                <h2>Who We Are</h2>
                <p>
                    RevShop is a leading eCommerce platform dedicated to providing a seamless shopping experience to our customers. 
                    We offer a wide range of products, from electronics and fashion to home essentials and more.
                    With a focus on customer satisfaction, we aim to provide top-quality products at competitive prices.
                </p>
                <h2>Our Mission</h2>
                <p>
                    Our mission is to become your preferred online shopping destination by offering a diverse selection of products, 
                    a user-friendly shopping interface, and unbeatable customer service. We work closely with trusted brands and 
                    vendors to bring you the best of everything, all in one place.
                </p>
            </div>
        </div>

        <div class="row my-4">
            <div class="col-md-12">
                <h2>Why Shop with Us?</h2>
                <ul>
                    <li>Wide range of products across various categories</li>
                    <li>Seamless and secure online shopping experience</li>
                    <li>Dedicated customer support</li>
                    <li>Fast and reliable shipping</li>
                    <li>Exclusive discounts and offers for registered users</li>
                </ul>
            </div>
        </div>

        <div class="row my-4">
            <div class="col-md-12 text-center">
                <h3>Join Us on Our Journey!</h3>
                <p>
                    Become part of our growing community by registering today. Get access to personalized shopping experiences, 
                    early access to new arrivals, and special deals. We are committed to making your shopping experience enjoyable and convenient.
                </p>
            </div>
        </div>
    </div>

    <!-- Include the footer -->
    <%-- <%@ include file="footer.html" %> --%>
    

    <!-- Load Bootstrap JS and Popper.js at the end of the body for better performance -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
