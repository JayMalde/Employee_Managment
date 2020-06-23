<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.employees.crud.EmployeeDAO,com.employees.crud.Employees,java.util.*"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee Page</title>
</head>
<body>
<% 
String id = request.getParameter("id");  
Employees emp = EmployeeDAO.getEmployeeById(Integer.parseInt(id)); 
%>
<form action='update_employee.jsp' method='post'>
	<table align="center" border="1">
		<tr><th align="center" bgcolor="indigo" style="color:white" colspan="2"><h1>Update Employee Data Here</h1></th></tr>
		<tr><td></td><td><input type='hidden' name='id' value='<%=emp.getEmp_id()%>'/></td></tr>
		<tr><td>First Name:</td><td><input type='text' name='fname' value='<%=emp.getFirstname()%>'/></td></tr>
		<tr><td>Middle Name:</td><td><input type='text' name='mname' value='<%=emp.getMiddlename()%>'/></td></tr>
		<tr><td>Last Name:</td><td><input type='text' name='lname' value='<%=emp.getLastname()%>'/></td></tr>
		<tr><td>Age:</td><td><input type='text' name='age' value='<%=emp.getAge()%>'/></td></tr>
		<tr><td>Gender:</td><td><input type='text' name='gender' value='<%=emp.getGender()%>'/></td></tr>
		<tr><td>DOB:</td><td><input type='text' name='dob' value='<%=emp.getDob()%>'/></td></tr>
		<tr><td>Email:</td><td><input type='text' name='email' value='<%=emp.getEmail()%>'/></td></tr>
		<tr><td>Mobile No:</td><td><input type='text' name='mobile' value='<%=emp.getMobile_no()%>'/></td></tr>
		<tr><td>Department ID:</td><td><input type='text' name='dept_id' value='<%=emp.getDept_id()%>'/></td></tr>
		<tr><td>Joining Date:</td><td><input type='text' name='join_date' value='<%=emp.getJoining_date()%>'/></td></tr>
		<tr><td>Leaving Date:</td><td><input type='text' name='leave_date' value='<%=emp.getLeaving_date()%>'/></td></tr>
		<tr><td>Salary:</td><td><input type='text' name='salary' value='<%=emp.getSalary()%>'/></td></tr>
		<tr><td colspan='2' align="center"><input type='submit' value='Update' style="height:35px;width:80px;"></td></tr>  
    </table>  
</form>
<table align="center">
<tr><td align="center" colspan="2"><a href="main.jsp">Main Page</a></td></tr>	
</table>
</body>
</html>