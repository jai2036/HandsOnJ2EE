<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
 <%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql"%> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<div style="height:100px;width:100%;background-color: grey">
<center><h1>CEBS</h1><h5>Using JSTL</h5><br></center> 
</div>
</head>
<body>
<sql:setDataSource var="mydatabase" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/cebsdata"
     user="root" password=""/>

<sql:query dataSource="${mydatabase}" var="result">
SELECT * from jstl;
</sql:query>

<table border="1" width="100%">
<tr>
   <th>Emp ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>City</th>
   <th>Branch</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<c:url var="ed" value="edit.jsp">
<c:param name="id" value="${row.eid}"></c:param>
</c:url>
   <td><a href="${ed}"><c:out value="${row.eid}"/></a></td>
   <td><c:out value="${row.fanme}"/></td>
   <td><c:out value="${row.lname}"/></td>
   <td><c:out value="${row.city}"/></td>
   <td><c:out value="${row.branch}"/></td>
</tr>
</c:forEach>
</table>
 <a href="registration.jsp" >Add User</a>
 
</body>
</html>