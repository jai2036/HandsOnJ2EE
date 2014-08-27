<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
response.setContentType("text/xml");
String sn=request.getParameter("param");
int i=Integer.parseInt(sn);

Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cebsdata","root", "");
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select * from jstl where eid="+i);
if(rs.next())
{
out.println("<emp>");
out.println("<empno>"+rs.getInt(1)+"</empno>");
out.println("<empfname>"+rs.getString(2)+"</empfname>");
out.println("<emplname>"+rs.getString(3)+"</emplname>");
out.println("<empaddr>"+rs.getString(4)+"</empaddr>");
out.println("<empbranch>"+rs.getString(5)+"</empbranch>");
out.println("</emp>");
}

rs.close();
st.close();
con.close();

%>
