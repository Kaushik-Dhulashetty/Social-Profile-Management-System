<%@page import="com.jsp.spring_mvc.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Student st=(Student)request.getAttribute("updateStudent");
%>

<form action="saveUpdateStudent" method="post">
<h1>Update Student Details!!</h1>

<input type="number" name="studentId" value="<%= st.getStudentId()%>" readonly="readonly"><br>
<input type="text" name="studentName" value="<%= st.getStudentName()%>"><br>
<input type="text" name="studentEmail" value="<%= st.getStudentEmail()%>"><br>
<input type="number" name="studentMarks" value="<%= st.getStudentMarks()%>"><br>
<button type="submit">UPDATE</button>
</form>

<style>
body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #e0f7fa, #80deea);
    color: #333;
    margin: 0;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    background-color: #ffffff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    max-width: 500px;
    width: 100%;
    text-align: center;
}

h1 {
    color: #00796b;
    margin-bottom: 20px;
    font-size: 2em;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

input[type="text"], input[type="number"], input[type="email"] {
    font-size: 1em;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    width: 100%;
    transition: border-color 0.3s ease;
}

input[type="text"]:focus, input[type="number"]:focus, input[type="email"]:focus {
    border-color: #00796b;
    outline: none;
}

button {
    font-size: 1em;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #00796b;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

button:hover {
    background-color: #004d40;
    transform: scale(1.05);
}

@media (max-width: 768px) {
    .form-container {
        padding: 20px;
        margin: 10px;
    }

    h1 {
        font-size: 1.8em;
    }

    input[type="text"], input[type="number"], input[type="email"], button {
        font-size: 0.9em;
    }
}

</style>
</body>
</html>