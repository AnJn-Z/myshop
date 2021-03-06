<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> carlistall = (List<Map<String, Object>>)request.getAttribute("carlistall");
Map<String, Object> obj=(Map<String,Object>)request.getSession().getAttribute("currentmember");	
%>
<%
List<Map<String, Object>> item1 = (List<Map<String, Object>>)request.getAttribute("item1");
List<Map<String, Object>> item2 = (List<Map<String, Object>>)request.getAttribute("item2");
Map<String, Object> currentmember=(Map<String,Object>)session.getAttribute("currentmember");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>购物车</title>
		<!--引入公共样式表-->
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<!--引入购物车页面的样式表-->
		<link rel="stylesheet" type="text/css" href="css/shoppingcar.css"/>
		<link rel="stylesheet" type="text/css" href="css/btm_new.css"/>
		<style>
		.red_color_font{color: #ff6700; font-size: 16px; padding-left: 5px;}
		.del:hover{color:#f12020; background: url(img/car_del_img1.svg) no-repeat center left; background-size: 20px;}
		span.del { cursor: pointer; background: url(img/car_del_img.svg) no-repeat center left; background-size: 20px; padding-left: 16px; }
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
		<div id="carheader">
			<div id="carheaderwrapper" class="innerclass">
				<a href="index" id="carlogo"><img src="img/Logo.png"></a>
				<span id="mycar">我的购物车</span>
				<span id="msg">温馨提示：商品是否购买成功，以下单为准，请尽快结算哦.</span>
			</div>
		</div>
		
		<!--头部结束-->
		
		<!--购物车开始-->
		
		<table border="0" cellspacing="0" cellpadding="0" class="innerclass" id="cartable">
			<tr><td style="width: 150px;height: 30px;">商品图片</td><td>商品名称</td><td>单价</td><td style="width: 150px;">数量</td><td style="width: 150px;">小计</td><td style="width: 150px;">操作</td></tr>
			<%for (Map<String, Object> m : carlistall) { %>
			<tr data-proid="<%=m.get("proid")%>"><td><img src="upload/<%=m.get("imgurl")%>" style="width:124px;height:145px;"></td><td style="font-size: 16px;"><%=m.get("proname")%></td><td><span><%=m.get("price")%></span>元</td><td><div class="pronumber"><span class="left">-</span><input type="text" value="<%=m.get("procount")%>"/><span class="right">+</span> </div>  </td><td><span></span>元</td><td><span class="del">&nbsp;删除&nbsp;</span></td></tr>
			<%}%>
		</table>
		
		<p id="carbuy" class="innerclass"><a href="index">继续购物</a> <span style="padding-left: 20px;color: #f12020;font-size:18px;">合计 <b id="sum">3999</b>元 </span> <span id="btnorder">去结算</span></p>
		<div id="receiverinfo" class="innerclass">
			<%if(obj!=null){%>
				<p>收货人姓名:<input type="text" name="tbname" id="tbname" value="<%=obj.get("truename")%>"/></p>
				<p>收货人电话:<input type="text" name="tbtel" id="tbTel" value="<%=obj.get("tel")%>"/></p>
				<p>收货人地址:<input type="text" name="tbaddress" id="tbaddress" value="<%=obj.get("address")%>" /></p>
				<p>
					<span id="btngotoorder">立即下单</span>
				</p>
			<%}else{%>
			<p>您还没有登录,请登录后再结算! <a href="uilogin.jsp">点击<span class="red_color_font">登录</span></a></p>
			
			<%}%>
		</div>	
		
		<!--购物车结束-->
		
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
		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			//给id为 btnorder的元素绑定一个点击事件
			$("#btnorder").click(function(){
				//点击id为 btnorder的按钮，就会执行此处的代码
				$("#receiverinfo").slideDown();
			});
			
			//给立即下单的按钮绑定一个点击事件
			$("#btngotoorder").click(function(){
				//要去判断这三个文本框里面是否输入了内容  判断的标准：去获取每个文本框里面的值，看这个值的长度是否大于0，如果大于0，就表示输入了内容
				if(!$("#tbname").val().length>0)//判断长度是否大于0，取反之后就数不大于0，即：没有输入内容。
				{
					alert("请输入收货人姓名!");
					$("#tbname").focus();//让一个表单元素获得焦点 
					return false;
				}
				
				if(!$("#tbTel").val().length>0)//判断长度是否大于0，取反之后就数不大于0，即：没有输入内容。
				{
					alert("请输入收货人联系电话!");
					$("#tbTel").focus();//让一个表单元素获得焦点 
					return false;
				}
				
				if(!$("#tbaddress").val().length>0)//判断长度是否大于0，取反之后就数不大于0，即：没有输入内容。
				{
					alert("请输入收货人详细地址!");
					$("#tbaddress").focus();//让一个表单元素获得焦点 
					return false;
				}
				
				//检查购物车里面是否又商品
				var len=$("#cartable").find("tr").length;
				if(len<2)
				{
					e.preventDefault();
					return false;
				}
				
				$.ajax({
				    url:'uiaddorder', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				    	tbname:$("#tbname").val(),
				        tbtel:$("#tbTel").val(),
				        tbaddress:$("#tbaddress").val()
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				       location.href="result.jsp";
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
						jisuan();
				    } 
				});
				
			});
			
			
			//给所有的加号绑定点击事件
			$(".pronumber span.right").click(function(){
				//点击加号的时候，把当前加号按钮所在的行的商品数量取出来，加上1  然后再放回去。
				var oldvalue=$(this).prev().val();
				var newvalue=parseInt(oldvalue)+1;
				var that=this;
				var proid=$(that).parent().parent().parent().attr("data-proid");
				$.ajax({
				    url:'uiupdatecarcount', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				        id :proid,
				        countvalue:newvalue
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				        console.log(data);
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
				    	$(that).prev().val(newvalue);
						jisuan();
				    } //回调方法 无论success或者error都会执行
				});
				
			});
			//给所有的减号绑定点击事件
			$(".pronumber span.left").click(function(){
				//点击加号的时候，把当前加号按钮所在的行的商品数量取出来，加上1  然后再放回去。
				var oldvalue=$(this).next().val();
				var newvalue=parseInt(oldvalue)-1;
				if(newvalue<1)
				{
					newvalue=1;
				}
				
				var that=this;
				var proid=$(that).parent().parent().parent().attr("data-proid");
				$.ajax({
				    url:'uiupdatecarcount', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				        id :proid,
				        countvalue:newvalue
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				        console.log(data);
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
				    	$(that).prev().val(newvalue);
						jisuan();
				    } //回调方法 无论success或者error都会执行
				});
				
				
				$(this).next().val(newvalue);
				jisuan();
			});
			
			
			
			$("span.del").click(function(){
				var that=this;
				var proid=$(that).parent().parent().attr("data-proid");
				$.ajax({
				    url:'uicardelete', //要请求的url地址
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
				        $(that).parent().parent().remove();
				    }, //请求成功时回调方法，data为服务器返回的数据
				    error:function(){
				       
				    }, //请求发生错误时调用方法
				    complete:function(){
						jisuan();
				    } 
				});
			});
			
			
			
			
			function jisuan()
			{
				
				//1、运算每一行的小计  = 单价*数量
				//2、对所有行的小计进行合计。
				var sum=0;
				$(".pronumber").each(function(index,item){
					//把每一行的单价和数量取出来进行运算，并且把运算的结果交给小计
					var num= parseInt($(item).find("input").val());//取出当前行商品的数量，并且将数量转为数字
					var price=parseInt($(item).parent().prev().find("span").text());//取出商品的单价
					var xiaoji=price*num;
					$(item).parent().next().find("span").text(xiaoji);
					sum=sum+xiaoji;
				});
				$("#sum").text(sum);
			}
			
			jisuan();
		</script>
		
	</body>
</html>
    