<%@page import="com.employees.crud.DepartmentDAO,com.employees.crud.Department"%>  
<%  
int did =Integer.parseInt( request.getParameter("dept_id"));    
String dname = request.getParameter("dname");
String hname = request.getParameter("hname");
int no_people =Integer.parseInt( request.getParameter("no_people"));
int time = Integer.parseInt(request.getParameter("time"));

Department dept = new Department();  
dept.setDepartment_id(did);
dept.setDepartment_name(dname);
dept.setDepartment_head(hname);
dept.setNo_of_people(no_people);
dept.setWorking_hours(time);

int status = DepartmentDAO.save(dept);  
if(status > 0)
{  
    response.sendRedirect("view_department.jsp"); 
}

else
{  
	response.sendRedirect("add_department.html");   
}  
%>  