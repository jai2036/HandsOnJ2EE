<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sto" class="beancebs.store"/>
<jsp:setProperty property="*" name="sto"/>
<jsp:include page="task.jsp"/>
<%
Set<Object> s=(Set)session.getAttribute("var");
s.add(sto);
			
String[] selected=request.getParameterValues("checkbox");
for(int i=0;i<selected.length; i++)
{ 
	Iterator itr=s.iterator();
	while(itr.hasNext())
	{
		
		beancebs.store st=(beancebs.store)itr.next();
		
		if(st.getPri()!=null && st.getPri().equals(selected[i]))
		{
			s.remove(st);
		}
		
		
	}
	
	
}
session.setAttribute("task",s);
%>
</body>

</html>