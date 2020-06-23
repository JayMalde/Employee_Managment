package com.employees.crud;
public class Employees
{
	private int emp_id;
	private String firstname;
	private String middlename;
	private String lastname;
	private int age;
	private String gender;
	private String dob;
	private String email;
	private String mobile_no;
	private int dept_id;
	public Employees(int emp_id, String firstname, String middlename, String lastname, int age, String gender,
			String dob, String email, String mobile_no, int dept_id, String joining_date, String leaving_date,
			int salary) {
		super();
		this.emp_id = emp_id;
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.age = age;
		this.gender = gender;
		this.dob = dob;
		this.email = email;
		this.mobile_no = mobile_no;
		this.dept_id = dept_id;
		this.joining_date = joining_date;
		this.leaving_date = leaving_date;
		this.salary = salary;
	}
	private String joining_date;
	private String leaving_date;
	private int salary;
	public Employees() 
	{
		super();
	}
	public int getEmp_id() 
	{
		return emp_id;
	}
	public void setEmp_id(int emp_id) 
	{
		this.emp_id = emp_id;
	}
	public String getFirstname() 
	{
		return firstname;
	}
	public void setFirstname(String firstname) 
	{
		this.firstname = firstname;
	}
	public String getMiddlename() 
	{
		return middlename;
	}
	public void setMiddlename(String middlename) 
	{
		this.middlename = middlename;
	}
	public String getLastname() 
	{
		return lastname;
	}
	public void setLastname(String lastname) 
	{
		this.lastname = lastname;
	}
	public int getAge() 
	{
		return age;
	}
	public void setAge(int age) 
	{
		this.age = age;
	}
	public String getGender() 
	{
		return gender;
	}
	public void setGender(String gender) 
	{
		this.gender = gender;
	}
	public String getDob() 
	{
		return dob;
	}
	public void setDob(String dob) 
	{
		this.dob = dob;
	}
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	public String getMobile_no() 
	{
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) 
	{
		this.mobile_no = mobile_no;
	}
	public int getDept_id() 
	{
		return dept_id;
	}
	public void setDept_id(int dept_id) 
	{
		this.dept_id = dept_id;
	}
	public String getJoining_date() 
	{
		return joining_date;
	}
	public void setJoining_date(String joining_date) 
	{
		this.joining_date = joining_date;
	}
	public String getLeaving_date() 
	{
		return leaving_date;
	}
	public void setLeaving_date(String leaving_date) 
	{
		this.leaving_date = leaving_date;
	}
	public int getSalary() 
	{
		return salary;
	}
	public void setSalary(int salary) 
	{
		this.salary = salary;
	}	
}

