<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户注册</title>
		<!--引入公共的样式表-->
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<!--引入注册页面的样式表-->
		<link rel="stylesheet" type="text/css" href="css/reg.css"/>
		<link rel="stylesheet" type="text/css" href="css/btm_new.css"/>
		<link rel="stylesheet" type="text/css" href="css/reg_adds.css"/>
		<style></style>
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
			<div id="nav" class="nav1">注册格美电器账号</div>
			<div class="nav22s"><div>已有账号?</div><div class="clicktologin" ><a href="uilogin.jsp">点击登录</a></div></div>					
		</div>
		<!--头部结束-->
		<!--主体开始-->
		<div id="main" class="main1">			
			<h3>注册格美帐号</h3>
			<div class="title"><span class="title_span">用&nbsp;户&nbsp;名：</span><div class="hasinput"><input type="text" name="tbusername" id="tbusername" placeholder="请输入用户名"/></div></div>			
			<div class="title"><span class="title_span">用户密码：</span><div class="hasinput"><input type="password" name="tbpassword1" id="tbpassword1"placeholder="请输入用户密码"/></div></div>						
			<div class="title"><span class="title_span">确认密码：</span><div class="hasinput"><input type="password" name="tbpassword2" id="tbpassword2"placeholder="请确认用户密码"/></div></div>	
			<div class="title"><span class="title_span">用户姓名：</span><div class="hasinput"><input type="text" name="tbtruename" id="tbtruename"placeholder="请输入用户真实姓名"/></div></div>						
			<div class="title"><span class="title_span">电话号码：</span><div class="hasinput"><input type="text" name="tbtel" id="tbtel"placeholder="请输入电话号码"/></div></div>						
			<div class="title"><span class="title_span">详细地址：</span><div class="hasinput"><input type="text" name="tbaddress" id="tbaddress"placeholder="请输入用户地址"/></div></div>						
			<div id="contact"><label><input class="contact_ipt" type="checkbox" >注册格美帐号，即同意遵守<span class="contact_span">《格美电器用户注册协议》</span>。</label></div>
			<input type="button" value="同意协议并注册" id="btnreg">		
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
		<div class="rules_box" style="display:none;">
			<div class="rules_box1">格美电器用户注册协议 <img class="close_rulebox"  src="img/close_rulebox.svg" /></div>
			<div class="rules_box2">
				<div>由于互联网高速发展，您与格力董明珠店签署的本协议列明的条款并不能完整罗列并覆盖您与格美电器的所有权利与义务，现有的约定也不能保证完全符合未来发展的需求。因此，格美电器平台免责声明及隐私权政策、平台规则均为本协议的补充协议，与本协议不可分割且具有同等法律效力。如您使用格美电器平台服务，视为您同意上述补充协议。</div>
				<div>一、 账户注册与使用</div>
				<div>1.1 用户资格</div>
				<div>您确认，在您开始注册程序使用格美电器的服务前，您应当具备中华人民共和国法律规定的与您行为相适应的民事行为能力。若您不具备前述与您行为相适应的民事行为能力，则您及您的监护人应依照法律规定承担因此而导致的一切后果。此外，您还需确保您不是任何国家、地区或国际组织实施的贸易限制、经济制裁或其他法律法规限制的对象，也未直接或间接为前述对象提供资金、商品或服务，否则您应当停止使用格美电器服务，同时您理解违反前述要求可能会造成您无法正常注册及使用格美电器服务。</div>
				<div>1.2 账户说明</div>
				<div>【账户注册】当您按照注册页面提示填写信息、阅读并同意本协议且完成全部注册程序后，您可获得格美电器的账户并成为格美电器的用户。</div>
				<div>【账户使用】您有权使用您设置或确认的格美电器的会员昵称、邮箱、手机号码（以下简称“账户名称”）及您设置的密码（账户名称及密码合称“账户”）登录格美电器商城。</div>
				<div>二、服务条款的确认及接受</div>
				<div>1、格美电器各项电子服务的所有权和运作权归属于“格美电器”所有，本网站提供的服务将完全按照其发布的服务条款和操作规则严格执行。您确认所有服务条款并完成注册程序时，本协议在您与本网站间成立并发生法律效力，同时您成为本网站正式用户。</div>
				<div>2、根据国家法律法规变化及本网站运营需要，格美电器有权对本协议条款及相关规则不时地进行修改，修改后的内容一旦以任何形式公布在本网站上即生效，并取代此前相关内容，您应不时关注本网站公告、提示信息及协议、规则等相关内容的变动。您知悉并确认，如您不同意更新后的内容，应立即停止使用本网站；如您继续使用本网站，即视为知悉变动内容并同意接受。</div>
				<div>三、服务须知</div>
				<div>1、本网站运用自身开发的操作系统通过国内互联网络为用户提供购买商品等服务。使用本网站，您必须：</div>
				<div>（1）自行配备上网的所需设备，包括个人手机、平板电脑、调制解调器、路由器等；</div>
				<div>（2）自行负担个人上网所支付的与此服务有关的电话费用、网络费用等；</div>
				<div>（3）选择与所安装终端设备相匹配的软件版本，包括但不限于Android、Windows、iOS等多个格美电器发布的应用版本。</div>
			</div>
			<div class="rules_box_btn">同意并继续</div>
		</div>
		<!--底部结束-->
		
		<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		$('.contact_span').on("click",function(){ $('.rules_box').show();  $('.contact_ipt').prop('checked', false); });		
		$('.rules_box_btn').click(function(){ $('.rules_box').hide(); });
		$('.close_rulebox').click(function(){ $('.rules_box').hide(); });
			$("#btnreg").click(function(e){				
				var otbusername=$("#tbusername");
				console.log(otbusername.val().length);
				if(!(otbusername.val().length>0))
				{
					alert("请输入用户名!");
					otbusername.focus();
					e.preventDefault();
					return false;
				}
				
				var otbpassword1=$("#tbpassword1");
				if(!(otbpassword1.val().length>0))
				{
					alert("请输入密码!");
					otbpassword1.focus();
					e.preventDefault();
					return false;
				}
				
				var otbpassword2=$("#tbpassword2");
				if(otbpassword1.val()!=otbpassword2.val())
				{
					alert("两次输入的密码不一致!");
					otbpassword2.focus();
					e.preventDefault();
					return false;
				}
				if($('.contact_ipt').prop('checked')==false){
					alert("您未同意《格美电器用户注册协议》!");
					e.preventDefault();
					return false;
				}
				
				$.ajax({
				    url:'uireg', //要请求的url地址
				    type:'POST', //请求方法 GET or POST
				    async:true, //是否使用异步请求的方式
				    timeout:5000, //请求超时的时间，以毫秒计
				    data:{
				    	loginname:$("#tbusername").val(),
				    	password:$("#tbpassword1").val(),
				    	truename:$("#tbtruename").val(),
				        tel:$("#tbtel").val(),
				        address:$("#tbaddress").val()
				    },
				    dataType:'json', //预期的服务器返回参数类型
				    beforeSend:function(){
				        
				    },//再发送请求前调用的方法
				    success:function(data) {
				       alert("注册成功");
				       location.href="uilogin.jsp";
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
