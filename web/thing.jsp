<%--
  Created by IntelliJ IDEA.
  User: pupil
  Date: 2015/12/13
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="service.service" language="java" %>
<%
    service ser=new service();
    ser.setObj(request.getParameter("name"));
%>
<html>
<head>
    <title><%=ser.getThing()%></title>
    <link rel="stylesheet" href="/css/thing.css" type="text/css">
    <script type="text/javascript" src="/js/socks.js"></script>
</head>
<body>
<div class="top">
    <div>
        <p id="back">退出</p>
        <a href=""><img src="/images/homePage/top/car.png" alt="购物车" class="car"></a>
        <a href="" class="myCar">我的购物车</a>
        <a href="homePage.jsp" class="home" style="margin-right: 20px;cursor: pointer;text-decoration: none;">首页</a>
        <p class="welcome">欢迎来到民大市场！</p>
    </div>
</div>
<div class="b" style="width: 1024px;margin-left: auto;margin-right: auto;">
    <div class="return" style="float: left;color:#989898;font-family: 微软雅黑;font-size:18px;margin-top: 10px;cursor: pointer; ">返回</div>
    <p id="totalMoney"style="float: right;font-family: 微软雅黑;font-size: 25px;color: rgb(196,0,0);margin-top:10px;">10000.00</p>
    <p style="float: right;font-family: 微软雅黑;font-size: 20px;margin-right: 10px;margin-top:10px; "><img src="" alt="">余额:</p>
</div>
<div class="search"style="clear: both;">
    <div class="left">
        <img src="/images/class/house.png" alt="房子">
        <p>bailiubin.cf</p>
    </div>
    <div class="center">
        <input type="text" id="search" value="">
    </div>
</div>
<div class="middle">
    <ul>
        <li>七匹狼</li>
        <li>花花公子</li>
        <li>优衣库</li>
        <li>耐克</li>
        <li>阿迪达斯</li>
        <li>浪莎</li>
        <li>宝娜斯</li>
        <li>优臣品</li>
    </ul>
    <div class="left">
        <img src="/images/homePage/middle/socks/blue.png" alt="">
        <p><%=ser.getThing()%></p>
    </div>
    <div class="right">
        <%=ser.getGoods().getContent()%>
    </div>
</div>
<div class="bottom">
    <div class="shadow">
        <img src="/images/homePage/bottom/bottom.png" alt="">
    </div>
    <div class="black">
        <p>Copyright 白刘斌 2015-11-28</p>
    </div>
</div>
</body>
</html>
