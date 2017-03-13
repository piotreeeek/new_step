<%@ page import="java.util.Properties" %>
<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: Piotrek
  Date: 2017-03-10
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    System.out.println("Evaluating date now");
    java.util.Date date = new java.util.Date();
%>
<html>
    <head>
        <title>$Title$</title>
    </head>
    <body>
        <p>
            <%
                //this generate html output
                out.println( String.valueOf(date));
                out.println("<br>Your machine host adrres is: ");
                out.println(request.getRemoteHost());
            %>
        </p>
        <table>
            <%
                Properties p = System.getProperties();
                Enumeration keys = p.keys();
                while (keys.hasMoreElements()){
                    String key = (String)keys.nextElement();
                    String value = (String)p.get(key);
                    out.println("<tr><td>Key = " + key + "</td><td> Value = " + value + "</td></tr>");
                }
            %>
        </table>

        <form action="hello.jsp">
            <label>Enter user name: </label>
            <input type="text" name="uname">
            <label>Enter password: </label>
            <input type="password" name="pass">
            <input type="submit" value="submit detail">
        </form>

    </body>
</html>
