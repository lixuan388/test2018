<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/layer/layer/layer.js"></script>
  <title>弹层组件文档 - layui.layer</title>
  <style>
  	button{
  		display: block;
  	}
  </style>
</head>
<body>
 
<input type="text" class="layui-input" id="test1">
 
 
<button onclick="layer.msg('hello');">layer.msg('hello');</button>
<button onclick="layer.alert('酷毙了', {icon: 1});;">layer.alert('酷毙了', {icon: 1});</button>
<button onclick="layer.load(1);">layer.load(1); //风格1的加载</button>
<script>
layer.msg('hello'); 
</script>
</body>
</html>