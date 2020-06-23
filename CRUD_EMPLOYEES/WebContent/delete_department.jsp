<%@page import="com.employees.crud.DepartmentDAO"%>  
<%  
String sid = request.getParameter("id");  
int id = Integer.parseInt(sid);  
DepartmentDAO.delete(id);  
response.sendRedirect("view_department.jsp");  
%>  