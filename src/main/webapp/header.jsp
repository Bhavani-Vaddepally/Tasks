<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RevShop Header</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="cssFiles/header.css"> <!-- Optional custom CSS file -->
    <style>
    /* header.css */

/* Navbar customization */
.navbar {
    padding: 10px 20px;
    background-color: #022c2e; /* Dark background */
}

.navbar-brand {
    font-size: 1.8rem;
    font-weight: bold;
    color: #f8f9fa; /* White color */
}

.navbar-brand:hover {
    color: #d4d4d4; /* Slightly lighter color on hover */
}

.navbar-nav .nav-link {
    font-size: 1.1rem;
    padding: 8px 15px;
    color: #f8f9fa; /* White text for links */
    transition: color 0.3s ease;
}

.navbar-nav .nav-link:hover {
    color: #d4d4d4; /* Slight hover effect */
}

.navbar-nav .nav-item {
    margin-left: 15px;
}

.navbar-nav .dropdown-toggle {
    padding-right: 5px;
}

.profile-icon {
    width: 30px;
    height: 30px;
    border-radius: 50%;
    object-fit: cover;
}

.navbar-toggler {
    border: none;
    background-color: #495057;
}

.dropdown-menu {
    background-color: #343a40;
    border: none;
}

.dropdown-menu .dropdown-item {
    color: #f8f9fa;
}

.dropdown-menu .dropdown-item:hover {
    background-color: #495057;
}

.carousel {
    margin-top: 20px;
}

/* Media queries for responsiveness */
@media (max-width: 992px) {
    .navbar-nav .nav-link {
        font-size: 1rem;
        padding: 5px 10px;
    }
    
    .navbar-brand {
        font-size: 1.5rem;
    }
}
    
    
    
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark ">
        <div class="container-fluid">
            <a class="navbar-brand" href="/RevShop_P0/CustomerMainServlet">RevShop</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <form class="d-flex ms-auto" action="search_results.jsp" method="get">
                <input class="form-control me-2" type="search" placeholder="Search for products" aria-label="Search" name="query">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="header.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a> <!-- Link to the About page -->
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Products.jsp">Categories</a>
                    </li>
                    
                    <li class="nav-item">
    <a class="nav-link" href="/RevShop_P0/help.jsp">Help</a> <!-- Direct link to the help page -->
</li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="/RevShop_P0/images/profile.png" alt="Profile" class="profile-icon">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="profileDropdown">
                            <li><a class="dropdown-item" href="Login_page.jsp">Login</a></li>
                            
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="row">
    	<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://tse1.mm.bing.net/th?id=OIG2.MNCTWK_3VHs6UQh0kfVg&pid=ImgGn" class="d-block w-100" height="640px" alt="...">
                </div>
                
                <div class="carousel-item">
                    <img src="https://www.jasonseifer.com/wp-content/uploads/2018/11/ecommerce-735x400.jpg" class="d-block w-100" height="640px" alt="...">
                </div>

                <!-- Additional Images -->
                <div class="carousel-item">
                    <img src="https://lirp.cdn-website.com/92b1bdcc/dms3rep/multi/opt/AdobeStock_70019370-640w.jpeg" class="d-block w-100" height="640px" alt="..."> <!-- Replace with your third image URL -->
                </div>

                <div class="carousel-item">
                    <img src="https://www.visitphilly.com/wp-content/uploads/2023/02/king-of-prussia-shoppers-hero-crtsy-simon-malls-2200x1237px.jpg" class="d-block w-100" height="640px" alt="..."> <!-- Replace with your fourth image URL -->
                </div>
                <!-- End of Additional Images -->
                
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
