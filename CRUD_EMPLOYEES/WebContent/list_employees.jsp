<!DOCTYPE html>    
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View All Employees</title>  
</head>  
<body>    
<%@page import="com.employees.crud.EmployeeDAO, com.employees.crud.Employees, com.employees.crud.DepartmentDAO, com.employees.crud.Department, java.util.List"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%  
List<Employees> list = EmployeeDAO.getAllEmployees(); 
request.setAttribute("list", list); 
List<Department> deptlist = DepartmentDAO.getAllDepartments(); 
request.setAttribute("deptlist", deptlist); 
%>    
<table border='1' width='100%'>
<tr><th align="center" bgcolor="indigo" style="color:white" colspan="15"><h1>Employee List</h1></th></tr>
<tr>
	<th>Emp Id</th>
	<th>First Name</th>
	<th>Middle Name</th>
	<th>Last Name</th>
	<th>Age</th>
	<th>Gender</th>
	<th>DOB</th>
	<th>Email</th>
	<th>Mobile No</th>
	<th>Dept ID</th>
	<th>Joining Date</th>
	<th>Leaving Date</th>
	<th>Salary</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="emp">  
	<tr>
	<td>${emp.getEmp_id()}</td>
	<td>${emp.getFirstname()}</td>
	<td>${emp.getMiddlename()}</td>
	<td>${emp.getLastname()}</td>
	<td>${emp.getAge()}</td>
	<td>${emp.getGender()}</td>
	<td>${emp.getDob()}</td>
	<td>${emp.getEmail()}</td>
	<td>${emp.getMobile_no()}</td>
		
	<td>
	<form action="update_employee_department.jsp" method="get">
		<input type='hidden'name='id' value="${emp.getEmp_id()}">
		<select name="department">
			<c:forEach items="${deptlist}" var="dept">
				<c:choose>
					<c:when test="${dept.getDepartment_id()==emp.getDept_id()}">
						<option value="${dept.getDepartment_id()}" selected>${dept.getDepartment_name()}</option>
					</c:when>
					<c:otherwise>
						<option value="${dept.getDepartment_id()}">${dept.getDepartment_name()}</option>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</select>
		<input type='submit' value='Update'>
	</form>
	</td>
	
	<td>${emp.getJoining_date()}</td>
	<td>${emp.getLeaving_date()}</td>
	<td>${emp.getSalary()}</td>
	
	<td><a href="update_emp.jsp?id=${emp.getEmp_id()}">Edit</a></td>  
	<td><a href="delete_employee.jsp?id=${emp.getEmp_id()}">Delete</a></td></tr>  

</c:forEach>  
</table>
<table align="center">
<tr><td align="center" colspan="2"><a href="add_employee.html">Add New Employee</a></td></tr>
<tr><td align="center" colspan="2"><a href="main.jsp">Main Page</a></td></tr>	
</table>
</body>  
</html>  