<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
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
        color:black;
    }
        
        .container {
            display: flex;
            margin-top: 80px; /* Adjust based on navbar height */
            width: 900px; /* Increased width to accommodate larger left column */
            margin-left: 1%;/* Center the container */
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
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
        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
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
        .signup-link {margin-top: 20px;
            display: block;
            color: #007bff;
            text-decoration: none;
        }
        .signup-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h3>Electricity Billing System</h3>
    </div><div class="navbar">
        <h3>Electricity Billing System</h3>
    </div>
    
    <div class="container">
        <div class="left-column">
        
        </div>
        <div class="right-column">
            <h1>Electricity Billing System</h1>
            <h2>Login</h2>
            <form action="login" method="post">
                <label for="role">Role:</label>
                <select id="role" name="role" required>
                    <option value="users">User</option>
                    <option value="admin">Admin</option>
                    <option value="employee">Employee</option>
                </select><br><br>
                Username: <input type="text" name="username" required><br>
                Password: <input type="password" name="password" required><br>
                <input type="submit" value="Login">
            </form>
            <a href="signUp.jsp" class="signup-link">Don't have an account? Sign up here</a>
        </div>
    </div>
</body>
</html>