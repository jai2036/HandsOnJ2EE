<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

String sn=request.getParameter("ver");
if(sn==null || sn==""){
	out.println("<font color=red>");
	out.println("Please enter a value");
	out.println("</font>");
}
else{
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/cebsdata","root","");
Statement st=con.createStatement();
//ResultSet rs = st.executeQuery("select * from emp where empno="+sn);
ResultSet rs = st.executeQuery("select * from jstl where fanme='"+sn+"'"); // this is for name
if(rs.next())
{
 out.println("<font color=red>");
 out.println("Name already taken");
 out.println("</font>");

 
}
else {

out.println("<font color=green>");
out.println("Available");
out.println("</font>");

       }

rs.close();
st.close();
con.close();
}
%>