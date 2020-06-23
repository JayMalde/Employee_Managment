package com.employees.crud;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class DepartmentDAO 
{
	public static Connection getConnection()
	{  
    Connection con = null;      
    try
        {  
        	Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/organizations","root","root"); 
        }
        catch(Exception e)
        {
        	System.out.println(e);
        }  
        return con;  
    }
	public static int save(Department dept)
	{  
	    int status = 0;      
	    try
	    {  
	        Connection con = DepartmentDAO.getConnection();         
	        PreparedStatement ps = 
	        con.prepareStatement("insert into department(department_id,department_name,department_head,no_of_people,working_hours) values (?,?,?,?,?)");  
	        ps.setInt(1, dept.getDepartment_id()); 
	        ps.setString(2, dept.getDepartment_name()); 
            ps.setString(3, dept.getDepartment_head());
            ps.setInt(4, dept.getNo_of_people());
            ps.setInt(5, dept.getWorking_hours()); 
            status = ps.executeUpdate();     
            con.close();  
        }
        catch(Exception ex)
	    {
        	ex.printStackTrace();
        }    
        return status;  
    } 

	public static int update(Department dept)
	{  
        int status = 0;     
        try
        {  
            Connection con = EmployeeDAO.getConnection();  
            PreparedStatement ps = con.prepareStatement("update department set department_name=?,department_head=?,no_of_people=?,working_hours=? where department_id=?");  
            ps.setString(1, dept.getDepartment_name()); 
            ps.setString(2, dept.getDepartment_head());
            ps.setInt(3, dept.getNo_of_people());
            ps.setInt(4, dept.getWorking_hours()); 
            ps.setInt(5, dept.getDepartment_id());   
            status = ps.executeUpdate();  
            con.close();  
        }
        catch(Exception ex)
        {
        	ex.printStackTrace();
        }    
        return status;  
    } 
    
	public static int delete(int id)
	{  
        int status = 0;  
        try
        {  
            Connection con = EmployeeDAO.getConnection();  
            
            PreparedStatement ps = con.prepareStatement("delete from department where department_id=?");  
            ps.setInt(1, id);  
            status = ps.executeUpdate();  
            con.close();  
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }    
        return status;  
    }  
 
	public static List<Department> getAllDepartments()
	{  
	    List<Department> list = new ArrayList<Department>();        
	    try
	    {  
	        Connection con = EmployeeDAO.getConnection();     
	        PreparedStatement ps = con.prepareStatement("select * from department");  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                Department dept = new Department();  
                dept.setDepartment_id(rs.getInt(1));  
            	dept.setDepartment_name(rs.getString(2));
            	dept.setDepartment_head(rs.getString(3));
                dept.setNo_of_people(rs.getInt(4));
                dept.setWorking_hours(rs.getInt(5));
                list.add(dept);  
            }  
            
            con.close();  
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }    
        return list;  
    }
	public static Department getDepartmentById(int id)
	{  
        Department dept = new Department();  
          
        try{  
            Connection con = DepartmentDAO.getConnection(); 
            
            PreparedStatement ps = con.prepareStatement("select * from department where department_id=?");  
            ps.setInt(1, id);  
            
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){  
            	dept.setDepartment_id(rs.getInt(1));
            	dept.setDepartment_name(rs.getString(2));  
            	dept.setDepartment_head(rs.getString(3));
            	dept.setNo_of_people(rs.getInt(4));
            	dept.setWorking_hours(rs.getInt(5));
            }
            
            con.close();  
        }
        catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return dept;  
    } 
}