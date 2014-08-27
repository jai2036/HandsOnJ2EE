<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
            response.setContentType("text/xml");        
 
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/cebsdata","root", "");
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery("select fanme from jstl");
 
                    out.println("<emp>");
                    while(rs.next())
                    {                            
                        out.println("<empname>"+rs.getString(1)+"</empname>");
 
                    }
                    out.println("</emp>");
 
rs.close();
st.close();
con.close();

%>
