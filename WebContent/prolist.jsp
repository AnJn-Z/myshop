<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>格美电器GMea</title>
		<!--先引入公共的样式表  公共样式表里面的样式所有页面都有 -->
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<!--引入当前页面的私有样式-->
		<link rel="stylesheet" type="text/css" href="css/productlist.css"/>
		<!--引入轮播样式表-->
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<link rel="stylesheet" type="text/css" href="css/btm_new.css"/>
		<style>
		.top_txt { position: absolute;  font-family: "幼圆"; top: 40px; font-weight: bold; left: 68px; }
		#nav {top: 39px;left: 290px; }
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
		<div id="main" class="innerclass" style="margin-top:15px;">
			<ul id="prolist">
			<%int i=0; %>
			<%for (Map<String, Object> m : list) { %>
				<%
					i++;
					if(i%4==0){
				%>
				<li class="last">
					<a href="uiproview?id=<%=m.get("id")%>" class="hasimg"><img src="upload/<%=m.get("imgurl")%>" style="max-width:170px;max-height:145px;"></a>
					<a href="uiproview?id=<%=m.get("id")%>" class="hastxt"><%=m.get("proname")%></a>
					<p class="description">
						<%if (m.get("brief").toString().length()>20){%>
							<%=m.get("brief").toString().substring(0,20)%>
						<%}else{%>
							<%=m.get("brief")%>
						<%}%>
						</p>
					<p class="price"><%=m.get("price")%>元</p>
				</li>
				<%}else{ %>
				<li>
					<a href="uiproview?id=<%=m.get("id")%>" class="hasimg"><img src="upload/<%=m.get("imgurl")%>" style="max-width:170px;max-height:145px;"></a>
					<a href="uiproview?id=<%=m.get("id")%>" class="hastxt"><%=m.get("proname")%></a>
					<p class="description">
						<%if (m.get("brief").toString().length()>20){%>
							<%=m.get("brief").toString().substring(0,20)%>
						<%}else{%>
							<%=m.get("brief")%>
						<%}%>
						</p>
					<p class="price"><%=m.get("price")%>元</p>
				</li>
				<% } %>
			<%}%>
				
				
			</ul>
			
			<div class="pager" style="clear:both;"><%=pagestr%></div>
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
	
	
	
	<!--引入jq库-->
	<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
	<!--引入轮播-->
	<script src="js/tyslide.js" type="text/javascript" charset="utf-8"></script>
	<!--库--框架-插件---组建 ：这些都数指具有一定结构和功能的代码  -->
	
	<!--调用轮播代码-->
	<script type="text/javascript">
		$("#ppt01").tyslide({
			boxh:460,//盒子的高度
			w:1226,//盒子的宽度
			h:460,//图片的高度
			isShow:true,//是否显示控制器
			isShowBtn:true,//是否显示左右按钮
			controltop:10,//控制按钮上下偏移的位置,要将按钮向下移动   首先保证boxh 高度>图片 h
			controlsW:20,//控制按钮宽度
			controlsH:20,//控制按钮高度
			radius:1,//控制按钮圆角度数
			controlsColor:"#FECA14",//普通控制按钮的颜色
			controlsCurrentColor:"#FF6700"//当前控制按钮的颜色
		});
	</script>

		
	</body>
</html>
    