<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../CSS/registration.css">
    <style>
        body {
            background-color: #f4f7f9; /* Soft grayish background */
            background-image: url('https://img.freepik.com/premium-photo/online-fashion-shopping-with-computer_23-2150400628.jpg');
            background-repeat: no-repeat;
            background-size: left center;
            background-position: left center;
            background-attachment: fixed;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            
        }

        .container {
            background-color: #F8F8FF;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.15);
            max-width: 450px;
            width: 100%;
            margin-right: 80px;
        }

        h2, h3 {
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 24px;
            text-align: center;
        }

        label {
            font-weight: 600;
            color: #34495e;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #bdc3c7;
            margin-bottom: 20px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        input:invalid {
            animation: shake 0.5s; /* Shake effect when input is invalid */
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #3498db; /* Focus state color */
            outline: none;
        }

        button {
            background-color: #696969;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        button:hover {
            background-color: #16a085;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.15);
        }

        .loginLink {
            margin-top: 20px;
            text-align: center;
        }

        .loginLink a {
            color: #6495ED;
            text-decoration: none;
            font-weight: bold;
        }

        .loginLink a:hover {
            text-decoration: underline;
            color: #16a085;
        }

        .strong-password {
            color: #27ae60;
            font-weight: bold;
            display: none;
        }

        .weak-password {
            color: #e74c3c;
            font-weight: bold;
            display: none;
        }

        .user-type-buttons {
            display: flex;
            justify-content: center;
            margin-bottom: 25px;
        }

        .user-type-buttons .btn {
            background-color:#007bff;
            color: white;
            border-radius: 8px;
            padding: 12px 20px;
            border: none;
            margin: 0 10px;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        .user-type-buttons .btn:hover {
            background-color: #D3D3D3;
            box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.2);
        }

        .user-type-buttons .btn.active {
            background-color: #2c3e50;
        }

    </style>
    <script>
        function showForm(userType) {
            document.getElementById("customerForm").style.display = userType === 'customer' ? 'block' : 'none';
            document.getElementById("sellerForm").style.display = userType === 'seller' ? 'block' : 'none';
            var buttons = document.querySelectorAll('.user-type-buttons .btn');
            buttons.forEach(function(btn) {
                if (btn.textContent.toLowerCase() === userType) {
                    btn.classList.add('active');
                } else {
                    btn.classList.remove('active');
                }
            });
        }

        function validatePassword(input) {
            // Password validation conditions
            var password = input.value;
            var minLength = password.length >= 8;
            var hasSymbol = /[!@#$%^&*(),.?":{}|<>]/g.test(password);
            var hasAlphabet = /[A-Za-z]/.test(password);

            if (minLength && hasSymbol && hasAlphabet) {
                input.classList.remove("is-invalid");
                input.classList.add("is-valid");
                document.getElementById('passwordStrength').classList.remove("weak-password");
                document.getElementById('passwordStrength').classList.add("strong-password");
                document.getElementById('passwordStrength').textContent = "Strong password";
                document.getElementById('passwordStrength').style.display = "block";
            } else {
                input.classList.remove("is-valid");
                input.classList.add("is-invalid");
                document.getElementById('passwordStrength').classList.remove("strong-password");
                document.getElementById('passwordStrength').classList.add("weak-password");
                document.getElementById('passwordStrength').textContent = "Password must be at least 8 characters long, contain one symbol, and one alphabet.";
                document.getElementById('passwordStrength').style.display = "block";
            }
        }
    </script>
</head>
<body>
<div class="container mt-5">
        <h2 class="text-center mb-4">RevShop</h2>
        <div class="user-type-buttons">
            <button class="btn btn-secondary" onclick="showForm('customer')">Customer</button>
            <button class="btn btn-secondary" onclick="showForm('seller')">Seller</button>
        </div>

        <div id="customerForm" style="display:none;" class="mt-4">
            <h3>Customer Registration</h3>
            <form action="/RevShop_P0/CustomerRegistrationServlet" method="post" class="form-group">
                <label for="custName">Name:</label>
                <input type="text" id="custName" name="custName" class="form-control" required><br>
                
                <label for="custEmail">Email:</label>
                <input type="email" id="custEmail" name="custEmail" class="form-control" required><br>
                
                <label for="custPhone">Phone Number:</label>
                <input type="text" id="custPhone" name="custPhone" class="form-control" required><br>
                
                <label for="custAddress">Address:</label>
                <input type="text" id="custAddress" name="custAddress" class="form-control" required><br>
                
                <label for="custPassword">Password:</label>
                <input type="password" id="custPassword" name="custPassword" class="form-control" onkeyup="validatePassword(this)" required><br>
                
                <div id="passwordStrength" class="weak-password"></div><br>

                <button type="submit" class="btn btn-success btn-block">Register</button>
            </form>
        </div>

        <div id="sellerForm" style="display:none;" class="mt-4">
            <h3>Seller Registration</h3>
            <form action="/RevShop_P0/SellerRegistrationServlet" method="post" class="form-group">
                <label for="sellName">Name:</label>
                <input type="text" id="sellName" name="sellName" class="form-control" required><br>
                
                <label for="sellEmail">Email:</label>
                <input type="email" id="sellEmail" name="sellEmail" class="form-control" required><br>
                
                <label for="sellPhone">Phone Number:</label>
                <input type="text" id="sellPhone" name="sellPhone" class="form-control" required><br>
                
                <label for="sellAddress">Address:</label>
                <input type="text" id="sellAddress" name="sellAddress" class="form-control" required><br>
                
                <label for="sellPassword">Password:</label>
                <input type="password" id="sellPassword" name="sellPassword" class="form-control" onkeyup="validatePassword(this)" required><br>
                
                <div id="passwordStrength" class="weak-password"></div><br>

                <button type="submit" class="btn btn-success btn-block">Register</button>
            </form>
        </div>

        <div class="loginLink">
            <p>Already have an account? <a href="Login_page.jsp">Login here</a></p>
        </div>
</div>
</body>
</html>
