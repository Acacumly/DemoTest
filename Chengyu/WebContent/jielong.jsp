<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jielong.jsp</title>
</head>
<body>
<%!
    String message = "";
    ServletContext application;
    synchronized void sendmessage(String s){
        application= getServletContext();
        message = message+s+"--->";
        application.setAttribute("message",message);
    }
%>
<%
    request.setCharacterEncoding("UTF-8");
    String content = request.getParameter("mess");
    sendmessage(content);
    out.println("你的成语"+content+"已经提交");
    response.setHeader("refresh","1;chengyu.jsp");
%>
 
</body>
</html>