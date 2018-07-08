<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta Access-Control-Allow-Origin="*">
<title>jquery-tmpl unit tests</title>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="jquery.tmpl.js"></script>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<style>
span {
	display: inline-block;
	/*float:left;*/
	word-wrap: break-word;
	width: 150px;
	/*height:50px;*/
	background-color: silver;
}

div+div {
	margin-top: 5px;
}

div {
	background-color: #e7e7e7;
}
</style>
</head>
<body>
	<a class="btn btn-default" href="javascript:void(0);"
		onclick="ProductInfoGet()" role="button">新增记录</a>

	<div class="DataHead" style="clear: both;"></div>

	<div class="DataTable"
		style="width: 100%; clear: both; height: 200px; overflow: auto;">

	</div>




	<div class="DataHead2" style="clear: both;"></div>
	<div class="DataTable2"
		style="width: 100%; clear: both; height: 200px; overflow: auto;">

	</div>


	<script id="DataTableTemplate2" type="text/html">
    <span>${MsgTest}</span>
    <span>${MsgID}</span>
    {{each(i,d) Data}}
      <div style="width:100%;clear: both;">
        <span>${i}</span>
        <span>${aus_id}</span>
        <span>${aus_username}</span>
        <span>{%= aus_username%}</span>
        <span>${d.aus_password}</span>
        <span>{%= d.aus_status%}</span>
        <span>${ProductTypeJson[aus_status]}</span>
        <span>{{if (aus_status=='E') }}修改{{else}}新增{{/if}}</span>
        <span>{%if (aus_status=='E') %}修改{%else%}新增{%/if%}</span>
        <span>{%= aus_id%}</span>

    </div>
    {{/each}}
  </script>

  
	<script id="DataTableTemplate" type="text/html">
    <div style="width:100%;clear: both;">
        <span>${aus_id}</span>
        <span>${aus_username}</span>
        <span>{%= aus_username%}</span>
        <span>${aus_password}</span>
        <span>${aus_status}</span>
        <span>${ProductTypeJson[aus_status]}</span>
        <span>{{if (aus_status=='E') }}修改{{else}}新增{{/if}}</span>
        <span>{%= aus_id%}</span>
    </div>
  </script>


	<script type="text/javascript">

var ProductTypeJson={"E":"签证","I":"保险","3":"WIFI","4":"电话卡"}

var data={"MsgTest":"Succees！","Data":[{"aus_id":"60","aus_username":"A管理员","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011826","aus_username":"A测试01","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011830","aus_username":"A测试02","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011831","aus_username":"A测试03","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011832","aus_username":"A测试04","aus_password":"40BD0015","aus_status":"E"},{"aus_id":"10011835","aus_username":"A测试计调","aus_password":"40BD0015","aus_status":"E"},{"aus_id":"10011836","aus_username":"A测试财务","aus_password":"40BD0015","aus_status":"E"},{"aus_id":"10011837","aus_username":"测试销售","aus_password":"40BD0015","aus_status":"E"},{"aus_id":"10011838","aus_username":"A徐伟毅","aus_password":"40BD0015","aus_status":"E"},{"aus_id":"10011839","aus_username":"A吴兴华","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011840","aus_username":"A龙毅君","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011841","aus_username":"A吴嘉逊","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011842","aus_username":"A何敏娜","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011843","aus_username":"A蔡凯恩","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011844","aus_username":"A汪健聪","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011845","aus_username":"A卢隽升","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011846","aus_username":"A李永泉","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011847","aus_username":"A蔡伟嘉","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011848","aus_username":"A李玉红","aus_password":"40BD0015","aus_status":"I"},{"aus_id":"10011849","aus_username":"A林秋","aus_password":"40BD0015","aus_status":"I"}],"MsgID":"1"}; 
 
 
function ProductInfoGet()
{
   //$.ajax({
   //     url: '/test/testServlet.json?d=' + new Date().getTime(),
   //     type: 'get',
   //     dataType: 'Json',
   //     success: function (data) {
   //       console.log(data);
          $('.DataTable').html('');
            //console.log(data.Data[0]);
          $("#DataTableTemplate").tmpl(data.Data).appendTo('.DataTable');  
          $("#DataTableTemplate2").tmpl(data).appendTo('.DataTable2');  
   //     }
   //   })
}
 $(function(){
     $(".DataHead").html($("#DataTableTemplate").html());
     $(".DataHead2").html($("#DataTableTemplate2").html());
   ProductInfoGet();
 });
 
 

</script>
</body>
</html>