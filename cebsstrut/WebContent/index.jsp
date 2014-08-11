<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.html"/>
<s:form action="Myaction">
<s:select label="Select user type:" name="type" list="{'Admin','User'}"/>
<s:textfield name="uname" label="Enter user name"/>
<s:password name="pwd" label="Enter password"/>
<s:submit value="Login"/>
</s:form>
</body>
</html>