<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page isELIgnored = "false" %>  <!--yeh expression language ko ignore nhi karega , by default true hota   -->
  
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Help Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-color: #f7f9fc;
            color: #333;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            text-align: center;
            font-size: 24px;
            font-weight: 600;
        }

        .container {
            width: 80%;
            margin: 40px auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #4CAF50;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 5px;
        }

        .info {
            margin: 15px 0;
            line-height: 1.6;
            font-size: 17px;
        }

        footer {
            background-color: #333;
            color: #f1f1f1;
            text-align: center;
            padding: 15px 0;
            margin-top: 40px;
        }

        .highlight {
            color: #e91e63;
            font-weight: bold;
        }
    </style>
</head>
<body>

<header>
    Spring MVC - Help Page
</header>

<div class="container">
    <h2>Help Details</h2>

    <div class="info">
        <p><strong>Developer:</strong> ${developer}</p>
        <p><strong>Project Name:</strong> ${project}</p>
        <p><strong>Help Topic:</strong> ${topic}</p>
        <p><strong>Contact Email:</strong> <span class="highlight">${email}</span></p>
    </div>

    <hr>

    <h2>Additional Info</h2>
    <div class="info">
        <p><strong>Message:</strong> ${message}</p>
        <p><strong>Available On:</strong> ${availableDays}</p>
        <p><strong>Support Team:</strong> ${team}</p>
    </div>
</div>

<!--Coming from Controller  -->
		<div>
				<%-- <% String name = (String) request.getAttribute("name"); %>
				<% Integer roll = (Integer) request.getAttribute("roll"); %>
				<% List<String> cars = (List<String>) request.getAttribute("cars"); %> --%>
				
				<%-- <h2>my name is <%=name %></h2>
				<h2>my roll is <%=roll %></h2>
				<% 
					for(String c:cars){
				%>
				<h2><%=c %></h2>
				<%} %> --%>
				
				<!--using of expersion language  -->
				
				<h2>my name is ${name }</h2>
				<h2>my roll is ${roll }</h2>
				
				<c:forEach var="carsList"  items="${cars }">
					<h1><c:out value="${carsList }"></c:out></h1>
				</c:forEach>
		</div>

<footer>
    © 2025 CodeBuddy | All Rights Reserved
</footer>

</body>
</html>