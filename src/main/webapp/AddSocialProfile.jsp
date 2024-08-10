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
	int studentId = Integer.parseInt(request.getParameter("studentId"));
	%>

	<div>
		<form action="addSocialProfile?studentId=<%=studentId%>" method="post">
			<h1>ADD STUDENT PROFILE DETAILS</h1><br> 
			<input type="number" placeholder="Enter Profile Id: " name="socialProfileId"><br> 
			<input type="text" placeholder="Enter Profile Name: " name="socialProfileName" required><br>
			<input type="text" placeholder="Enter URL: " name="url" required><br>
			<input type="submit" value="ADD PROFILE">
		</form>
	</div>

	<style>
body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #f8f9fa, #e9ecef);
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.form-container {
    background: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 400px;
    max-width: 90%;
    text-align: center;
}

h1 {
    color: #007bff;
    font-size: 1.8em;
    margin-bottom: 20px;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

input[type="number"], input[type="text"] {
    font-size: 1em;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    width: 100%;
    transition: border-color 0.3s ease;
}

input[type="number"]:focus, input[type="text"]:focus {
    border-color: #007bff;
    outline: none;
}

input[type="submit"] {
    font-size: 1em;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}

@media (max-width: 600px) {
    .form-container {
        padding: 20px;
        width: 90%;
    }

    h1 {
        font-size: 1.5em;
    }

    input[type="number"], input[type="text"], input[type="submit"] {
        font-size: 0.9em;
    }
}

}
</style>
</body>
</html>