<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="mydatabase" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/cebsdata"
     user="root" password=""/>
     
<sql:query dataSource="${mydatabase}" var="result">
SELECT * from jstl where eid=?;
<sql:param value="${param.id}"/>
</sql:query>

<form action="editsql.jsp">
<table>
<tr>
   <th>Emp ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>City</th>
   <th>Branch</th>
</tr>

<c:forEach var="row" items="${result.rows}">
<tr> 
   <td><c:out value="${param.id}"/></td>
   <td><input type="text" name="fname" value="<c:out value="${row.fanme}"/>"></td>
   <td><input type="text" name="lname" value="<c:out value="${row.lname}"/>"></td>
   <td><input type="text" name="city" value="<c:out value="${row.city}"/>"></td>
   <td><input type="text" name="branch" value="<c:out value="${row.branch}"/>"></td>
 </tr>
 </c:forEach>
</table>
<input type="hidden" value="${param.id}" name="eid"/>
<input type="submit" value="Update">
 </form>
     
</body>
</html>