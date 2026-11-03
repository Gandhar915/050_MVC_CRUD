<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student App - Welcome</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        height: 100vh;
        background: url('https://images.unsplash.com/photo-1523240795612-9a054b0db644') no-repeat center center/cover;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: rgba(0, 0, 0, 0.6);
        padding: 40px 60px;
        border-radius: 15px;
        text-align: center;
        color: white;
        box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        animation: fadeIn 1.5s ease-in-out;
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
        animation: slideDown 1s ease-in-out;
    }

    p {
        margin-bottom: 25px;
        font-size: 18px;
        color: #ddd;
    }

    a {
        text-decoration: none;
        padding: 12px 25px;
        background: linear-gradient(45deg, #00c6ff, #0072ff);
        color: white;
        border-radius: 25px;
        font-size: 16px;
        transition: 0.3s ease;
        display: inline-block;
    }

    a:hover {
        transform: scale(1.1);
        background: linear-gradient(45deg, #ff7e5f, #feb47b);
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideDown {
        from {
            transform: translateY(-50px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }
</style>

</head>
<body>

<div class="container">
    <h1>Welcome To Student Data</h1>
    <p>Manage student records easily and efficiently</p>
    <a href="addStudent">Add Student</a>
</div>

</body>
</html>