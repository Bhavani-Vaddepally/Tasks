<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple Translation Example</title>
</head>
<body>

<%
    String inputText = request.getParameter("inputText");
    String language = request.getParameter("language");
    String translatedText = "";

    // Basic translations (you can expand this as needed)
    if (inputText != null && language != null) {
        switch (language) {
            case "french":
                if (inputText.equalsIgnoreCase("Hello")) translatedText = "Bonjour";
                else if (inputText.equalsIgnoreCase("Goodbye")) translatedText = "Au revoir";
                break;
            case "german":
                if (inputText.equalsIgnoreCase("Hello")) translatedText = "Hallo";
                else if (inputText.equalsIgnoreCase("Goodbye")) translatedText = "Auf Wiedersehen";
                break;
            case "spanish":
                if (inputText.equalsIgnoreCase("Hello")) translatedText = "Hola";
                else if (inputText.equalsIgnoreCase("Goodbye")) translatedText = "Adiós";
                break;
        }
    }
%>

<form method="post">
    <label>Enter Text (in English)</label>
    <input type="text" name="inputText" placeholder="Enter text" required>
    
    <label>Select Language</label>
    <select name="language" required>
        <option value="">--Select Language--</option>
        <option value="french">French</option>
        <option value="german">German</option>
        <option value="spanish">Spanish</option>
    </select>
    
    <button type="submit">Translate</button>
</form>

<% if (!translatedText.isEmpty()) { %>
    <h2>Translated Text: <%= translatedText %></h2>
<% } %>

</body>
</html>