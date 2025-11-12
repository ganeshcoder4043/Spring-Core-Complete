<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ page isELIgnored = "false" %>


<html>
<head>
    <title>Form Submission Success</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            margin: 0;
        }

        .success-container {
            background: white;
            padding: 25px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 500px;
            box-sizing: border-box;
            animation: fadeIn 1s ease;
        }

        .success-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .data-row {
            font-weight: 500;
            margin-bottom: 10px;
        }

        .data-label {
            color: #185a9d;
        }

        .btn-back {
            background-color: #185a9d;
            color: white;
            border-radius: 50px;
            padding: 8px 20px;
            transition: 0.3s;
        }

        .btn-back:hover {
            background-color: #43cea2;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        footer {
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
            color: #666;
        }

        @media (max-width: 576px) {
            .success-container {
                padding: 20px;
            }
            .success-container h2 { font-size: 1.5rem; }
        }
    </style>
</head>
<body>

<div class="success-container">
    <h2>Form Submitted Successfully!</h2>

    <div class="data-row"><span class="data-label">Full Name:</span> ${student.name}</div>
    <div class="data-row"><span class="data-label">Student ID:</span> ${student.studentId}</div>
    <div class="data-row"><span class="data-label">Date of Birth:</span> ${student.dob}</div>
    <div class="data-row"><span class="data-label">Course:</span> ${student.course}</div>
    <div class="data-row"><span class="data-label">Gender:</span> ${student.gender}</div>
    <div class="data-row"><span class="data-label">Student Type:</span> ${student.studentType}</div>

    <!-- Address Section -->
    <div class="data-row"><span class="data-label">City:</span> ${student.address.city}</div>
    <div class="data-row"><span class="data-label">State:</span> ${student.address.state}</div>

    <div class="text-center mt-4">
        <a href="complex" class="btn btn-back">Back to Form</a>
    </div>

    <footer>
        <p>Designed by <b>Ganesh Kumar</b> 💻</p>
    </footer>
</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
