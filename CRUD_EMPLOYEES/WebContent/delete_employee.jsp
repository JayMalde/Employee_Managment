<%@page import="com.employees.crud.EmployeeDAO"%>   
<%  
String sid = request.getParameter("id");  
int id = Integer.parseInt(sid);  
EmployeeDAO.delete(id);  
response.sendRedirect("list_employees.jsp");  
%>  