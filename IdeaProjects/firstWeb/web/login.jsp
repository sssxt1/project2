<%--
  Created by IntelliJ IDEA.
  User: pupil
  Date: 2015/11/21
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第一次尝试</title>
</head>
<body>
<h1 align="center">登陆页面</h1>
<form action="response.jsp" name="login" method="get">
    <p align="center">用户名：<input type="text" name="username" /></p>
    <p align="center">密码：&nbsp;<input type="password" name="password"/></p>
    <p align="center"><input type="submit" value="登陆"/> </p>
    <table align="center">
        <tr>
            <td>
           <input type="checkbox" name="类型" checked="true"value="movie"/>电影
           <input type="checkbox" name="类型" checked="true"value="music"/>音乐
           <input type="checkbox" name="类型" checked="true"value="sport"/>运动
           <input type="checkbox" name="类型" checked="true"value="tv"/>电视
            </td>
    </tr>
    </table>
</form>
<a href="request.jsp?username=李四&类型=movie,music">测试</a>
</body>
</html>
