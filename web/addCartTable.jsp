<%--
  Created by IntelliJ IDEA.
  User: pupil
  Date: 2015/12/17
  Time: 0:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="service.service" %>
<%
    service ser=new service();
    ser.setObj(request.getParameter("obj"));
    ser.setId(Integer.parseInt(request.getParameter("id")));
%>
<html>
<head>
    <title>添加进购物车</title>
    <link rel="stylesheet" type="text/css" href="/css/addCartTable.css">
    <script type="text/javascript" src="js/addCarTable.js"></script>
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
    <div class="right">
        <span class="name">大学生购物中心</span>
        <div class="describe same">
            <span class="describe_name">描述</span><br>
            <span class="describe_value">4.5</span>
        </div>
        <div class="service same">
            <span class="service_name">服务</span><br>
            <span class="service_value">4.8</span>
        </div>
        <div class="logistics same">
            <span class="logistics_name">物流</span><br>
            <span class="logistics_value">4.9</span>
        </div>
    </div>
</div>
<div class="content">
    <div class="left">
        <img class="bImg" src="<%=ser.getInformations().getAddress1()%>" alt=""><br>
        <img class="small 1img" src="<%=ser.getInformations().getAddress1()%>" alt="">
        <img class="small 2img" src="<%=ser.getInformations().getAddress2()%>" alt="">
        <img class="small 3img" src="<%=ser.getInformations().getAddress3()%>" alt="">
        <img class="small 4img" src="<%=ser.getInformations().getAddress4()%>" alt="">
        <img class="small 5img" src="<%=ser.getInformations().getAddress5()%>" alt="">
    </div>
    <div class="right">
        <p class="n"><%=ser.getInformations().getName()%></p>
        <div class="price">
            <span>价格:</span>
            <span class="price"><%=ser.getInformations().getPrice()%></span>
        </div>
        <div class="mNumber">
            <span>月销售量:</span>
            <span class="number">200</span>
        </div>
        <div class="size">
            <span>鞋码:</span>
            <span class="delete">-</span>
            <span><input type="text" class="size" value="40"></span>
            <span class="plus">+</span>
        </div>
        <div class="color">
            <span>颜色分类:</span>
            <span class="onclick red">红色</span>
            <span class="onclick purple">紫色</span>
        </div>
        <div class="number">
            <span>数量</span>
            <span class="delete">-</span>
            <span><input type="text" value="1" class="number"></span>
            <span class="plus">+</span>
        </div>
        <div class="buy">
            <div class="buy"><p>立即购买</p></div>
            <div class="add"><p>加入购物车</p></div>
        </div>
    </div>
    <div class="center">
        <p class="title">商品详情</p>
        <p class="content">产品名称：<%=ser.getInformations().getName()%> </br>
            是否商场同款: 是</br>
            颜色分类: 太阳能蓝/亮白/亮黄荧光 红荧光/亮白/夜闪紫 尊贵蓝/亮白/1号黑色</br>
            款号: 2015Q2SP-JPN55</br>
            品牌: Adidas/阿迪达斯</br>
            上市时间: 2015年夏季</br>
            吊牌价: 799</br>
            性别: 男子</br>
            帮面材质: 织物+合成革</br>
            外底材料: 橡胶</br>
            适合路面: 硬地</br>
            运动鞋科技: Adiprene,Torsion;</br>
            功能: 减震</br>
            鞋码: 39 40 40.5 41 42 42.5 43 44 44.5 45 46 46.5 47</br>
            闭合方式: 系带</br>
            流行元素: 车缝线</br>
            运动系列: 跑步鞋</br>
            是否瑕疵: 否</p>
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
