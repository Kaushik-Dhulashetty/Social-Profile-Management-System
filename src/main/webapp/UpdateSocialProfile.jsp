<%@page import="com.jsp.spring_mvc.entity.SocialProfile"%>
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
	SocialProfile socialProfile = (SocialProfile) request.getAttribute("socialProfile");
	String sId = request.getParameter("studentId");
	int studentId = 0;
	if (sId != null) {
		studentId = Integer.parseInt(sId);
	}
	%>

	<div>
		<form action="updateSocialProfileSave">
			<h1>ADD STUDENT PROFILE DETAILS</h1>
			<input type="hidden" value="<%=studentId%>" name="studentId">
			<input type="text" value="<%=socialProfile.getSocialProfileId()%>"name="socialProfileId" readonly="true"><br> 
			<input type="text" value="<%=socialProfile.getSocialProfileName()%>"name="socialProfileName"><br> 
			<input type="text"value="<%=socialProfile.getUrl()%>" name="url"><br>	
			<button type="submit">UPDATE PROFILE</button>			
		</form>
		
	</div>
	<style>
body {
	font-family: 'Arial', sans-serif;
	background: linear-gradient(to right, #e0eafc, #cfdef3);
	color: #333;
	margin: 0;
	padding: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: #fff;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	max-width: 500px;
	width: 100%;
	text-align: center;
}

h1 {
	color: #007bff;
	margin-bottom: 20px;
	font-size: 2em;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

form {
	display: flex;
	flex-direction: column;
	gap: 15px;
}

input[type="text"] {
	font-size: 1em;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	width: 100%;
	transition: border-color 0.3s ease;
}

input[type="text"]:focus {
	border-color: #007bff;
	outline: none;
}

button {
	font-size: 1em;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #007bff;
	color: white;
	cursor: pointer;
	transition: background-color 0.3s ease, transform 0.2s ease;
}

button:hover {
	background-color: #0056b3;
	transform: scale(1.05);
}

@media ( max-width : 768px) {
	.form-container {
		padding: 20px;
		margin: 10px;
	}
	h1 {
		font-size: 1.8em;
	}
	input[type="text"], button {
		font-size: 0.9em;
	}
}
</style>
</body>
</html>