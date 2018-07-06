
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
	//org.json.JSONObject json=new  com.java.test.JSONObject("{'a':'aaa','b':{'bb':'bb'}}"); 

com.java.ecity.json.JSONObject json=new  com.java.ecity.json.JSONObject("{'a':'aaa','b':{'bb':'bb'}}"); 

com.java.ecity.json.JSONObject json2=json.getJSONObject("b");
%>
<div>json.getString:<%=json.getString("a") %></div>
<div>json2.getString:<%=json2.getString("bb") %></div>
</body>
</html>