<%@page import="com.employees.crud.EmployeeDAO,com.employees.crud.Employees"%>  
<%  
String emp_id = request.getParameter("emp_id");    
int eid = Integer.parseInt(emp_id);
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String lname = request.getParameter("lname");
String emp_age = request.getParameter("age");
int eage = Integer.parseInt(emp_age);
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String did = request.getParameter("dept_id");
int emp_dept_id = Integer.parseInt(did);
String join_date = request.getParameter("join_date");
String leave_date = request.getParameter("leave_date");
String emp_salary = request.getParameter("salary");
int sal = Integer.parseInt(emp_salary);
  
Employees emp = new Employees();  
emp.setEmp_id(eid);  
emp.setFirstname(fname);
emp.setMiddlename(mname);
emp.setLastname(lname);
emp.setAge(eage);
emp.setGender(gender);
emp.setDob(dob);
emp.setEmail(email);
emp.setMobile_no(mobile);
emp.setDept_id(emp_dept_id);
emp.setJoining_date(join_date);
emp.setLeaving_date(leave_date);
emp.setSalary(sal);  
  
int status = EmployeeDAO.save(emp);    
if(status>0){  
	response.sendRedirect("add_employee_success.jsp");  
}
else{  
	response.sendRedirect("add_employee_error.jsp");  
}  
%>  