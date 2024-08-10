<%@page import="com.jsp.spring_mvc.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: red; font-size: 30px;">Student Dashboard!!</h1>
	<%
	List<Student> students = (List) request.getAttribute("students");
	%>
	<table border="1" style="background-color: lightblue;">
		<tr>
			<th>StudentId</th>
			<th>StudentName</th>
			<th>StudentEmail</th>
			<th>StudentMarks</th>
			<th>SocialProfiles</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<%
		for (Student stu : students) {
		%>
		<tr>
			<td><%=stu.getStudentId()%></td>
			<td><%=stu.getStudentName()%></td>
			<td><%=stu.getStudentEmail()%></td>
			<td><%=stu.getStudentMarks()%></td>
			<td><a
				href="displayAllProfiles?studentId=<%=stu.getStudentId()%>">VIEW</a></td>
			<td><a href="updateStudent?studentId=<%=stu.getStudentId()%>">UPDATE</a></td>
			<td><a href="deleteStudent?studentId=<%=stu.getStudentId()%>">DELETE</a></td>
		</tr>

		<%
		}
		%>
	</table>
	<h1>
		<a href="index.jsp">Go Back</a>
	</h1>

	<style>
body {
	font-family: 'Arial', sans-serif;
	background: linear-gradient(to right, #f0f4f8, #d9e2ec);
	color: #333;
	margin: 0;
	padding: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

h1 {
	color: #007bff;
	font-size: 2.5em;
	margin: 20px 0;
	text-align: center;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

.table-container {
	width: 90%;
	max-width: 1000px;
	margin: 20px 0;
	overflow-x: auto;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	background-color: #fff;
	border-radius: 10px;
	padding: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 15px;
	text-align: center;
}

th {
	background-color: #007bff;
	color: white;
	font-size: 1.1em;
	text-transform: uppercase;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #f1f1f1;
}

a {
	color: #007bff;
	text-decoration: none;
	transition: color 0.3s;
}

a:hover {
	color: #0056b3;
}

h2 {
	font-size: 1.5em;
	margin-top: 30px;
}

@media ( max-width : 768px) {
	h1 {
		font-size: 2em;
	}
	.table-container {
		padding: 15px;
		margin: 10px 0;
	}
	th, td {
		padding: 10px;
	}
}
</style>
</body>
</html>