package com.employees.crud;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class EmployeeDAO 
{
	public static Connection getConnection(){  
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
	public static int save(Employees emp)
	{  
        int status = 0;      
        try
        {  
            Connection con = EmployeeDAO.getConnection();  
            
            PreparedStatement ps = 
            con.prepareStatement("insert into employee(emp_id,first_name,middle_name,last_name,age,gender,dob,email,mobile_no,dept_id,joining_date,leaving_date,salary) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");  
            ps.setInt(1, emp.getEmp_id()); 
            ps.setString(2, emp.getFirstname()); 
            ps.setString(3, emp.getMiddlename());
            ps.setString(4, emp.getLastname()); 
            ps.setInt(5, emp.getAge());
            ps.setString(6, emp.getGender()); 
            ps.setString(7, emp.getDob()); 
            ps.setString(8, emp.getEmail());
            ps.setString(9, emp.getMobile_no());
            ps.setInt(10, emp.getDept_id());
            ps.setString(11, emp.getJoining_date());
            ps.setString(12, emp.getLeaving_date());
            ps.setInt(13, emp.getSalary()); 
            status = ps.executeUpdate();  
              
            con.close();  
        }
        catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    } 
    
	public static int update(Employees emp)
	{  
        int status = 0;     
        try
        {  
            Connection con = EmployeeDAO.getConnection();  
            
            PreparedStatement ps = con.prepareStatement("update employee set first_name=?,middle_name=?,last_name=?,age=?,gender=?,dob=?,email=?,mobile_no=?,dept_id=?,joining_date=?,leaving_date=?,salary=? where emp_id=?");  
            ps.setString(1, emp.getFirstname());
            ps.setString(2, emp.getMiddlename());
            ps.setString(3, emp.getLastname());
            ps.setInt(4, emp.getAge());
            ps.setString(5,emp.getGender());
            ps.setString(6, emp.getDob());
            ps.setString(7, emp.getEmail());
            ps.setString(8, emp.getMobile_no());
            ps.setInt(9, emp.getDept_id());
            ps.setString(10, emp.getJoining_date());
            ps.setString(11, emp.getLeaving_date());
            ps.setInt(12, emp.getSalary());
            ps.setInt(13, emp.getEmp_id());  
              
            status = ps.executeUpdate();  
              
            con.close();  
        }
        catch(Exception ex){
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
	            
	            PreparedStatement ps = con.prepareStatement("delete from employee where emp_id=?");  
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
	 
	public static Employees getEmployeeById(int id)
	{  
        Employees emp = new Employees();  
          
        try{  
            Connection con = EmployeeDAO.getConnection(); 
            
            PreparedStatement ps = con.prepareStatement("select * from employee where emp_id=?");  
            ps.setInt(1, id);  
            
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){  
            	emp.setEmp_id(rs.getInt(1));  
            	emp.setFirstname(rs.getString(2));
            	emp.setMiddlename(rs.getString(3));
            	emp.setLastname(rs.getString(4));
            	emp.setAge(rs.getInt(5));
            	emp.setGender(rs.getString(6));
            	emp.setDob(rs.getString(7));
            	emp.setEmail(rs.getString(8));
            	emp.setMobile_no(rs.getString(9));
            	emp.setDept_id(rs.getInt(10));
            	emp.setJoining_date(rs.getString(11));
            	emp.setLeaving_date(rs.getString(12));
            	emp.setSalary(rs.getInt(13));
            }
            
            con.close();  
        }
        catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return emp;  
    } 

    public static List<Employees> getAllEmployees()
    {  
        List<Employees> list = new ArrayList<Employees>();        
        try
        {  
            Connection con = EmployeeDAO.getConnection();  
            
            PreparedStatement ps = con.prepareStatement("select * from employee");  
            
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                Employees emp = new Employees();  
                emp.setEmp_id(rs.getInt(1));  
            	emp.setFirstname(rs.getString(2));
            	emp.setMiddlename(rs.getString(3));
            	emp.setLastname(rs.getString(4));
            	emp.setAge(rs.getInt(5));
            	emp.setGender(rs.getString(6));
            	emp.setDob(rs.getString(7));
            	emp.setEmail(rs.getString(8));
            	emp.setMobile_no(rs.getString(9));
            	emp.setDept_id(rs.getInt(10));
            	emp.setJoining_date(rs.getString(11));
            	emp.setLeaving_date(rs.getString(12));
            	emp.setSalary(rs.getInt(13));
                
                list.add(emp);  
            }  
            
            con.close();  
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }    
        return list;  
    }
    public static List<Employees> getEmployeesByCount(int limit, int offset)
    {
    	List<Employees> list = new ArrayList<Employees>();  
        
        try{  
            Connection con = EmployeeDAO.getConnection();  
            
            PreparedStatement ps = con.prepareStatement("select * from employee limit ?, ?");  
            ps.setInt(1, offset);
            ps.setInt(2, limit);
            
            ResultSet rs = ps.executeQuery();  
            while(rs.next())
            {  
            	Employees emp = new Employees();  
                emp.setEmp_id(rs.getInt(1));  
            	emp.setFirstname(rs.getString(2));
            	emp.setMiddlename(rs.getString(3));
            	emp.setLastname(rs.getString(4));
            	emp.setAge(rs.getInt(5));
            	emp.setGender(rs.getString(6));
            	emp.setDob(rs.getString(7));
            	emp.setEmail(rs.getString(8));
            	emp.setMobile_no(rs.getString(9));
            	emp.setDept_id(rs.getInt(10));
            	emp.setJoining_date(rs.getString(11));
            	emp.setLeaving_date(rs.getString(12));
            	emp.setSalary(rs.getInt(13));
                
                list.add(emp);  
            }  
            
            con.close();  
        }
        catch(Exception e){
        	e.printStackTrace();
        }  
          
        return list;
    }
	public static List<Employees> getEmployeeByDepartment(int id)
	{  
		List<Employees> list = new ArrayList<Employees>();
          
        try{  
            Connection con = EmployeeDAO.getConnection(); 
            
            PreparedStatement ps = con.prepareStatement("select * from employee where dept_id=?");  
            ps.setInt(1, id); 
            
            ResultSet rs = ps.executeQuery();  
            while(rs.next())
            {  
            	Employees emp = new Employees();  
                emp.setEmp_id(rs.getInt(1));  
            	emp.setFirstname(rs.getString(2));
            	emp.setMiddlename(rs.getString(3));
            	emp.setLastname(rs.getString(4));
            	emp.setAge(rs.getInt(5));
            	emp.setGender(rs.getString(6));
            	emp.setDob(rs.getString(7));
            	emp.setEmail(rs.getString(8));
            	emp.setMobile_no(rs.getString(9));
            	emp.setDept_id(rs.getInt(10));
            	emp.setJoining_date(rs.getString(11));
            	emp.setLeaving_date(rs.getString(12));
            	emp.setSalary(rs.getInt(13));
                
                list.add(emp);  
            }  
            
            con.close();  
        }
        catch(Exception e){
        	e.printStackTrace();
        }  
          
        return list;
    }
	public static void updateDepartment(Employees emp)
	{    
        try
        {  
            Connection con = EmployeeDAO.getConnection();  
            
            PreparedStatement ps = con.prepareStatement("update employee set dept_id=? where emp_id=?");  
            ps.setInt(1, emp.getDept_id());
            ps.setInt(2, emp.getEmp_id());  
            ps.executeUpdate();  
              
            con.close();  
        }
        catch(Exception ex){
        	ex.printStackTrace();
        }  
           
    } 
    
}
