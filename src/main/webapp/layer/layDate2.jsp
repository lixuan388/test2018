<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>使用 layDate 独立版</title>
</head>
<body>
 
<input type="text" class="layui-input" id="test1">
 
		<script src="<%=request.getContextPath() %>/layer/laydate/laydate.js"></script>
<script>
//执行一个laydate实例
laydate.render({
  elem: '#test1' //指定元素
});
</script>
</body>
</html>