<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
  		Map<String, Object> objbyid =(Map<String, Object>)request.getAttribute("objbyid");
  		Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>商品详情</title>
		<!--引入公共样式表-->
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<!--公共的样式表在前面,私有的样式表在后面-->
		<!--引入轮播的样式-->
		<link rel="stylesheet" type="text/css" href="css/productview.css"/>
		<link rel="stylesheet" type="text/css" href="css/btm_new.css"/>
		<link rel="stylesheet" type="text/css" href="css/reg_adds.css"/>
		<style>
		.top_txt { font-family: "幼圆"; top: 40px; font-weight: bold; left: 68px; }
		#nav {top: 39px;left: 290px; }
		#proview img { width: 350px; height: 320px; position: absolute; top: 60px; left: 40px; }
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
		<div id="header" class="innerclass header11 innerclass1">
			<a href="index" id="logo"><img src="img/Logo.png"></a>
			<div class="top_txt">格美 | 让生活格外美丽</div>
			<div id="nav" class="nav1">
				<a href="uiprolist?typeid=1">空调</a>
				<a href="uiprolist?typeid=2">洗衣机</a>
				<a href="uiprolist?typeid=3">电视</a>
				<a href="uiprolist?typeid=4">电冰箱</a>	
			</div>
			<div class="nav22s"><div></div></div>					
		</div>
		</div>
		<!--头部结束-->
		<!--主体开始-->
		<div id="main" class="innerclass">
			<p id="title">商品详情<span id="rightspan"><a href="###">概述</a> | <a href="###">图集</a> | <a href="###">参数</a> | <a href="###">评论</a></span> </p>
			<div id="proview">
				<img src="upload/<%=objbyid.get("imgurl") %>"/>
				<div id="proviewdescription">
					<h3><%=objbyid.get("proname") %></h3>
					<div class="briefdiv">
						<p class="p1">
							<span><%=objbyid.get("brief") %></span>
						</p>
						<p class="p1">
							<span>产地：<%=objbyid.get("address") %></span>
						</p>
						<p><span style="font-size:12px;color:#ff6600;display:none;">sid：<%=session.getId()%></span></p>
						<p class="price"> 总价：<%=objbyid.get("price") %>元</p>
					</div>
					<button class="btnaddtocar" data-proid=<%=objbyid.get("id") %> id="btnaddtocar">加入购物车</button>
					<p class="reback">支持7天无理由退货</p>
				</div>
			</div>
			<h3>商品详细介绍</h3>
			<div id="list">
				<%=objbyid.get("descriptions") %>
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
		
		
		
		<!--引入jq库 -->
		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<!--引入轮播的插件  插件就是具有一定结构和功能的代码 注意:先进入jq库 ,后引入插件文件 -->
		<script src="js/tyslide.js" type="text/javascript" charset="utf-8"></script>
		
		<script type="text/javascript">
			
			$("#ppt01").tyslide({
				boxh:460,//盒子的高度
				w:992,//盒子的宽度
				h:460,//图片的高度
				isShow:true,//是否显示控制器
				isShowBtn:true,//是否显示左右按钮
				controltop:10,//控制按钮上下偏移的位置,要将按钮向下移动   首先保证boxh 高度>图片 h
				controlsW:60,//控制按钮宽度
				controlsH:10,//控制按钮高度
				radius:5,//控制按钮圆角度数
				controlsColor:"#FECA14",//普通控制按钮的颜色
				controlsCurrentColor:"#FF6700"//当前控制按钮的颜色
			});	
			
			$("#btnaddtocar").click(function(){
				var proid=$(this).attr("data-proid");
				$.ajax({
				    url:'uiaddtocar', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				        id :proid
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				        console.log(data);
				        location.href="uiaddtocar";
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
				    	
				    } 
				});
			});
		</script>
		
		
	</body>
</html>
    