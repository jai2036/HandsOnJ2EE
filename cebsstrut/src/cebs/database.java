package cebs;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


public class database {
    
	
	static HttpServletRequest request=ServletActionContext.getRequest();  
	public static boolean validate(String uname,String pwd,String type ){  
    boolean status=false;  
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/cebsdata","root", "");
	String query="select * from strut where uname=? and pwd=? and type=?";
    PreparedStatement pst=c.prepareStatement(query);
    pst.setString(1,uname);
    pst.setString(2,pwd);
    pst.setString(3,type);
    
    ResultSet rs=pst.executeQuery();  
    status=rs.next(); 
   
	HttpSession session=request.getSession(true);
	session.setAttribute("name", rs.getString(1));
	session.setAttribute("utype", rs.getString(3));
	}
	catch(Exception e)
	{
		System.out.print("error"+e);
	}

	return status;
	}
	}
