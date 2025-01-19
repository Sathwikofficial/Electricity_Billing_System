<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://c1.wallpaperflare.com/preview/283/233/115/night-table-lamp-light-bedside-table-lighting.jpg') no-repeat center center fixed; 
            background-size: cover;
            margin: 0;
            padding: 0;
            color: white; /* Ensure text is readable */
        }
        .navbar {
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.5)); /* Gradient from more opaque to less opaque white */
            color: white;
            overflow: hidden;
            position: fixed;
            top: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 20px;
            border-radius: 5px;
        }
        .navbar h3 {
            margin: 0;
            color: black;
        }
        .container {
            display: flex;
            margin-top: 80px; /* Adjust based on navbar height */
            width: 900px; /* Increased width to accommodate larger left column */
            margin-left: 1%; /* Center the container */
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px; /* Add some padding for better spacing */
        }
        .left-column {
            flex: 3; /* Increase the size of the left column */
            background: url('https://media.licdn.com/dms/image/C4E12AQHUJCArKAXdkg/article-cover_image-shrink_720_1280/0/1641025131385?e=2147483647&v=beta&t=I_Jg_HM4rUF1DiEKNqfUE9e0TJ47Ir75ow6cXvD2rfs') no-repeat center center; /* Add the image */
            background-size: cover; /* Ensure the image covers the entire column */
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
            padding: 10px;
        }
        .right-column {
            flex: 3; /* Keep the size of the right column */
            padding: 50px;
            color: white;
        }
        .right-column h2, .right-column h1 {
            color: black;
        }
        form {
            background: linear-gradient(135deg, #232526, #414345); /* Colors resembling a thunderstorm */
            background-image:
                linear-gradient(135deg, #232526, #414345),
                repeating-linear-gradient(45deg, transparent, transparent 10px, #ffd700 10px, #ffd700 12px); /* Yellow sparks */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
            width: 300px;
            margin: 0 auto;
        }
        form:hover {
            transform: scale(1.05);
        }
        input[type="text"], input[type="password"], input[type="tel"], input[type="email"], select {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        select {
            background: #232526; /* Matching the form background */
            color: white; /* White text color */
        }
        option {
            background: #232526; /* Matching the form background */
            color: white; /* White text color */
        }
        input[type="submit"] {
            background: linear-gradient(135deg, #007bff, #0044ff);
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background: linear-gradient(135deg, #0066cc, #0033cc);
        }
        .signup-link {
            margin-top: 20px;
            display: block;
            color: #007bff;
            text-decoration: none;
        }
        .signup-link:hover {
            text-decoration: underline;
        }
        .error {
            color: #dc3545;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h3>Electricity Billing System</h3>
    </div>

    <div class="container">
        <div class="left-column"></div>
        <div class="right-column">
            <h1>User Sign Up</h1>
            <form action="signUp" method="post" onsubmit="return validatePhoneNumber();">
                Username: <input type="text" name="username" required><br>
                Full Name: <input type="text" name="full_name" required><br>
                Phone Number: <input type="tel" id="phone_number" name="phone_number" pattern="\d{10}" title="Phone number must be 10 digits long and start with 6" required>
                <div id="phone-error-message" class="error" style="display:none;">Phone number must be 10 digits long.</div><br>
                Email: <input type="email" name="email" required><br>
                State: <select id="state" name="state" required>
                    <option value="" disabled selected>Select State</option>
                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                    <option value="Assam">Assam</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Chhattisgarh">Chhattisgarh</option>
                    <option value="Goa">Goa</option>
                    <option value="Gujarat">Gujarat</option>
                    <option value="Haryana">Haryana</option>
                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                    <option value="Jharkhand">Jharkhand</option>
                    <option value="Karnataka">Karnataka</option>
                    <option value="Kerala">Kerala</option>
                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                    <option value="Maharashtra">Maharashtra</option>
                    <option value="Manipur">Manipur</option>
                    <option value="Meghalaya">Meghalaya</option>
                    <option value="Mizoram">Mizoram</option>
                    <option value="Nagaland">Nagaland</option>
                    <option value="Odisha">Odisha</option>
                    <option value="Punjab">Punjab</option>
                    <option value="Rajasthan">Rajasthan</option>
                    <option value="Sikkim">Sikkim</option>
                    <option value="Tamil Nadu">Tamil Nadu</option>
                    <option value="Telangana">Telangana</option>
                    <option value="Tripura">Tripura</option>
                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                    <option value="Uttarakhand">Uttarakhand</option>
                    <option value="West Bengal">West Bengal</option>
                </select><br>
                Password: <input type="password" name="password" required><br>
                <input type="submit" value="Sign Up">
            </form>
            <% if (request.getAttribute("errorMessage") != null) { %>
                <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
            <% } %>
            <div>
                <a href="login.jsp" class="login-link">Already have an account? Login here</a>
            </div>
        </div>
    </div>

    <script>
        function validatePhoneNumber() {
            var phoneNumber = document.getElementById('phone_number').value;
            var phoneError = document.getElementById('phone-error-message');
            var phonePattern = /^\d{10}$/; // Phone number must be exactly 10 digits

            if (!phonePattern.test(phoneNumber)) {
                phoneError.style.display = 'block';
                return false;
            }
            phoneError.style.display = 'none';
            return true;
        }
    </script>
</body>
</html>
