<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>

<title>生成带参数的二维码</title>
</head>
<body>
<button class="btn btn-default" type="button" onclick="Create();">Button</button>
<div>
<a href="https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGv7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycEhaZk1IYlhjUWgxQlJGck5yMVYAAgR13HNbAwQAjScA">showqrcode</a>
</div>
<div id="msgdiv" >
{"ticket":"gQGo7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUGt4Rk16YlhjUWgxRGl2cmhyMXQAAgTS0nNbAwQAjScA","expire_seconds":2592000,"url":"http://weixin.qq.com/q/02PkxFMzbXcQh1Divrhr1t"}
</div>
<div id="msgdiv" >
{"ticket":"gQGv7zwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycEhaZk1IYlhjUWgxQlJGck5yMVYAAgR13HNbAwQAjScA","expire_seconds":2592000,"url":"http://weixin.qq.com/q/02pHZfMHbXcQh1BRFrNr1V"}</div>
<script type="text/javascript">
function Create2()
{
	var json={"expire_seconds": 2592000, "action_name": "QR_SCENE", "action_info": {"scene": {"scene_str": "test001"}}};
	var url="https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=12_kEcfUU1N60ZL-1ruFCFEyI2fxsnSYi6NxurBajHkuhesUvyp8IUA_-lolLt22L9XSYe6pK_FChbaZnb0RzKC1owTCJHqHXouapWlvlos38kqw3JikBPOTpQZ0dUWnUrrtXtv4LdNVK5V9f0sUEIdAHACMQ";
	var SendUrl=encodeURIComponent((url))
	
	  $.post('http://www.17ecity.cc/WX/WeiXin/WeiXinAPI?url='+SendUrl+'&d=' + new Date().getTime(),JSON.stringify(json),function(result){
		    $("#msgdiv").html(result);
		  });
	
}

function Create()
{
	var json={"expire_seconds": 2592000, "action_name": "QR_SCENE", "action_info": {"scene": {"scene_id": 10001}}};
	var url="https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=12_kEcfUU1N60ZL-1ruFCFEyI2fxsnSYi6NxurBajHkuhesUvyp8IUA_-lolLt22L9XSYe6pK_FChbaZnb0RzKC1owTCJHqHXouapWlvlos38kqw3JikBPOTpQZ0dUWnUrrtXtv4LdNVK5V9f0sUEIdAHACMQ";
	var SendUrl=encodeURIComponent((url))
	
	  $.post('http://www.17ecity.cc/WX/WeiXin/WeiXinAPI?url='+SendUrl+'&d=' + new Date().getTime(),JSON.stringify(json),function(result){
		    $("#msgdiv").html(result);
		  });
	
}

</script>

</body>
</html>