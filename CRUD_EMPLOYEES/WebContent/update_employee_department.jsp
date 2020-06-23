<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.employees.crud.EmployeeDAO, com.employees.crud.Employees, com.employees.crud.DepartmentDAO, com.employees.crud.Department, java.util.*, java.sql.*"%>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

<%
response.setContentType("text/html");  
Employees emp1= new Employees();   

int eid = Integer.parseInt(request.getParameter("id"));
int did = Integer.parseInt(request.getParameter("department"));

emp1.setDept_id(did);
emp1.setEmp_id(eid); 
EmployeeDAO.updateDepartment(emp1);      
response.sendRedirect("list_employees.jsp");  
%>

</body>
</html>