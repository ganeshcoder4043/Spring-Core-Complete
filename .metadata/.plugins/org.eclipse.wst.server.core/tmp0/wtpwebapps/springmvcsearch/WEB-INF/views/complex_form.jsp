<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Form</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
	
	<!-- link with css -->	
	<link href="<c:url value="/resources/css/style.css"/>">
	
	<!--link with js  -->
	<script src="<c:url value="/resources/js/script.js"/> "></script>


    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px; /* ensure spacing on small screens */
        }

        .form-container {
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 100%;         /* responsive width */
            max-width: 500px;    /* max width for large screens */
            animation: fadeIn 1s ease;
            box-sizing: border-box;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        label {
            font-weight: 500;
        }

        .btn-submit {
            background-color: #185a9d;
            color: white;
            border-radius: 50px;
            padding: 10px 25px;
            margin-top: 15px;
            transition: 0.3s;
        }

        .btn-submit:hover {
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

        /* Small screen tweaks */
        @media (max-width: 576px) {
            .form-container {
                padding: 20px;
            }
        }
        
        img {
  animation: fadeIn 1s ease-in-out;
}
        
    </style>
</head>
<body>

<%-- <img alt="this is my image" src="<c:url value="/resources/images/ganeshyellow.png"/>"> --%>

<!-- Logo / Image Section -->
<div class="text-center mb-4">
    <img alt="Ganesh Logo" 
         src="<c:url value='/resources/images/ganeshyellow.png'/>" 
         class="img-fluid rounded-circle shadow-sm"
         style="width: 120px; height: 120px; object-fit: cover; border: 3px solid #fff;">
</div>


<div class="form-container">
    <h2>Student Registration Form</h2>
    <div class="alert alert-danger" role="alert">
    <form:errors path="student.*" />
</div>
    <form action="handleform" method="post">
        <!-- Name -->
        <div class="mb-3">
            <label for="name" class="form-label">Full Name:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter full name" required>
        </div>

        <!-- ID -->
        <div class="mb-3">
            <label for="studentId" class="form-label">Student ID:</label>
            <input type="text" class="form-control" id="studentId" name="studentId" placeholder="Enter student ID" required>
        </div>

        <!-- Email -->
        <!-- <div class="mb-3">
            <label for="email" class="form-label">Email Address:</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
        </div> -->

        <!-- Date of Birth -->
        <div class="mb-3">
            <label for="dob" class="form-label">Date of Birth:</label>
            <input type="text" placeholder="dd/mm/yyyy" class="form-control" id="dob" name="dob" required>
        </div>

        <!-- Select Course -->
        <div class="mb-3">
    <label for="course" class="form-label">Select Course(s):</label>
    <select class="form-select" id="course" name="course" multiple required>
        <option value="java">Java</option>
        <option value="spring">Spring</option>
        <option value="react">React</option>
        <option value="python">Python</option>
    </select>
    <small class="form-text text-muted">Hold Ctrl (Windows) or Command (Mac) to select multiple courses</small>
</div>


        <!-- Select Gender -->
        <div class="mb-3">
            <label class="form-label">Gender:</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
                <label class="form-check-label" for="male">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" id="female" value="female">
                <label class="form-check-label" for="female">Female</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" id="other" value="other">
                <label class="form-check-label" for="other">Other</label>
            </div>
        </div>

        <!-- Select Student Type -->
        <div class="mb-3">
            <label class="form-label">Student Type:</label>
            <select class="form-select" name="studentType" required>
                <option value="" disabled selected>Select type</option>
                <option value="new">New Student</option>
                <option value="old">Old Student</option>
            </select>
        </div>
        
        <!-- Address Section -->
<div class="mb-3">
    <div class="card shadow-sm">
        <div class="card-body">
            <h5 class="card-title">Address Details</h5>
            
            <!-- City -->
            <div class="mb-3">
                <label for="city" class="form-label">City:</label>
                <input type="text" class="form-control" id="city" name="address.city" placeholder="Enter city" required>
            </div>

            <!-- State -->
            <div class="mb-3">
                <label for="state" class="form-label">State:</label>
                <input type="text" class="form-control" id="state" name="address.state" placeholder="Enter state" required>
            </div>
        </div>
    </div>
</div>
        

        <button type="submit" class="btn btn-submit w-100">Submit</button>
    </form>

    <footer>
        <p>Designed by <b>Ganesh Kumar</b> 💻</p>
    </footer>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
