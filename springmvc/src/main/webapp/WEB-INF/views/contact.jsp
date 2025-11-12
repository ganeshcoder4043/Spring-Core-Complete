<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration Form</title>
    <style>
        body {
            font-family: "Poppins", Arial, sans-serif;
            background: linear-gradient(90deg,
                rgba(131, 58, 180, 1) 0%,
                rgba(253, 29, 29, 1) 50%,
                rgba(252, 176, 69, 1) 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* semi-transparent */
            backdrop-filter: blur(10px); /* glass effect */
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
            width: 400px;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #222;
            margin-bottom: 20px;
            letter-spacing: 1px;
        }

        label {
            display: block;
            margin: 12px 0 6px;
            font-weight: bold;
            color: #444;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #ff6a00;
            box-shadow: 0 0 6px rgba(255, 106, 0, 0.4);
        }

        input[type="submit"] {
            margin-top: 20px;
            background: linear-gradient(90deg, #ff512f, #f09819);
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            letter-spacing: 0.5px;
            transition: transform 0.2s ease, box-shadow 0.3s ease;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .footer {
            text-align: center;
            font-size: 13px;
            margin-top: 15px;
            color: #333;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>User Registration</h2>
   
    <form action="processform" method="post">
        <label for="username">Name:</label>
        <input type="text" id="userName" name="userName" placeholder="Enter your name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>

        <input type="submit" value="Register">
    </form>

    <div class="footer">
        © 2025 GaneshCoder | Gradient Form Design
    </div>
</div>

</body>
</html>
