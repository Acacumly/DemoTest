<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>���ֳ������</h2>
<form action="ldiom.jsp" method="post">
    ���ֳ�������:<input type="text" name="mes"/><br>
    <input type="submit" value="�ύ"/>
</form>
<%
    ArrayList a = (ArrayList)session.getAttribute("a");
    if (a==null){
        a=new ArrayList();
        session.setAttribute("a",a);
    }
    String chengyu =request.getParameter("mes");
    if (chengyu !=null){
        chengyu=new String(chengyu.getBytes("ISO-8859-1"));
        a.add(chengyu);
    }
%>
<%
    if(a.size()>1){
   String z=(String) a.get(a.size()-1);
   String f =(String) a.get(a.size()-2);
   if (z.toLowerCase().subSequence(0,1).equals(f.toLowerCase().subSequence(f.length()-1,f.length()))){
       for (int i=0;i<a.size();i++){
           out.println(a.get(i)+"--->");
       }
   }else {
       session.setAttribute("a",null);
       out.println("����ʧ��,�����¿�ʼ");}
    }else if (a.size()==1){
        for (int i=0;i<a.size();i++){
            out.println(a.get(i)+"--->");
        }
    }
%>
</body>
</html>
