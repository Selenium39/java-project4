<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Image</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<!-- 引入jqeury和js -->
<script src="static/jquery-3.2.1.min.js"></script>
<script src="js/showImage.js"></script>
<link rel="stylesheet" type="text/css" href="css/showImage.css"></link>
</head>
<body>
<div id="nav"><h1>照片信息</h1></div>
<div id="main">
照片名: ${photo.userPhotoName }<br/>
照片大小: ${photo.photoSize}<br/>
照片尺寸: ${photo.photoHeight}X${photo.photoWidth}<br/>
照片类型: ${photo.photoType}<br/>
上传时间: ${photo.photoTime}<br/>
上传用户: ${photo.userName}<br/>
<br/>
<image src="images/${photo.photoName}_small.jpg"></image>
</div>
<div id="buttons">
<button id="btn1" class="btn btn-success">返回</button>
<button id="btn2" class="btn btn-warning">为照片添加水印</button>
<button id="btn3" class="btn btn-danger">返回用户首页</button>
</div>
</body>
</html>