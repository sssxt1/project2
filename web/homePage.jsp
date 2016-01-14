<%--
  Created by IntelliJ IDEA.
  User: pupil
  Date: 2015/11/28
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn">
<head>
    <title>民大市场</title>
    <link rel="stylesheet" type="text/css" href="/css/homePage.css">
    <script type="text/javascript" src="js/homePage.js"></script>
</head>
<body>

<div class="top">
    <div class="top_top2">
        <p id="login">登陆</p>
        <p id="back" class="hide">退出</p>
        <a href=""><img src="/images/homePage/top/car.png" alt="购物车" class="car"></a>
        <a href="myCartTable.jsp" class="myCar">我的购物车</a>
        <p class="welcome">欢迎来到民大市场！</p>
    </div>
    <div class="box1">
        <div class="list">
            <img src="/images/homePage/top/house.png" alt="logo" class="house">
            <p>bailiubin.cf</p>
        </div>
        <input type="text" class="search" value="">
        <p id="totalMoney" style="float: right;font-family: 微软雅黑;font-size: 25px;color: rgb(196,0,0);margin-top:10px;">10000.00</p>
        <p style="float: right;font-family: 微软雅黑;font-size: 20px;margin-right: 10px;margin-top:10px; "><img src="" alt="">余额:</p>
        <div class="down">
            <a href="">热卖</a>
            <a href="">打折</a>
            <a href="">新品上市</a>
            <a href="">会员通道</a>
        </div>
    </div>
    <div class="shadow"></div>
    <div class="box2">
        <img src="/images/homePage/top/middle.png" alt="fuck!you!" class="girl">
        <ul class="icon">
            <li><img src="/images/homePage/top/socks.png" alt="袜子" class="socks"><a href="thing.jsp?name=socks" class="socks">袜子</a></li>
            <li><img src="/images/homePage/top/shoes.png" alt="男鞋" class="shoes"><a href="thing.jsp?name=shoes" class="shoes">男鞋</a></li>
            <li><img src="/images/homePage/top/high_shoes.png" alt="女鞋" class="high_shoes"><a href="thing.jsp?name=high_shoes" class="high_shoes">女鞋</a></li>
            <li><img src="/images/homePage/top/medicine.png" alt="医药" class="medicine"><a href="thing.jsp?name=medicine" class="medicine">医药</a></li>
            <li><img src="/images/homePage/top/juice.png" alt="饮料" class="juice"><a href="thing.jsp?name=juice" class="juice">饮料</a></li>
            <li><img src="/images/homePage/top/fruit.png" alt="水果" class="fruit"><a href="thing.jsp?name=fruit" class="fruit">水果</a></li>
            <li><img src="/images/homePage/top/snack.png" alt="零食" class="snack"><a href="thing.jsp?name=snack" class="snack">零食</a></li>
        </ul>
    </div>
</div>
<div class="middle">
    <div class="socksClass">
        <div class="left">
            <img src="/images/homePage/middle/socks/blue.png" alt="袜子">
            <p class="blue">袜子</p>
            <div class="intro">
                <p>品牌</p>
                <ul>
                    <li><a href="">七匹狼</a></li>
                    <li><a href="">花花公子</a></li>
                    <li><a href="">优衣库</a></li>
                    <li><a href="">耐克</a></li>
                    <li><a href="">阿迪达斯</a></li>
                    <li><a href="">浪莎</a></li>
                    <li><a href="">宝娜斯</a></li>
                    <li><a href="">······</a></li>
                </ul>
            </div>
        </div>
        <div class="right">
            <ul>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=socks&&id=1">
                            <img src="/images/homePage/middle/socks/1.jpg" alt="袜子1号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=socks&&id=2">
                            <img src="/images/homePage/middle/socks/2.jpg" alt="袜子2号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=socks&&id=3">
                            <img src="/images/homePage/middle/socks/3.jpg" alt="袜子3号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=socks&&id=4">
                            <img src="/images/homePage/middle/socks/4.jpg" alt="袜子4号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=socks&&id=5">
                            <img src="/images/homePage/middle/socks/5.jpg" alt="袜子5号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=socks&&id=6">
                            <img src="/images/homePage/middle/socks/6.jpg" alt="袜子6号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="shoesClass">
        <div class="left">
            <img src="/images/homePage/middle/shoes/yellow.png" alt="男鞋">
            <p class="blue">男鞋</p>
            <div class="intro">
                <p>品牌</p>
                <ul>
                    <li><a href="">七匹狼</a></li>

                    <li><a href="">花花公子</a></li>

                    <li><a href="">优衣库</a></li>

                    <li><a href="">耐克</a></li>

                    <li><a href="">阿迪达斯</a></li>

                    <li><a href="">浪莎</a></li>

                    <li><a href="">宝娜斯</a></li>

                    <li><a href="">······</a></li>
                </ul>
            </div>
        </div>
        <div class="right">
            <ul>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=shoes&&id=1">
                            <img src="/images/homePage/middle/shoes/1.jpg" alt="男鞋1号">
                        </a>
                        <p class="name">男鞋1号</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=shoes&&id=2">
                            <img src="/images/homePage/middle/shoes/2.jpg" alt="男鞋2号">
                        </a>
                        <p class="name">男鞋2号</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=shoes&&id=3">
                            <img src="/images/homePage/middle/shoes/3.jpg" alt="男鞋3号">
                        </a>
                        <p class="name">男鞋3号</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=shoes&&id=4">
                            <img src="/images/homePage/middle/shoes/4.jpg" alt="男鞋4号">
                        </a>
                        <p class="name">男鞋4号</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=shoes&&id=5">
                            <img src="/images/homePage/middle/shoes/5.jpg" alt="男鞋5号">
                        </a>
                        <p class="name">男鞋5号</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="addCartTable.jsp?obj=shoes&&id=6">
                            <img src="/images/homePage/middle/shoes/6.jpg" alt="男鞋6号">
                        </a>
                        <p class="name">男鞋6号</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="fruitClass">
        <div class="left">
            <img src="/images/homePage/middle/socks/blue.png" alt="袜子">
            <p class="blue">袜子</p>
            <div class="intro">
                <p>品牌</p>
                <ul>
                    <li><a href="">七匹狼</a></li>
                    <li><a href="">花花公子</a></li>
                    <li><a href="">优衣库</a></li>
                    <li><a href="">耐克</a></li>
                    <li><a href="">阿迪达斯</a></li>
                    <li><a href="">浪莎</a></li>
                    <li><a href="">宝娜斯</a></li>
                    <li><a href="">······</a></li>
                </ul>
            </div>
        </div>
        <div class="right">
            <ul>
                <li>
                    <div class="thing">
                        <a href="">
                            <img src="/images/homePage/middle/socks/1.jpg" alt="袜子1号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="">
                            <img src="/images/homePage/middle/socks/2.jpg" alt="袜子2号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="">
                            <img src="/images/homePage/middle/socks/3.jpg" alt="袜子3号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="">
                            <img src="/images/homePage/middle/socks/4.jpg" alt="袜子4号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="">
                            <img src="/images/homePage/middle/socks/5.jpg" alt="袜子5号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
                <li>
                    <div class="thing">
                        <a href="">
                            <img src="/images/homePage/middle/socks/6.jpg" alt="袜子6号">
                        </a>
                        <p class="name">男士加厚运动棉袜</p>
                        <p class="price">￥45.80</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="oral">
    <a href="">更多精彩</a>
</div>
<div class="footer">
    <img src="/images/homePage/bottom/bottom.png" alt="bottom">
</div>
<div class="bottom">
    <p>Copyright 白刘斌 2015-11-28</p>
</div>



<div id="bg" class="hide"></div>
<div id="content" class="hide">
    <p>账号登陆</p>
    <div class="nInput">
        <span>学号：</span>
        <span><input type="text" id="number" value=""></span>
    </div>
    <div class="pInput">
        <span>密码：</span>
        <span><input type="password" id="password" value=""></span>
    </div>
    <div class="button">登陆</div>
</div>
</body>
</html>