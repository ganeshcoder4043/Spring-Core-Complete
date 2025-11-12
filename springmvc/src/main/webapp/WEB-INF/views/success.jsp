<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Submitted</title>
    <style>
        /* Body gradient + center content */
        body {
            font-family: "Poppins", Arial, sans-serif;
            background: radial-gradient(circle at top left, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
        }

        /* Animated background bubbles (optional fun) */
        .bubble {
            position: absolute;
            border-radius: 50%;
            opacity: 0.3;
            animation: float 10s linear infinite;
        }

        @keyframes float {
            0% { transform: translateY(0) rotate(0deg);}
            50% { transform: translateY(-50px) rotate(180deg);}
            100% { transform: translateY(0) rotate(360deg);}
        }

        /* Glass-style success box */
        .success-box {
            position: relative;
            background: rgba(255,255,255,0.85);
            backdrop-filter: blur(10px);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            text-align: center;
            max-width: 450px;
            z-index: 1;
            animation: scaleIn 0.6s ease-out;
        }

        @keyframes scaleIn {
            0% { transform: scale(0.8); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        h2 {
            color: #4CAF50;
            font-size: 28px;
            margin-bottom: 20px;
            letter-spacing: 1px;
        }

        p {
            font-size: 18px;
            color: #333;
            margin: 10px 0;
        }

        .highlight {
            color: #e91e63;
            font-weight: bold;
        }

        /* Gradient button */
        .btn-back {
            margin-top: 25px;
            padding: 12px 25px;
            background: linear-gradient(90deg, #ff512f, #f09819);
            border: none;
            border-radius: 10px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-back:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.25);
        }

        /* Footer */
        .footer {
            font-size: 13px;
            color: #555;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<!-- Optional floating bubbles for fun -->
<div class="bubble" style="width:60px;height:60px;top:20%;left:10%;background:#fff;"></div>
<div class="bubble" style="width:80px;height:80px;top:70%;left:80%;background:#fff;"></div>
<div class="bubble" style="width:50px;height:50px;top:50%;left:40%;background:#fff;"></div>

<div class="success-box">
    <h2>🎉 Form Submitted Successfully!</h2>
    <h2>User Registration</h2>
    <p><strong>Name:</strong> <span class="highlight">${user.userName}</span></p>
    <p><strong>Email:</strong> <span class="highlight">${user.email}</span></p>
    <p><strong>Password:</strong> <span class="highlight">${user.password}</span></p>
    <p>Thank you for submitting the form! ✅</p>

    <button class="btn-back" type="button" onclick="window.location.href='contact'">
        Go Back to Form
    </button>

    <div class="footer">© 2025 GaneshCoder | Form Demo</div>
</div>

</body>
</html>
