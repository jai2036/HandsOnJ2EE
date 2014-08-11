package cebspackage;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginfetch
 */
@WebServlet("/loginfetch")
public class loginfetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginfetch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		
		String e=request.getParameter("email");
		String p=request.getParameter("password");
		try{
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/cebsdata","root","");
		String query="select * from user where email=? and password=?";
		PreparedStatement pst=c.prepareStatement(query);
		///System.out.print("run this");
		pst.setString(1, e);
		pst.setString(2, p);
		ResultSet rs=pst.executeQuery();
		 if(rs.next())
		 {
			 System.out.print("run this");
			 session.setAttribute("uname", rs.getString(1));
			 response.sendRedirect("http://localhost:5347/cebs/cebs");
		 }
		 else
		 {
			 System.out.print("invalid username or password");
		 }
		}
		catch(Exception ex)
		{
			System.out.print("your error is here :"+ex);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
