<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add Student Data</h1>
<form action="addSuccess" method="post">
<input type="text" placeholder="Enter Name" name="name" ><br><br>
<input type="text" placeholder="Enter Marks" name="marks" ><br><br>
<input type="text" placeholder="Enter CollegeName" name="collegeName"><br><br>
<input type="text" placeholder="Enter Branch" name="branch"><br><br>
<button type="submit">Add Student</button>
</form>
</body>
</html> --%>










<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        height: 100vh;
        background: url('https://images.unsplash.com/photo-1503676260728-1c00da094a0b') no-repeat center center/cover;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .form-container {
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(10px);
        padding: 40px;
        border-radius: 15px;
        width: 350px;
        text-align: center;
        box-shadow: 0 8px 25px rgba(0,0,0,0.3);
        animation: fadeIn 1.5s ease-in-out;
    }

    h1 {
        margin-bottom: 25px;
        color: white;
        animation: slideDown 1s ease-in-out;
    }

    input {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 8px;
        outline: none;
        font-size: 14px;
    }

    input:focus {
        box-shadow: 0 0 8px #00c6ff;
    }

    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 25px;
        background: linear-gradient(45deg, #00c6ff, #0072ff);
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s ease;
        margin-top: 10px;
    }

    button:hover {
        transform: scale(1.05);
        background: linear-gradient(45deg, #ff7e5f, #feb47b);
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideDown {
        from {
            transform: translateY(-40px);
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

<div class="form-container">
    <h1>Add Student</h1>

    <form action="addSuccess" method="post">
        <input type="text" placeholder="Enter Name" name="name" required>
        <input type="text" placeholder="Enter Marks" name="marks" required>
        <input type="text" placeholder="Enter College Name" name="collegeName" required>
        <input type="text" placeholder="Enter Branch" name="branch" required>

        <button type="submit">Add Student</button>
    </form>
</div>

</body>
</html>