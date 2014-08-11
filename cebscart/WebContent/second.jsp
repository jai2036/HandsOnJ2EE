<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:include page="task.jsp" /> 

<jsp:useBean id="obj" class="beancebs.store"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
 Set<Object> s=(Set)session.getAttribute("var");
 s.add(obj);
 Iterator<Object> itr=s.iterator();
%>
<form action="delete.jsp">
<table cellspacing='2' border='3px'>
<%
while(itr.hasNext())
{
	beancebs.store st=(beancebs.store)itr.next(); 
	%>
	 <tr>
	 <td><input type="checkbox" name="checkbox" value=""><%= st.getPri() %></td>
	<td><%= st.getDesc() %></td>
	</tr>
   
<%
}

%>

</table>
<input type ="submit" value="Delete"/>
</form>
</body>
</html>