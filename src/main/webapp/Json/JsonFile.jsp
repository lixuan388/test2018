
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
	org.json.JSONObject json=new  org.json.JSONObject("{'text':'系统','href':'0','nodes':[{'text':'用户权限','href':'1010'},{'text':'默认权限','href':'1011'}]}"); 


com.java.ecity.json.text.JSONObject json22=new  com.java.ecity.json.text.JSONObject("{'text':'系统','href':'0','nodes':[{'text':'用户权限','href':'1010'},{'text':'默认权限','href':'1011'}]}"); 

//com.java.ecity.json.text.JSONObject json2=json.getJSONObject("b");
com.java.ecity.json.text.JSONArray jsonA=json22.getJSONArray("nodes");
//
//<div>jsonA.getString:<%=jsonA.getJSONObject(0).getString("text") </div>

%>

<div>json.getString:<%=json.getString("text") %></div>
<div>json22.getString:<%=json22.getString("text") %></div>
<div>jsonA(0).getString:<%=jsonA.getJSONObject(0).getString("text") %></div>
<div>jsonA(1).getString:<%=jsonA.getJSONObject(1).getString("text") %></div>
</body>
</html>