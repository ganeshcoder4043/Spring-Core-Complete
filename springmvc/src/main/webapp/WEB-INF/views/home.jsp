<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spring MVC Home</title>
    <style>
        /* ===== BASIC PAGE STYLING ===== */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px 60px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .container:hover {
            transform: scale(1.03);
        }

        h1 {
            margin-bottom: 20px;
            font-size: 2.2rem;
            letter-spacing: 1px;
        }

        p {
            font-size: 1.1rem;
            margin-bottom: 25px;
        }

        a {
            background-color: white;
            color: #5563DE;
            padding: 12px 25px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            transition: background 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #5563DE;
            color: white;
        }

        footer {
            position: absolute;
            bottom: 15px;
            text-align: center;
            width: 100%;
            font-size: 0.9rem;
            opacity: 0.8;
        }
    </style>
</head>
<body>

<% String name= (String) request.getAttribute("name"); %>
<% Integer id = (Integer) request.getAttribute("id"); %>
<% List<String> frnds = (List<String>) request.getAttribute("frnds"); %>

    <div class="container">
        <h1>👋 Welcome to Spring MVC App</h1>
        <p>Hello <strong>Ganesh</strong>! This is your first Spring MVC Home Page.</p>
        <a href="about">Go to About Page</a>
        <h3>my name is <%= name %></h3>
        <h3>my id is <%= id %></h3>
        <%
        		for(String f:frnds){
        %>
        <h3><%=f %></h3>
        <%} %>
    </div>
    
    
    
    

    <footer>
        © 2025 | Built with ❤️ using Spring MVC
    </footer>
</body>
</html>