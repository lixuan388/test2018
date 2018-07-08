
<%@page import="com.java.web.PageContextClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<body>
<h2>Hello World!</h2>

<div><a href="JQueryTmpl/index.jsp">jquery tmpl</a></div>


<%
	PageContextClass testPage=new PageContextClass(pageContext);
%>

<%
	for (int i =0;i<10;i++)
	{
		%>
			<div>123123123123</div>
			<div style="padding: 20px"><% testPage.print(); %></div>
		<%
	}
%>
</body>
</html>
