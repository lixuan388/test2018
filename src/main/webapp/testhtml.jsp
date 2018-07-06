<%@page import="com.java.sql.table.MySQLTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
MySQLTable table =new MySQLTable("select * from aus_users ");
try
{
	  table.Open();	
	  while (table.next())
	  {
		  %>
		  <div><%=table.getString("aus_username") %></div>
		  <%
	  }
}
finally
{
	  table.Close();
}

%>

</body>
</html>