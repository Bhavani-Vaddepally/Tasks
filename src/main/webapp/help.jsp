<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help - RevShop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .help-section {
            padding: 50px 0;
        }
        .help-section h1 {
            margin-bottom: 30px;
        }
        .help-section .faq-item {
            margin-bottom: 20px;
        }
        .contact-section {
            padding: 30px 0;
            background-color: #f8f9fa;
        }
        
        
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
 <%@ include file="header.jsp" %>
    <!-- Navbar -->
    

    <!-- Help Section -->
    <section class="help-section container">
        <h1>Help & Support</h1>
        <div class="faq-item">
            <h5>1. How can I track my order?</h5>
            <p>You can track your order in the 'My Orders' section of your profile after logging in.</p>
        </div>
        <div class="faq-item">
            <h5>2. What payment methods do you accept?</h5>
            <p>We accept credit cards, debit cards, net banking, and popular wallets like Paytm and Google Pay.</p>
        </div>
        <div class="faq-item">
            <h5>3. How can I contact customer support?</h5>
            <p>You can reach our customer support team at <a href="mailto:support@revshop.com">support@revshop.com</a> or call us at 1800-123-456.</p>
        </div>
    </section>

    <!-- Contact Information -->
    <section class="contact-section text-center">
        <h4>Need further assistance?</h4>
        <p>Contact us at <strong>support@revshop.com</strong> or call us at <strong>1800-123-456</strong>.</p>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
