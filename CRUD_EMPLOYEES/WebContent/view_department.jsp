<%@page import=" com.employees.crud.DepartmentDAO, com.employees.crud.Department, java.util.*"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>    
<html>  
<head>  
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
	<title>View Departments</title>  
</head>  
<body>  

<%  
List<Department> deptlist = DepartmentDAO.getAllDepartments(); 
request.setAttribute("deptlist", deptlist); 
%>    

<table border='1' width='100%'>
<tr><th align="center" bgcolor="indigo" style="color:white" colspan="8"><h1>Displaying Departments</h1></th></tr>
<tr>
	<th>Department Id</th>
	<th>Department Name</th>
	<th>Department Head</th>
	<th>No Of Employees</th>
	<th>Working Hours</th>
	<th>Edit</th>
	<th>Delete</th>
	<th>View</th>
</tr>

<c:forEach items="${deptlist}" var="dept">  
	<tr>
	<td>${dept.getDepartment_id()}</td>
	<td>${dept.getDepartment_name()}</td>
	<td>${dept.getDepartment_head()}</td>
	<td>${dept.getNo_of_people()}</td>
	<td>${dept.getWorking_hours()}</td>
	<td><a href="update_dept.jsp?id=${dept.getDepartment_id()}">Edit</a></td>  
	<td><a href="delete_department.jsp?id=${dept.getDepartment_id()}">Delete</a></td>
	<td><a href="view_by_department.jsp?id=${dept.getDepartment_id()}">View Employee By Department</a></td>
	</tr>  
</c:forEach>  

</table>
<table align="center">
<tr><td align="center" colspan="2"><a href="add_department.html">Add New Department</a></td></tr>
<tr><td align="center" colspan="2"><a href="main.jsp">Main Page</a></td></tr>	
</table> 
</body>  
</html>  