<%--
  Created by IntelliJ IDEA.
  User: Piotrek
  Date: 2017-03-14
  Time: 00:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>Hello <%= session.getAttribute("username")%></p>
    <p>This is your new password: <%= session.getAttribute("password")%></p>
</body>
</html>
