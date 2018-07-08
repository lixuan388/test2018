
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>


equimentId:517291
name:hc_holiday
password:sd3678590
	
	
<script type="text/javascript">

function post()
{

	//equimentId 设备型号 String 供应商唯一标识 否
	//name 用户名 String 授权给我们的账号名称 否
	//password 密码 String 授权给我们的账号密码 否
	

//orderId
//startDate
//endDate
//pageNo
//pageSize
//status
	
	
//http://hcjq.ziwoyou.net/
//登陆账号：hc_holiday
//密码：sd3678590


	
	var Data={'equimentId':'517291','name':'hc_holiday','password':'sd3678590','startDate':'2018-07-01','endDate':'2018-08-01','pageNo':'1','pageSize':'100'};

	
	
	$.post("http://hcjq.ziwoyou.net/api/zowoyoo/queryListOrder.jsp",JSON.stringify(Data),function(data){
		console.log(data);
	},"json");
	
}
</script>

</body>
</html>