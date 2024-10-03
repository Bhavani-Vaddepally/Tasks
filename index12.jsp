<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String url = "jdbc:mysql://localhost:3306/joins"; // Replace with your database URL
    String username = "root"; // Replace with your database username
    String password = "root"; // Replace with your database password
    String tableName = "drinks"; // Replace with your table name

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
        // Load JDBC driver (optional for newer versions)
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish the connection
        connection = DriverManager.getConnection(url, username, password);

        // Create a statement object
        statement = connection.createStatement();

        // Execute the SQL query
        String query = "SELECT * FROM " + tableName;
        resultSet = statement.executeQuery(query);

        // Store resultSet in request attribute to forward it
        request.setAttribute("resultSet", resultSet);

        // Forward to displayData.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("displayData.jsp");
        dispatcher.forward(request, response);

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close resources - important for preventing memory leaks
        // Do not close connection or resultSet here because you are forwarding
        // They will be closed after displayData.jsp finishes
    }
%>
</body>
</html>