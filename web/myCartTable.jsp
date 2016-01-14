<%--
  Created by IntelliJ IDEA.
  User: pupil
  Date: 2015/12/18
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="service.service" %>
<%
    service ser=new service();
//    session.setAttribute("obj",request.getParameter("obj"));
//    session.setAttribute("id",Integer.parseInt(request.getParameter("id")));
//    ser.setObj((String)session.getAttribute("obj"));//这里记得类型转换，不然会报错；
//    ser.setId((int)session.getAttribute("id"));//这里记得类型转换，不然会报错；

    ser.setName(request.getParameter("name"));
    ser.setNumber(Integer.parseInt(request.getParameter("number")));
    ser.setSrc(request.getParameter("src"));
    ser.setPrice(Integer.parseInt(request.getParameter("price")));
%>
<html>
<head>
    <title>我的购物车</title>
    <link rel="stylesheet" type="text/css" href="/css/myCartTable.css">
    <script type="text/javascript" src="/js/myCartTable.js"></script>
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
<div class="middle"style="clear: both;">
    <div class="title1">
        <div class="left">
            <span class="number">账号:</span>
            <span class="value">11111</span>
        </div>
        <div class="right">
            <span>已购买</span>
            <span>待收货</span>
            <span>待评价</span>
        </div>
    </div>
    <div class="title2">
        <p class="goodsName">物品名称</p>
        <p class="action">操作</p>
        <p class="totalPrice">金额</p>
        <p class="goodsAccount">数量</p>
        <p class="perPriceName">单价</p>
    </div>
    <%=ser.getC()%>
</div>
<div class="purchase">
    <span class="buy"><p>结算</p></span>
    <span class="totalPrice"></span>
    <span class="totalName">总价:</span>
</div>
<div class="bottom">
    <div class="shadow">
        <img src="/images/homePage/bottom/bottom.png" alt="">
    </div>
    <div class="black">
        <p>Copyright 白刘斌 2015-11-28</p>
    </div>
</div>


<div id="bg" class="hide"></div>
<div id="content" class="hide">
    <p style="margin-top: 95px;"class="purchase_status"></p>
    <p class="purchase_cost">消费:</p>
    <p id="cost">0.00</p>
    <p >余额:</p>
    <p id="remain"></p>
</div>
</body>
</html>
