<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
String msg = (String)request.getAttribute("msg");
if(msg==null)
{
	msg="";
}
%>   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录</title>
		<!--引入公共样式表-->
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<!--引入私有样式表-->
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<link rel="stylesheet" type="text/css" href="css/btm_new.css"/>
		<link rel="stylesheet" type="text/css" href="css/reg_adds.css"/>
		<style>
		.innerclass img{cursor: pointer;}
		.title{margin:0;}
		#btnlogin:hover{background:#004888;}
		</style>
	</head>
	<body>
		<!--头部开始-->
		<div id="top">
			<div class="innerclass innerclass1" id="topinner">
				<a href="index"><img class="reg_logo" src="img/gree_white.png"></a>
				<a href="index">首页</a> |
				<a href="uiprolist?typeid=1">格力</a> |
				<a href="uiprolist?typeid=2">美的</a> |
				<a href="uiprolist?typeid=3">海尔</a> |
				<a href="uiprolist?typeid=4">长虹</a> 
			</div>
		</div>
		<div id="header" class="innerclass header11 innerclass1">
			<a href="index" id="logo"><img src="img/Logo.png"></a>
			<div class="top_txt">格美 | 让生活格外美丽</div>
			<div id="nav" class="nav1">登录格美电器账号</div>
			<div class="nav22s"><div>没有账号?</div><div class="clicktologin" ><a href="reg.jsp">点击注册</a></div></div>					
		</div>
		<!--头部结束-->
		
		<!--主体开始-->
		<div id="main">
			<div class="innerclass" style="position: relative;">
				<div id="loginform">
					<form action="uilogin" method="post">
						<p class="title"><span id="saocode">格美账号登陆</span></p>
						<p class="ff"><input type="text" name="username" placeholder="手机号 / 邮箱 / 用户名" /></p>
						<p class="ff" style="margin-top: 25px;"><input type="password" name="password" placeholder="用户密码"/></p>
						<p class="btn"><input type="submit" value="登录" id="btnlogin"></p>
						<p class="forgetpassword"><span style="color:red;"><%=msg%></span>   <a class="goto_reg" href="reg.jsp">立即注册</a> | <a href="###">忘记密码</a></p>
					</form>
				</div>
			</div>
		</div>
		
		<!--主体结束-->
		
		<!--底部开始-->
		<div id="footer">
			<div id="service" class="innerclass">
				<a href="###" style="background: url(img/icon1.svg) no-repeat center left; background-size: 27px;">预约维修服务</a> 
				<a href="###" style="background: url(img/icon2.svg) no-repeat center left; background-size: 27px;">7天无理由退货</a>
				<a href="###" style="background: url(img/icon3.svg) no-repeat center left; background-size: 29px;">15天免费换货</a>
				<a href="###" style="background: url(img/icon4.svg) no-repeat center left; background-size: 29px;">满150元包邮</a>
				<a href="###" style="background: url(img/icon5.svg) no-repeat center left; background-size: 27px;">520余家售后 </a> 
			</div>			
			<div id="bottomwrapper" class="innerclass">
				<div id="bottomleft">
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
					<dl>
						<dt>智慧家庭</dt>
						<dd>智家方案</dd>
						<dd>智慧家电</dd>
						<dd>生活资讯</dd>						
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>账户管理</dd>
						<dd>购物指南</dd>
						<dd>订单操作</dd>
					</dl>
					<dl>
						<dt>商城服务</dt>
						<dd>售后政策</dd>
						<dd>价格保护</dd>
						<dd>退款说明</dd>
					</dl>
					<dl>
						<dt>购物指南</dt>
						<dd>购物流程</dd>
						<dd>常见问题</dd>
						<dd>在线支付</dd>
					</dl>
					<dl>
						<dt>物流配送</dt>
						<dd>送货范围</dd>
						<dd>送装一体</dd>
						<dd>到家安装</dd>
					</dl>
				</div>
				<div id="bottomright">					
					<img class="bottomright_img" src="img/gemei_ewm.png" />
					<div id="bottomright1">服务热线：4006-820-820</div>
				</div>
			</div>			
			<div id="copyright" class="innerclass">				
				<div class="btm_1 btm_11">格美  让生活格外美丽</div>
				<div class="btm_1">蜀ICP备09001737号-1  2021 重庆格美电器股份有限公司 版权所有</div>
				<div class="btm_1 btm_12">地址：重庆市巴南区龙洲湾街道尚文大道906号</div>
				<div class="btm_2">
					<div class="btm_22"><img class="beian_img1" src="img/beian_1.png">经营性网站备案信息</div>
					<div class="btm_22"><img class="beian_img2" src="img/beian_2.png">诚信网站</div>
					<div class="btm_22"><img class="beian_img3" src="img/beian_3.gif">工商网监</div>
					<div class="btm_22"><img class="beian_img4" src="img/beian_4.png">网上交易保障中心</div>
					<div class="btm_22"><img class="beian_img5" src="img/beian_5.png">可信网站信用评估</div>
				</div>
		</div>
		<!--底部结束-->
		
	</body>
</html>
    