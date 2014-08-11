package cebspackage;

import java.io.IOException;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class regfetch
 */
@WebServlet("/regfetch")
public class regfetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regfetch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fn=request.getParameter("fname");
		String ln=request.getParameter("lname");
		String e=request.getParameter("email");
		String p=request.getParameter("password");
		try{
			
				Class.forName("com.mysql.jdbc.Driver");
				Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/cebsdata","root", "");
				String query="insert into user values(?,?,?,?)";
			    PreparedStatement pst=c.prepareStatement(query);
			    pst.setString(1, fn);
			    pst.setString(2, ln);
			    pst.setString(3, e);
			    pst.setString(4, p);

			    pst.execute();

		}
		catch(Exception ex)
		{
			System.out.print("Error are "+ex);
		}
		response.sendRedirect("http://localhost:5347/cebs/login.html");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
