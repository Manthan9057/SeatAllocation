 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ENTER THE USER DETAILS: </title>

</head>
<body>
<div align="center">
<h1>ENTER USER DETAILS</h1>
<form action="Register" method="post">
<table>
<tr> <td> User Id: </td><td><input type="text" name="id"></td></tr>
<tr> <td> User Name: </td><td><input type="text" name="username"></td></tr>
<tr> <td> User Email: </td><td><input type="text" name="email"></td></tr>
<tr> <td> User Project: </td><td><input type="text" name="project"></td></tr>
<tr> <td> User Manager's Name: </td><td><input type="text" name="manager"></td></tr>
<tr> <td> user Contact no.: </td><td><input type="text" name="contact"></td></tr>
<tr><td>  seat number: </td><td><input type="text" name="seat"></td></tr>

<tr><td><input type=submit value=Save></td><td><input type=reset></td></tr>
</table>
</form>
</div>
</body>
</html> 