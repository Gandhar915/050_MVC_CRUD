<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.mvc.entity.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>This is display Page</h1>
	<%
		List<Student> listOfStudent = (List<Student>) request.getAttribute("listOfStudent");
		String path = request.getContextPath();
	%>



	<table border="1">
		<tr>
			<th>Student Id</th>
			<th>Student Name</th>
			<th>Student Marks</th>
			<th>Student Branch</th>
			<th>Student College Name</th>
			<th>Update</th>
			<th>Delete</th>

		</tr>
		<%
			for (Student s : listOfStudent) {
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.getMarks()%></td>
			<td><%=s.getBranch()%></td>
			<td><%=s.getCollegeName()%></td>
			<td><a href="<%=path%>/update/<%=s.getId() %>">Update</a></td>
			<td><a href="<%=path%>/delete/<%=s.getId() %>">Delete</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html> --%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.mvc.entity.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Students</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		min-height: 100vh;
		background: url('https://images.unsplash.com/photo-1523240795612-9a054b0db644') no-repeat center center/cover;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.container {
		background: rgba(255, 255, 255, 0.15);
		backdrop-filter: blur(10px);
		padding: 30px;
		border-radius: 15px;
		width: 90%;
		max-width: 900px;
		box-shadow: 0 8px 25px rgba(0,0,0,0.3);
		animation: fadeIn 1.5s ease-in-out;
		color: white;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		animation: slideDown 1s ease-in-out;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		margin-top: 15px;
	}

	th, td {
		padding: 10px;
		text-align: center;
	}

	th {
		background: rgba(0,0,0,0.6);
	}

	td {
		background: rgba(255,255,255,0.1);
	}

	tr:hover td {
		background: rgba(255,255,255,0.25);
		transition: 0.3s;
	}

	a {
		text-decoration: none;
		padding: 6px 12px;
		border-radius: 20px;
		color: white;
		font-size: 14px;
		transition: 0.3s ease;
	}

	a[href*="update"] {
		background: linear-gradient(45deg, #00c6ff, #0072ff);
	}

	a[href*="delete"] {
		background: linear-gradient(45deg, #ff4b2b, #ff416c);
	}

	a:hover {
		transform: scale(1.1);
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

<div class="container">
	<h1>Student Records</h1>

	<%
		List<Student> listOfStudent = (List<Student>) request.getAttribute("listOfStudent");
		String path = request.getContextPath();
	%>

	<table>
		<tr>
			<th>Student Id</th>
			<th>Student Name</th>
			<th>Student Marks</th>
			<th>Student Branch</th>
			<th>College Name</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>

		<%
			for (Student s : listOfStudent) {
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.getMarks()%></td>
			<td><%=s.getBranch()%></td>
			<td><%=s.getCollegeName()%></td>
			<td><a href="<%=path%>/update/<%=s.getId()%>">Update</a></td>
			<td><a href="<%=path%>/delete/<%=s.getId()%>">Delete</a></td>
		</tr>
		<%
			}
		%>
	</table>

</div>

</body>
</html>