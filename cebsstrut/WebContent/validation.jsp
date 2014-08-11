<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
<%
 HttpSession session2= request.getSession(false);
 if(session2.getAttribute("uname")!=null || session2.getAttribute("uname")!="")
 {%>
	 <%response.sendRedirect("loginsuccess.jsp"); %>
<%}else{%>
<div align="center">
<h3 style="color: red">Login Again!</h3>
<img src="C:\Users\jayanta.mohanty\Desktop\jayanta kumar mohanty\cebsstrut\WebContent\error.jpg">
</div>
<jsp:include page="link.html"></jsp:include>
<%} %>


</body>
</html>