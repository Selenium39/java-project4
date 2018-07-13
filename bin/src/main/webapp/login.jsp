<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%><!--注意要老版的jsp要加上isELIgnored ="false"  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<!-- 引入jqeury和js -->
<script src="static/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="static/bootstrap.min.css">
</style>
</head>
<body>
	<div id="login">
		<form class="form-horizontal" method="post" action="login">
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">用户名：</label>
				<div class="col-sm-4">
					<input type="input" class="form-control" name="name" id="name"
						placeholder="用户名:">
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-4">
					<input type="input" class="form-control" name="password" id="password"
						placeholder="密码:">
				</div>
			</div>
			<div class="form-group">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button id="btn1" type="submit" class="btn btn-success">登录</button>
						<button id="btn2" class="btn btn-warning">找回密码</button>
					</div>
				</div>
			</div>
		</form>

	</div>
</body>
</html>