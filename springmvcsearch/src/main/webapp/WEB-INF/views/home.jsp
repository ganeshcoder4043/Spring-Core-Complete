<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-box {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            animation: fadeIn 1s ease;
        }

        .search-box h2 {
            font-weight: 600;
            margin-bottom: 20px;
            color: #333;
        }

        .form-control {
            border-radius: 50px;
            padding: 10px 20px;
            border: 2px solid #2575fc;
        }

        .btn-search {
            background-color: #2575fc;
            color: white;
            border-radius: 50px;
            padding: 10px 30px;
            margin-top: 15px;
            transition: 0.3s;
        }

        .btn-search:hover {
            background-color: #6a11cb;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        footer {
            margin-top: 15px;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="search-box">
    <h2>🔍 Search Here</h2>
    <form action="search" method="get">
        <input type="text" class="form-control" name="queryBox" placeholder="Enter keyword..." required>
        <button type="submit" class="btn btn-search mt-3">Search</button>
    </form>
    <footer>
        <p>Designed by <b>Ganesh Kumar</b> 💻</p>
    </footer>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
