<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>小米商城后台管理系统V1.0</title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css" />

		<style type="text/css">
			.linear {
				width: 100%;
				height: 100px;
				background-color: #0044C0;
			}
			
			.nav {
				width: 100%;
				height: 34px;
				list-style: none;
				background-color: white;
				border-bottom: solid 1px #0044C0;
			}
			
			.nav li {
				height: 30px;
				position: relative;
				background-color: #0044C0;
				margin-right: 3px;
				margin-top: 2px;
				border-top-left-radius: 0px;
				border-top-right-radius: 15px;
				background-image: url(../img/aixin.png);
				background-repeat: no-repeat;
				background-position: 1px 6px;
			}
			
			.nav li a {
				text-decoration: none;
				padding: 0 20px;
				line-height: 30px;
				color: white;
				display: block;
			}
			#timecontainer{font-size: 15px; margin-bottom:10px;}
			.timeanduser {
			display:none;
			    width: 250px;
			    text-align: center;
			    height: auto;     padding: 15px;
			    position: absolute;
			    right: 5px;
			    top: 5px;
			    border-radius: 5px;
			    font-size: 12px;
			    color: #272e38;
			    background-color: #f3f3f3;
			    line-height: 22px;
			}
			
			#currentuser{
				/*background-image: url(img/logout.png);*/
				background-repeat: no-repeat;
				background-size:18px auto;
				background-position:right 5px;
				padding-right: 30px;
                position:relative;
			}
		    #logout {
		    
            }
             #logout  img{
		        width:20px;
                height:20px;
                position:absolute;
                right:0px;
                top:1px;
            }
            .timeanduser_inner{
            	    background-color: #dddddd;     border-radius: 5px;
            	    padding: 10px;
            }
		</style>

	</head>

	<body>
		
			<div class="linear">
				<img src="../img/logo_gree.png" style="width:135px;height:100px;" />
			</div>
			<ul class="nav">
                <li><a href="left.jsp?id=1" target="left">系统设置</a></li>
                <li><a href="left.jsp?id=2" target="left">信息中心</a></li>
                <li><a href="left.jsp?id=3" target="left">留言中心</a></li>
                <li><a href="left.jsp?id=4" target="left">产品中心</a></li>
                <li><a href="left.jsp?id=5" target="left">订单中心</a></li>
                <li><a href="left.jsp?id=6" target="left">会员中心</a></li>
                <li><a href="../index" target="_blank">预览首页</a></li>
           		<li> <a href="login.jsp" target="_top" >退出系统</a></li>
			</ul>
			<div class="timeanduser">
				<div class="timeanduser_inner">
					<p id="timecontainer"></p>
					<p id="currentuser">当前用户: 【<%= ((Map<String,Object>)session.getAttribute("currentuser")).get("truename")%>】<a href="logout" target="_top" id="logout" title="退出系统"><img src="../img/logout5.png"></a> </p>
				</div>
			</div>
		

		<script type="text/javascript">
		    t();

		    function t() {
		        var obj = document.getElementById('timecontainer');
		        var now = new Date();
		        var yy = now.getFullYear();
		        var mm = now.getMonth() + 1;
		        var dd = now.getDate();
		        var hhh = now.getHours();
		        var mmm = now.getMinutes();
		        var sss = now.getSeconds();
		        if (mm < 10) mm = "0" + mm;
		        if (dd < 10) dd = "0" + dd;
		        if (hhh < 10) hhh = "0" + hhh;
		        if (mmm < 10) mmm = "0" + mmm;
		        if (sss < 10) sss = "0" + sss;
		        var week;
		        if (now.getDay() == 0) week = "星期日";
		        if (now.getDay() == 1) week = "星期一";
		        if (now.getDay() == 2) week = "星期二";
		        if (now.getDay() == 3) week = "星期三";
		        if (now.getDay() == 4) week = "星期四";
		        if (now.getDay() == 5) week = "星期五";
		        if (now.getDay() == 6) week = "星期六";
		        var time = yy + "年" + mm + "月" + dd + "日 " + hhh + ":" + mmm + ":" + sss + " " + week;
		        obj.innerHTML = time;
		        setTimeout('t()', 1000);
		    }
		</script>
	</body>

</html>