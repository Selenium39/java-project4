<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error</title>
<link rel="stylesheet" style="text/css" href="css/error.css"></link>
<%response.setHeader("refresh", "5,url='userIndex.jsp'"); %>
</head>
<body>
<c:choose>
<c:when test="${sessionScope.url=='/uploade'}">
<h1 class="error"><a href="userIndex.jsp">照片上传失败,５秒后跳转用户首页，如未跳转，点击此处跳转</a></h1>
</c:when>
<c:when test="${sessionScope.url=='/showImages'}">
<h1 class="error"><a href="userIndex.jsp">查看照片失败,５秒后跳转用户首页，如未跳转，点击此处跳转</a></h1>
</c:when>
<c:when test="${sessionScope.url=='/showImage'}">
<h1 class="error"><a href="userIndex.jsp">查看照片失败,５秒后跳转用户首页，如未跳转，点击此处跳转</a></h1>
</c:when>
<c:when test="${sessionScope.url=='/createWaterMark'}">
<h1 class="error"><a href="userIndex.jsp">照片添加水印失败,５秒后跳转用户首页，如未跳转，点击此处跳转</a></h1>
</c:when>
</c:choose>
</body>
</html>