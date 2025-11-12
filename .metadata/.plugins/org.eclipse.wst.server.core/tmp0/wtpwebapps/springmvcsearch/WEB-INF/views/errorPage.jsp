<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
    <title>Oops! Something Went Wrong</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background: linear-gradient(135deg, #ff6a6a, #8b0000);
            font-family: "Poppins", sans-serif;
            height: 100vh;
        }

        .error-box {
            background: #ffffff;
            border-radius: 15px;
            padding: 40px;
            max-width: 550px;
            margin: 100px auto;
            text-align: center;
            box-shadow: 0px 0px 25px rgba(0,0,0,0.3);
            animation: fadeIn 0.8s ease-in-out;
        }

        .error-code {
            font-size: 85px;
            font-weight: 700;
            color: #ff4d4d;
        }

        .message {
            font-size: 20px;
            font-weight: 500;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

<div class="error-box">
    <div class="error-code">
        <%= request.getAttribute("javax.servlet.error.status_code") != null 
           ? request.getAttribute("javax.servlet.error.status_code") 
           : "Error" %>
    </div>

    <h3>Oops! Something Went Wrong 😢</h3>

    <p class="message">
        <%= exception != null ? exception.getMessage() : "The page you are looking for is not available." %>
    </p> 
    
    <p> This is invoke by -> ${msg }</p>
    

    <a href="home" class="btn btn-danger mt-3">
        ⬅ Go Back Home				
    </a>
</div>																			

</body>
</html>
    