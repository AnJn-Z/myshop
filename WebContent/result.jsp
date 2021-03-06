<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> item1 = (List<Map<String, Object>>)request.getAttribute("item1");
List<Map<String, Object>> item2 = (List<Map<String, Object>>)request.getAttribute("item2");
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>下单成功</title>
		<!--引入公共样式表-->
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/btm_new.css"/>
		<style type="text/css">
		.top_txt { position: relative;  font-family: "幼圆"; top: 40px; font-weight: bold; left: 68px; }
		#nav { top: 39px; left: 290px; }
		#main { width: 1226px; height: 260px; display: flex;    margin: 0 auto; align-items: center; background: url(img/pay_success.svg) no-repeat center 60px; background-size: 42px; flex-direction: column; background-color: #efefef; border-radius: 5px; padding-top: 90px; }
		.succsee_xd {  width: 100%; margin-top: 20px; font-family: "等线"; display: flex; align-items: center; justify-content: center; }
		h2{ text-align:center; color: #e16531; line-height:80px; }
		a.goon.goon1 { margin-left: 30px; }
		a.goon{ display:block; text-align:center; }
		.goon:hover{color:#e16531;}
		</style>
	</head>
	<body>
		
		<!--头部开始-->
		<div id="top">
			<div class="innerclass" id="topinner">
				<a href="index">首页</a> |
				<a href="uiprolist?typeid=1">格力</a> |
				<a href="uiprolist?typeid=2">美的</a> |
				<a href="uiprolist?typeid=3">海尔</a> |
				<a href="uiprolist?typeid=4">长虹</a> 
				<div id="topright">
				    <%if(currentmember==null) {%>
					<a href="uilogin.jsp">登录</a>
					<a href="reg.jsp">注册</a>
					<%}else{ %>
					欢迎您,<%=currentmember.get("truename")%>!
					<%} %>
					<a href="uiorderlist">我的订单</a>
					<a href="uiaddtocar" id="car">购物车</a>
				</div>
			</div>
		</div>
		<div id="header" class="innerclass">
			<a href="index" id="logo"><img src="img/Logo.png"></a>
			<div class="top_txt">格美 | 让生活格外美丽</div>
			<div id="nav">
				<a href="uiprolist?typeid=1">空调</a>
				<a href="uiprolist?typeid=2">洗衣机</a>
				<a href="uiprolist?typeid=3">电视</a>
				<a href="uiprolist?typeid=4">电冰箱</a>				
			</div>
			<div id="search">
				<input type="text" name="tbsearchkey" placeholder="格力·明珠" />
			    <p id="btnsearch"></p>
			</div>
		</div>
		<!--头部结束-->
		
		<!--主体开始-->
		<div id="main">
			<h2>下单成功!</h2>
			<div class="succsee_xd">
				<a href="index" class="goon">继续购物</a>
				<a href="uiorderlist" class="goon goon1">我的订单</a>
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
    