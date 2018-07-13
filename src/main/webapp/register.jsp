<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <!--bootstrap  -->
    <link href="static/bootstrap.min.css" rel="stylesheet">
    <!-- 引入jqeury和js -->
    <script src="static/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/register.js"></script>

</head>
<body>
<form class="form-horizontal" method="post" action="register">
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">用户姓名:</label>
        <div class="col-sm-4">
            <input type="input" class="form-control" placeholder="name"
                   name="name" id="name">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">用户密码:</label>
        <div class="col-sm-4">
            <input type="input" class="form-control" placeholder="password"
                   name="password" id="password">
        </div>
    </div>
    <div class="form-group">
        <label for="password1" class="col-sm-2 control-label">确认密码:</label>
        <div class="col-sm-4">
            <input type="input" class="form-control" placeholder="password again"
                   name="password1" id="password1">
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-2 control-label">用户邮箱:</label>
        <div class="col-sm-4">
            <input type="input" class="form-control" placeholder="email"
                   name="email" id="email">
        </div>
    </div>
    <div class="form-group">
        <label for="phone" class="col-sm-2 control-label">用户手机号:</label>
        <div class="col-sm-4">
            <input type="input" class="form-control" placeholder="phone"
                   name="phone" id="phone">
        </div>
    </div>
    <div class="form-group">
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success" id="btn1">注册</button>
                <button type="reset" class="btn btn-warning" id="btn2">重置</button>
            </div>
        </div>
    </div>
</form>
</body>
</html>