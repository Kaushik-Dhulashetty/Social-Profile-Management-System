<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
</head>
<body>
	<h1 style="color: red">Welcome To Student Homepage!!</h1>

	<h2>
		<a href="AddStudent.jsp">ADD NEW STUDENT</a>
	</h2>
	<h2>
		<a href="displayAllStudents">DISPLAY ALL STUDENTS</a>
	</h2>

	<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: linear-gradient(to right, #74ebd5, #ACB6E5);
	color: #333;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	padding: 20px;
	text-align: center;
}

h1 {
	color: #ff6347;
	font-size: 3em;
	margin-bottom: 20px;
	text-shadow: 1px 1px 2px #ccc;
}

h2 {
	font-size: 1.8em;
	margin: 15px 0;
}

h2 a {
	text-decoration: none;
	color: #007bff;
	transition: color 0.3s ease, transform 0.3s ease;
	padding: 10px 15px;
	border-radius: 5px;
	background: rgba(255, 255, 255, 0.7);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 a:hover {
	color: #0056b3;
	transform: translateY(-2px);
	background: rgba(255, 255, 255, 0.9);
}

h2 a {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	transition: box-shadow 0.3s ease, background 0.3s ease;
}

h2 a:hover {
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

@media ( max-width : 600px) {
	body {
		padding: 10px;
	}
	h1 {
		font-size: 2em;
	}
	h2 {
		font-size: 1.5em;
	}
	h2 a {
		padding: 8px 12px;
	}
}
</style>
</body>
</html>