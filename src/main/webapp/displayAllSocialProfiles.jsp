<%@page import="java.util.List"%>
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
	int studentId = Integer.parseInt(request.getParameter("studentId"));
	List<SocialProfile> socialProfiles = (List<SocialProfile>) request.getAttribute("socialProfiles");
	if (socialProfiles != null && !socialProfiles.isEmpty()) {
	%>

	<div>
		<table>
			<thead>
				<tr>
					<th>SocialProfileId</th>
					<th>Name</th>
					<th>URL</th>
					<th>UPDATE</th>
					<th>DELETE</th>
				</tr>
			</thead>

			<tbody>
				<%
				for (SocialProfile sp : socialProfiles) {
				%>
				<tr>
					<td><%=sp.getSocialProfileId()%></td>
					<td><%=sp.getSocialProfileName()%></td>
					<td><a href="<%=sp.getUrl()%>">Visit Profile</a></td>
					<td><a
						href="updateSocialProfile?socialProfileId=<%=sp.getSocialProfileId()%>&studentId=<%=studentId%>">UPDATE</a></td>
					<td><a
						href="deleteSocialProfile?socialProfileId=<%=sp.getSocialProfileId()%>&studentId=<%=studentId%>">DELETE</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<h1>
			<a href="AddSocialProfile.jsp?studentId=<%=studentId%>">ADD NEW
				SOCIAL PROFILE</a>
		</h1>
	</div>

	<%
	} else {
	%>
	<h1>
		<a href="AddSocialProfile.jsp?studentId=<%=studentId%>">ADD NEW
			SOCIAL PROFILE</a>
	</h1>
	<%
	}
	%>

	<style>
body {
	font-family: 'Arial', sans-serif;
	background: linear-gradient(to right, #f8f9fa, #e9ecef);
	color: #333;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	padding: 20px;
}

h1 {
	color: #007bff; 
	font-size: 2em;
	margin: 20px 0;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

h1 a {
	text-decoration: none;
	color: inherit;
	background-color: #f8f9fa;
	padding: 10px 20px;
	border: 2px solid #007bff;
	border-radius: 5px;
	transition: all 0.3s ease;
}

h1 a:hover {
	background-color: #007bff;
	color: #fff;
}

div {
	width: 80%;
	margin: auto;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	background: #fff;
	padding: 20px;
	border-radius: 10px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

thead tr {
	background-color: #007bff;
	color: #fff;
}

th, td {
	text-align: left;
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

tbody tr:hover {
	background-color: #f1f1f1;
}

a {
	color: #007bff;
	text-decoration: none;
	transition: color 0.3s ease;
}

a:hover {
	color: #0056b3;
}

a:link, a:visited {
	color: #007bff;
	background-color: transparent;
	text-decoration: none;
}

a:hover, a:active {
	color: #0056b3;
	text-decoration: underline;
}

td a {
	display: inline-block;
	padding: 5px 10px;
	border-radius: 3px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	margin-right: 5px;
}

td a:hover {
	background-color: #007bff;
	color: #fff;
}

@media ( max-width : 768px) {
	body {
		padding: 10px;
	}
	div {
		width: 100%;
		padding: 15px;
	}
	h1 {
		font-size: 1.5em;
	}
	th, td {
		font-size: 0.9em;
		padding: 8px;
	}
}
</style>
</body>
</html>