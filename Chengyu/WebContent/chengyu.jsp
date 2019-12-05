<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成语接龙首页</title>
</head>
<body>
四字成语接龙<br>
你输入的成语为：
<%
    String s = (String)application.getAttribute("message");
    if(s!=null){
        out.println(s);
    }else{
        out.println("还没有成语，请输入：<br>");
    }
%>
<form action="jielong.jsp" method="post">
    <br>
    输入成语：<input type="text" name="mess"/><br>
    <input type="submit" value="提交"/>
</form>
</body>
</html>