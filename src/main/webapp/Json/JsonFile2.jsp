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
com.java.ecity.json.text.JSONObject json = new  com.java.ecity.json.text.JSONObject("{'integer':1,'real':1.000001,'String':'String','Date':'2018-07-01 02:02:00','boolean':true}"); 
%>

<div>integer:<%=json.getString("integer") %></div>
<div>real:<%=json.getString("real") %></div>
<div>String:<%=json.getString("String") %></div>
<div>Date:<%=json.getString("Date") %></div>
<div>boolean:<%=json.getString("boolean") %></div>
</body>
</html>