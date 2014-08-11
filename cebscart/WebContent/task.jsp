<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="second.jsp" method="get">
<table>
    <tr>
   <th colspan="2">Task List </th>
   
   </tr>
    <tr>
      <td>
       Priority:   
      </td>
      <td>
      <input type ="text" name="pri">
      </td>
    </tr>
    
     <tr>
      <td>
         Description:   
      </td>
      <td>
      <input type ="text" name="desc">
      </td>
    </tr>
    <tr>
   <td>&nbsp;</td>
   <td><input type="submit" value="Add"></td>
 </tr>
</table>
</form>
</body>
</html>