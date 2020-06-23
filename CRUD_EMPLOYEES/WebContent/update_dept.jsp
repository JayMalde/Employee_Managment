<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.employees.crud.DepartmentDAO,com.employees.crud.Department,java.util.*"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Department Page</title>
</head>
<body>
<% 
String id = request.getParameter("id");  
Department dept = DepartmentDAO.getDepartmentById(Integer.parseInt(id)); 
%>
<form action='update_department.jsp' method='post'>
	<table align="center" border="1">
		<tr><th align="center" bgcolor="indigo" style="color:white" colspan="2"><h1>Update Department Data Here</h1></th></tr>
		<tr><td></td><td><input type='hidden' name='id' value='<%=dept.getDepartment_id()%>'/></td></tr>
			<tr><td>Department Name:</td><td><input type='text' name='dname' value='<%=dept.getDepartment_name()%>'/></td></tr>
			<tr><td>Department Head:</td><td><input type='text' name='hname' value='<%=dept.getDepartment_head()%>'/></td></tr>
			<tr><td>No Of People Working:</td><td><input type='text' name='no_people' value='<%=dept.getNo_of_people()%>'/></td></tr>
			<tr><td>Working Hours:</td><td><input type='text' name='time' value='<%=dept.getWorking_hours()%>'/></td></tr>
			<tr><td colspan='2' align="center"><input type='submit' value='Update' style="height:30px;width:80px"></td></tr>  
    </table>  
</form>
<table align="center">
<tr><td align="center" colspan="2"><a href="main.jsp">Main Page</a></td></tr>	
</table>
</body>
</html>