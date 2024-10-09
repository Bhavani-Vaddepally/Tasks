<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RevShop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../CSS/Seller_Main.css">


<style>
/* General styles for all navbar links */

<style>
        /* General Body Styling */
        body {
            background-color: #022c2e;
        }
        
        .navbar {
    background-color: #022c2e; /* Replace with your desired color */
}
        

        /* Navbar Styling */
        .navbar {
            margin-bottom: 20px;
            padding: 8px 8px;
           
        }

        .navbar-nav {
            display: flex;
            justify-content: space-between; /* Space items evenly */
            align-items: center;
            flex-direction: row;
            width: 65%; /* Stretch to full width */
            
        }

        /* Navbar Links */
        .navbar-nav .nav-link {
            color: white;
            padding: 10px 10px; /* Add consistent padding */
            transition: all 0.3s ease; /* Smooth transition on hover */
            border: 2px solid transparent;
             
        }

        /* Hover effect for navbar links */
        .navbar-nav .nav-link:hover {
            color: #ffc107; /* Change text color on hover */
            background-color: #343a40; /* Slight background color change */
            border: 2px solid #ffc107; /* Add a yellow border on hover */
            border-radius: 5px; /* Slight border radius on hover */
        }

        /* Dropdown Styles */
        .dropdown-menu {
            background-color: #343a40;
            border: none;
        }

        .dropdown-item {
            color: white;
            padding: 10px 20px; /* Add consistent padding */
            transition: background-color 0.3s ease, color 0.3s ease, border 0.3s ease; /* Smooth transition on hover */
        }

        .dropdown-item:hover {
            background-color: #ffc107;
            color: black;
            border-left: 2px solid #343a40;
        }

        /* Profile Icon Styling */
        .profile-icon {
            width: 30px;
            height: 30px;
            border-radius: 50%; /* Make the icon circular */
            transition: transform 0.3s ease, border 0.3s ease; /* Add scaling and border transition */
        }

        .profile-icon:hover {
            transform: scale(1.1); /* Slightly increase size on hover */
            border: 2px solid #ffc107; /* Add yellow border on hover */
        }

        /* Adjusting container for dropdown and link alignment */
        .nav-item {
            margin-left: 15px;
            margin-right: 15px; /* Even out the spacing */
        }

        /* Navbar container fluid adjustments */
        .navbar-brand {
            padding-left: 20px; /* Adjust padding for logo */
        }

        /* Center the brand logo */
        .navbar-collapse {
            display: flex;
            justify-content: space-between;
        }

        .navbar-toggler {
            margin-right: 10px;
        }
    </style>



</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="Dashboard.jsp">Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <!-- <li class="nav-item dropdown" style="margin: 0 33px 0 35px;">
                    <a class="nav-link dropdown-toggle" href="#" id="newsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        News & Guidelines
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="newsDropdown">
                        <li><a class="dropdown-item" href="/RevShop_P0/JSP/ErrorPage.jsp">News</a></li>
                        <li><a class="dropdown-item" href="/RevShop_P0/JSP/ErrorPage.jsp">Guideline</a></li>
                    </ul>
                </li> -->
                 <li><a class="nav-link" href="/RevShop_P0/header.jsp">Home</a></li>
                <li class="nav-item" style="margin: 0 28px;">
                    <a class="nav-link" href="/RevShop_P0/SellerAddProductServlet">Add Products</a>
                </li>
                <li class="nav-item" style="margin: 0 28px;">
                    <a class="nav-link" href="/RevShop_P0/SellerShowProducts">My Products</a>
                </li>
                <li class="nav-item dropdown" style="margin: 0 28px;">
                    <a class="nav-link dropdown-toggle" href="#" id="ordersDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Orders</a>
                    <ul class="dropdown-menu" aria-labelledby="ordersDropdown">
                        <li><a class="dropdown-item" href="/RevShop_P0/SellerReceivedOrder">Received</a></li>
                        <li><a class="dropdown-item" href="/RevShop_P0/SellerJSP/SellerSuccessfulOrders.jsp">Completed Orders</a></li>
                    </ul>
                </li>
                
                <li class="nav-item">
    <a class="nav-link" href="/RevShop_P0/help.jsp">Help</a> <!-- Direct link to the help page -->
</li>
                <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="/RevShop_P0/images/profile.png" alt="Profile" class="profile-icon">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="profileDropdown">
                            <li><a class="dropdown-item" href="SellerProfileUpdate.jsp">Update Profile</a></li>
                            <li><a class="dropdown-item" href="/RevShop_P0/header.jsp">Logout</a></li>
                        </ul>
                    </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Load Bootstrap JS and Popper.js at the end of the body for better performance -->


</body>
</html>
    