package cebspackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cebs
 */
@WebServlet("/cebs")
public class cebs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cebs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		HttpSession session=request.getSession();
		//if(session.getAttribute("uname")!=null && session.getAttribute("uname")!="")
		
		if(session!=null){
		ServletContext context=this.getServletContext();
		RequestDispatcher rd=context.getRequestDispatcher("/header.html");
		rd.include(request, response);
		
		out.println("Welcome"+"&nbsp;"+session.getAttribute("uname"));
		
		out.println("<a href=/cebs/logout>Logout</a>");
		
		rd=context.getRequestDispatcher("/footer.html");
		rd.include(request, response);
		}
		else
		{
			out.println("<h3 style=color:red>Please login first</h3>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
