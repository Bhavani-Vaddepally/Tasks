<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Database Table Data</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th> <!-- Change the column names accordingly -->
                <th>Name</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Retrieve the resultSet from the request attribute
                ResultSet resultSet = (ResultSet) request.getAttribute("resultSet");

                if (resultSet != null) {
                    try {
                        // Iterate through the result set
                        while (resultSet.next()) {
                            %>
                            <tr>
                                <td><%= resultSet.getInt("id") %></td> <!-- Change column names accordingly -->
                                <td><%= resultSet.getString("d_name") %></td>
                            </tr>
                            <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close the ResultSet object
                        try {
                            if (resultSet != null) resultSet.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } else {
                    %>
                    <tr>
                        <td colspan="4">No data found.</td>
                    </tr>
                    <%
                }
            %>
        </tbody>
    </table>
</body>
</html>


</body>
</html>