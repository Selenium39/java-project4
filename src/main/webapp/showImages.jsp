<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Images</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<!-- 引入jqeury和js -->
<script src="static/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/showImages.css">
</head>
<body>
	<div id="type">
		<h1>照片分类</h1>
	</div>
	<div id="nav">
		<ul class="nav nav-pills">
			<li role="presentation"><a
				href="showImages?imageType=BEAUTIFUL">BEAUTIFUL</a></li>
			<li role="presentation"><a href="showImages?imageType=SUKURA">SUKURA</a></li>
			<li role="presentation"><a href="showImages?imageType=CUTE">CUTE</a></li>
			<li role="presentation"><a href="showImages?imageType=CARTOON">CARTOON</a></li>
			<li role="presentation"><a href="showImages?imageType=OTHERS">OTHERS</a></li>
		</ul>
		<hr />
		<div>
			<c:forEach items="${sessionScope.photos }" var="photo">
				<a href="showImage?id=${photo.id}"><img
					src="images/${photo.photoName}.jpg"></img></a>
			</c:forEach>
		</div>
	</div>
</body>
</html>