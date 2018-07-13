<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userIndex</title>
<link style="text/css" rel="stylesheet" href="css/userIndex.css"></link>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<!-- 引入jqeury和js -->
<script src="static/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/userIndex.js"></script>
</head>
<body>
<div id="user">
<h1>欢迎你 ${user.name}</h1>
</div>
	<div id="images">
		<image id="image" src="images/1044411922.jpg" width="1000px"
			height="400px"></image>
	</div>
	<div id="main">
		<button class="btn btn-success" id="btn1">上传图片</button>
		<button class="btn btn-warning" id="btn2">查看图片</button>
	</div>
</body>
</html>