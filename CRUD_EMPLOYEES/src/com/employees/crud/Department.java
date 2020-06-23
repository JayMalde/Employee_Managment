package com.employees.crud;
public class Department
{
	private int department_id;
	private String department_name;
	private String department_head;
	private int no_of_people;
	private int working_hours;
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getDepartment_head() {
		return department_head;
	}
	public void setDepartment_head(String department_head) {
		this.department_head = department_head;
	}
	public int getNo_of_people() {
		return no_of_people;
	}
	public void setNo_of_people(int no_of_people) {
		this.no_of_people = no_of_people;
	}
	public int getWorking_hours() {
		return working_hours;
	}
	public void setWorking_hours(int working_hours) {
		this.working_hours = working_hours;
	}
	public Department(int department_id, String department_name, String department_head, int no_of_people,
			int working_hours) {
		super();
		this.department_id = department_id;
		this.department_name = department_name;
		this.department_head = department_head;
		this.working_hours = working_hours;
	}
	public Department() {
		super();
	}
}
