<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="addStudent" method="post">
<h1>Enter The Student Details!!</h1>

<input type="number"  placeholder="Enter The Student Id:" name="studentId"><br>
<input type="text"  placeholder="Enter The Student Name:" name="studentName"><br>
<input type="text"  placeholder="Enter The Student Email:" name="studentEmail"><br>
<input type="number"  placeholder="Enter The Student Marks:" name="studentMarks"><br>
 <button type="submit">ADD</button>


</form>

<style>
body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #f8f9fa, #e9ecef);
    color: #333;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    text-align: center;
}

/* Form container styling */
.form-container {
    background: #fff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 400px;
    max-width: 90%;
    text-align: center;
}

/* Styling the header */
h1 {
    color: #007bff;
    font-size: 2.5em;
    margin-bottom: 20px;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

/* Form elements styling */
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

/* Submit button styling */
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

/* Responsive design */
@media (max-width: 600px) {
    .form-container {
        padding: 20px;
        width: 90%;
    }

    h1 {
        font-size: 2em;
    }

    input[type="number"], input[type="text"], button {
        font-size: 0.9em;
    }
}
</style>
</body>
</html>