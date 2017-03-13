<%--
  Created by IntelliJ IDEA.
  User: Piotrek
  Date: 2017-03-13
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("uname");
    String password = request.getParameter("pass");
    session.setAttribute("username", name);
    session.setAttribute("password", password);
%>
<html>
<head>
    <title>hello</title>
</head>
<body>
    <p>Hello worlds</p>
    <a href="next.jsp">Continue</a>
</body>
</html>
