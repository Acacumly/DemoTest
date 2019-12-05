<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>网页访问数量</title>
</head>
<body>
<jsp:useBean id="counter" scope="application" class="beans.Counter"/>
  	这次访问的页面：counter.jsp!<br>  页面共被访问次数：
  	<jsp:getProperty name="counter" property="count"/>
</body>
</html>