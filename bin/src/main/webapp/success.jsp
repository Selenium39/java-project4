<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success</title>
<link  rel="stylesheet" style="text/css" href="css/success.css" ></link>
</head>
<body>
<c:choose>
<c:when test="${sessionScope.url=='/register'}">
<h1 class="success"><a href="index.jsp">注册成功,5秒后自动跳转到首页,如未跳转,点击此处跳转</a></h1>
<%response.setHeader("refresh","5,url=index.jsp"); %>
</c:when>
<c:when test="${sessionScope.url=='/login'}">
<h1 class="success"><a href="userIndex.jsp">登录成功,5秒后自动跳转到用户首页,如未跳转,点击此处跳转</a></h1>
<%response.setHeader("refresh","5,url=userIndex.jsp"); %>
</c:when>
</c:choose>
</body>
</html>