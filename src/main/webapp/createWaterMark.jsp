<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Water Mark</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<!-- 引入jqeury和js -->
<script src="static/jquery-3.2.1.min.js"></script>
<script>
$(function(){
	$("#btn1").click(function(){
		if($("#content").val()==null||$("#content").val()==""){
			alert("水印不能为空");
			return false;
		}
	});
});
</script>
<link rel="stylesheet" type="text/css" href="css/createWaterMark.css"></link>
</head>
<body>
	<div id="nav">
		<h1>为照片添加水印</h1>
	</div>
	<div id="main">
		<form method="post" action="createWaterMark">
			<div id="div1">
				水印内容: <input type="input" placeholder="content" name="content"
					id="content">
			</div>
           <div id="buttons">
           <button id="btn1" class="btn btn-success" type="commit">提交</button>
           <button id="btn2" class="btn btn-warning" type="reset">重置</button>
           <button id="btn3" class="btn btn-danger">返回</button>
           </div>
		</form>
	</div>
</body>
</html>