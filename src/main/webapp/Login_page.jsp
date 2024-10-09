<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../CSS/Login_page.css">
    <style>
        /* Background image without animations */
        body {
           background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20231007/pngtree-d-rendering-of-laptop-and-boxes-in-shopping-cart-depicting-realistic-image_13536247.png');
            background-repeat: no-repeat;
           
            background-position: left center;
            background-attachment: fixed;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-size: 55% 50%
           
        }

        .container {
            background: rgba(255, 255, 255, 0.8); /* Transparent background */
            backdrop-filter: blur(10px); /* Blurring effect */
            padding: 30px;
            border-radius: 15px; /* Rounded corners */
            box-shadow: 0px 4px 30px rgba(0, 0, 0, 0.2); /* Subtle shadow */
            max-width: 400px;
            width: 100%;
            text-align: center;
            z-index: 2;
            position: relative;
            margin-right: 80px;
            margin-top: 50px;
           
        }

        /* Styling for buttons and form */
        .user-type-buttons {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .user-type-buttons .btn {
            width: 45%;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
        }

        .user-type-buttons .btn:hover {
            background-color: #0056b3;
        }

        .user-type-buttons .btn.active {
            background-color: #004494;
        }

        #customerForm, #sellerForm {
            display: none;
        }

        .form-group {
            position: relative;
        }

        .form-group input {
            width: 100%;
            padding: 12px 40px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            transition: border-color 0.3s;
        }

        .form-group input:focus {
            border-color: #80bdff;
            outline: none;
        }

        .form-group img.icon {
            position: absolute;
            left: 10px;
            top: 10px;
            width: 20px;
        }

        button {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #218838;
        }

        .loginLink a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s;
        }

        .loginLink a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
        .btn-custom {
    background-color: #007bff; /* Blue color */
    color: white; /* Text color */
}

.btn-custom:hover {
    background-color: #0056b3; /* Darker blue on hover */
}

    </style>

    <script>
        function showLoginForm(userType) {
            document.getElementById("customerForm").style.display = "none";
            document.getElementById("sellerForm").style.display = "none";

            if (userType === 'customer') {
                document.getElementById("customerForm").style.display = "block";
            } else {
                document.getElementById("sellerForm").style.display = "block";
            }

            var buttons = document.querySelectorAll('.user-type-buttons .btn');
            buttons.forEach(function(btn) {
                if (btn.textContent.toLowerCase() === userType) {
                    btn.classList.add('active');
                } else {
                    btn.classList.remove('active');
                }
            });
        }

        function togglePasswordVisibility(id, iconId) {
            var passwordField = document.getElementById(id);
            var icon = document.getElementById(iconId);
            if (passwordField.type === "password") {
                passwordField.type = "text";
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye");
            }
        }
    </script>
</head>
<body>

    <div class="container mt-5">
   
        <h2 class="text-center mb-4">Login to RevShop</h2>
        

        <div class="user-type-buttons">
            <button class="btn" onclick="showLoginForm('customer')">Customer</button>
            <button class="btn" onclick="showLoginForm('seller')">Seller</button>
        </div>

        <!-- Customer Login Form -->
        <div id="customerForm">
            <h3>Customer Login</h3>
            <form action="/RevShop_P0/CustomerLoginServlet" method="post" class="form-group">
                <label for="custEmail">
                    <b>Email</b>
                </label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fa-solid fa-envelope"></i>
                        </span>
                    </div>
                    <input type="email" id="custEmail" name="custEmail" class="form-control" required>
                </div>

                <label for="custPassword">
                    <b>Password</b>
                </label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fa-solid fa-lock"></i>
                        </span>
                    </div>
                    <input type="password" id="custPassword" name="custPassword" class="form-control" required>
                    <div class="input-group-append">
                        <span class="input-group-text" onclick="togglePasswordVisibility('custPassword', 'custPasswordIcon')" style="cursor: pointer;">
                            <i id="custPasswordIcon" class="fa-solid fa-eye"></i>
                        </span>
                    </div>
                </div>

                <button type="submit" class="btn btn-success btn-block">Login</button>
            </form>
        </div>
        <!-- Seller Login Form -->
        <div id="sellerForm">
            <h3>Seller Login</h3>
            <form action="/RevShop_P0/SellerLoginServlet" method="post" class="form-group">
                <label for="sellEmail">
                    <b>Email</b>
                </label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fa-solid fa-envelope"></i>
                        </span>
                    </div>
                    <input type="email" id="sellEmail" name="sellEmail" class="form-control" required>
                </div>
                <label for="sellPassword">
                    <b>Password</b>
                </label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <i class="fa-solid fa-lock"></i>
                        </span>
                    </div>
                    <input type="password" id="sellPassword" name="sellPassword" class="form-control" required>
                    <div class="input-group-append">
                        <span class="input-group-text" onclick="togglePasswordVisibility('sellPassword', 'sellPasswordIcon')" style="cursor: pointer;">
                            <i id="sellPasswordIcon" class="fa-solid fa-eye"></i>
                        </span>
                    </div>
                </div>
                <button type="submit" class="btn btn-success btn-block">Login</button>
            </form>
        </div>

        <div class="loginLink">
            <p>New here? <a href="Registration_page.jsp">Register</a></p>
        </div>
    </div>

<script src="https://kit.fontawesome.com/2f6436cdea.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
