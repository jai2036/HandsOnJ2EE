<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.html"></jsp:include><br>
<h5 style="color:green">login As: <s:property value="#parameters.type"/></h5><br>
<h2 style="color:green">Welcome, <s:property value="#parameters.uname"/></h2>
<br>
<%
HttpSession session2=request.getSession(false);
%>
<%=session2.getAttribute("utype")%>
<% if(session2.getAttribute("utype")=="Admin"){%> 
<div style="table-layout: auto;"> 
<a href="show">SHOW CUSTOMER</a>
<a href="prod">SHOW PRODUCTS</a>
<a href="profile.jsp">PROFILE</a>
</div>
<% } else { %>
    <div style="table-layout: auto;">
	<a href="addtocart">ADD PRODUCT TO CART</a>
	<a href="profile.jsp">PROFILE</a>
	</div>
	<%}%>

	<jsp:include page="link.html"></jsp:include>

</body>
</html>