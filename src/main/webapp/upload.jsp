<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload the image</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--bootstrap  -->
<link href="static/bootstrap.min.css" rel="stylesheet">
<!-- 引入jqeury和js -->
<script src="static/jquery-3.2.1.min.js"></script>


<link style="text/css" rel="stylesheet" href="css/upload.css"></link>
</head>
<body>
	<div id="upload">
		<h1>上传照片</h1>
	</div>
	<div id="main">
		<form class="form-horizontal" method="post" action="upload"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="photoName" class="col-sm-2 control-label">相片名称:</label>
				<div class="col-sm-4">
					<input type="input" class="form-control" placeholder="photoName"
						name="photoName" id="photoName">
				</div>
			</div>
			<div class="form-group">
				<label for="photoType" class="col-sm-2 control-label">相片类型:</label>
				<div class="col-sm-4">
					<select class="form-control" name="photoType">
						<option value="SUKURA">SUKURA</option>
						<option value="CUTE">CUTE</option>
						<option value="CARTOON">CARTOON</option>
						<option value="BEAUTIFUL">BEAUTIFUL</option>
						<option value="Others">OTHERS</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="photo" class="col-sm-2 control-label">上传照片:</label>
				<div class="col-sm-4">
					<input type="file" name="photo">
				</div>
			</div>
			<div id="buttons">
				<button class="btn btn-success" id="btn1" type="submit">上传</button>
				<button class="btn btn-danger" id="btn2" type="reset">重置</button>
				<button class="btn btn-warning" id="btn3">返回</button>
			</div>
		</form>
	</div>
</body>
</html>