<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show WaterMarkPhoto</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<style type="text/css" rel="stylesheet">
img {
	margin-left: 500px;
}

a { 
    font-size:30px;
    color:red;
	margin-left: 500px;
}
</style>
</head>
<body>
	<img src="images/${sessionScope.photo.photoName}_water.jpg"></img><br/>
	<a href="userIndex.jsp">点击此处返回用户首页</a>
</body>
</html>