<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>action jsp page</title>
</head>
<body>
 
<sql:setDataSource var="database" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/cebsdata"
     user="root"  password=""/>


<sql:update dataSource="${database}" var="result" sql="insert into jstl(eid,fanme,lname,city,branch) values(?,?,?,?,?)">
<sql:param value="${param.eid}"/>
<sql:param value="${param.fname}"/>
<sql:param value="${param.lname }"/>
<sql:param value="${param.city }"/>
<sql:param value="${param.branch }"/>
</sql:update>
 
<c:redirect url="dashboard.jsp"/>
</body>
</html>