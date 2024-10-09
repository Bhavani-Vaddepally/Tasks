<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DTO.Seller_DTO" %>

<% Seller_DTO seller_DTO = (Seller_DTO) session.getAttribute("seller");
   String sellerName = seller_DTO.getSeller_name();
   String sellerEmail = seller_DTO.getSeller_email();
   sellerName = Character.toUpperCase(sellerName.charAt(0)) + sellerName.substring(1);
   sellerEmail = Character.toUpperCase(sellerEmail.charAt(0)) + sellerEmail.substring(1);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - RevShop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    
        /* Main Content Area */
        .main-content {
            margin-left: 50px; /* Adjusted margin */
            padding: 20px;
        }

        .card {
            margin-bottom: 50px;
        }

        /* Key Metrics */
        .metrics {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .metric-item {
            width: 23%;
        }

        /* Unique colors for each card */
        .metric-revenue {
            background-color: #ffdd59; /* Yellow for Revenue */
        }

        .metric-visitors {
            background-color: #139ca9; /* Green for Visitors */
        }

        .metric-pageviews {
            background-color: #2196f3; /* Blue for Page Views */
        }

        .metric-conversion {
            background-color: #139ca9; /* Red for Conversion Rate */
        }

        /* Charts */
        .chart-container canvas {
            height: 30px;
            width: 40px;
        }
        .element.style {
    width: 50px;
    height: 50px;
    display: block;
    box-sizing: border-box;
}
    </style>
</head>
<body>

    <!-- Include Navbar here -->
    <%@ include file="Seller_navBar.jsp" %>

    <!-- Main Content Area -->
    <div class="main-content">
        <h1>Seller Dashboard</h1>
        <p>Welcome back, Seller! Here are your store statistics.</p>

        <!-- Key Metrics Cards -->
        <div class="metrics">
            <div class="card metric-item">
                <div class="card-body">
                    <h5>Revenue</h5>
                    <p>45,000</p>
                </div>
            </div>
            <div class="card metric-item">
                <div class="card-body">
                    <h5>Visitors</h5>
                    <p>2,400</p>
                </div>
            </div>
            <div class="card metric-item">
                <div class="card-body">
                    <h5>Page Views</h5>
                    <p>5,600</p>
                </div>
            </div>
            <div class="card metric-item">
                <div class="card-body">
                    <h5>Conversion Rate</h5>
                    <p>12%</p>
                </div>
            </div>
        </div>

        <!-- Product Statistics Chart -->
        <div class="card">
            <div class="card-body">
                <h5>Product Statistics</h5>
                <div class="chart-container">
                    <canvas id="productStatisticsChart"></canvas>
                </div>
            </div>
        </div>

        <!-- Stock Overview & Product Board -->
        <div class="row">
            <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h5>Stock Overview</h5>
                <div class="chart-container">
                    <canvas id="stockOverviewChart" style="width: 10px; height: 10px;"></canvas>
                </div>
            </div>
        </div>
    </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Product Board</h5>
                        <p>We have 4 products in stock</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap and Chart.js Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Chart.js setup for Product Statistics
        const productStatisticsCtx = document.getElementById('productStatisticsChart').getContext('2d');
        const productStatisticsChart = new Chart(productStatisticsCtx, {
            type: 'line',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                datasets: [{
                    label: 'Visitors',
                    data: [300, 400, 200, 500, 700, 600],
                    borderColor: 'blue',
                    fill: false
                }, {
                    label: 'Page Views',
                    data: [400, 600, 500, 800, 1000, 900],
                    borderColor: 'red',
                    fill: false
                }]
            }
        });

        // Chart.js setup for Stock Overview
        const stockOverviewCtx = document.getElementById('stockOverviewChart').getContext('2d');
        const stockOverviewChart = new Chart(stockOverviewCtx, {
            type: 'doughnut',
            data: {
                labels: ['Available Stock', 'Sold'],
                datasets: [{
                    data: [60, 40],
                    backgroundColor: ['#309ba5', '#dcb141']
                }]
            }
        });
    </script>
</body>
</html>
