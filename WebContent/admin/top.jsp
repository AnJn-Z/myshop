<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>格美电器GMea后台管理系统</title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css" />
		<script src="../js/jquery-3.3.1.min.js"></script>
		<script src="../js/jquery-1.11.0.js"></script>
		<style type="text/css">
			.linear {
				width: 100%;
				height: 70px;
				background:#3a4267;
			}
			
			.nav {
				width: 100%;
				height: auto;
				list-style: none;
			}
			
			.nav li {
				height: 50px;position: relative;
				display: flex;align-items: center;
				position: relative;    font-size: 15px;
			}			
			.white_font{color:white;}			
			.nav_a:hover {border-right: solid 2px #53dca6; background:#465777;}			
			.nav li a { text-decoration: none; color: #8088ac;  line-height: 50px; text-align: center; width: 100%; height: 100%; display: block; }
			.selected_menue{background:#4d5667;border-right: solid 2px #53dca6; }
			#timecontainer{font-size: 15px; margin-bottom:10px;}
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
            .top_box{width:100%;height:1000px;background:#3a4267;}
            .linear img { width: 135px; height: 28px; margin: 5px 32.5px 0 32.5px; }
            .linear_txt{color:white;    text-align: center;}
            .left_li{width: 22px; height: 22px;position: absolute; left: 30px; }
            .left_li1{background:url(../img/left_img1.svg) no-repeat; background-size: 100% 100%;}
            .left_li2{background:url(../img/left_img2.svg) no-repeat; background-size: 100% 100%;}
            .left_li3{background:url(../img/left_img3.svg) no-repeat; background-size: 100% 100%;}
            .left_li4{background:url(../img/left_img4.svg) no-repeat; background-size: 100% 100%;}
            .left_li5{background:url(../img/left_img5.svg) no-repeat; background-size: 100% 100%;}
            .left_li6{background:url(../img/left_img6.svg) no-repeat; background-size: 100% 100%;}
            .left_li7{background:url(../img/left_img7.svg) no-repeat; background-size: 100% 100%;}
            .left_li8{background:url(../img/left_img8.svg) no-repeat; background-size: 100% 100%;}
		</style>

	</head>

	<body>
		<div class="top_box">
			<div class="linear">
				<img src="../img/gree_white.png" />
				<div class="linear_txt">格美电器后台管理系统</div>
			</div>
			<ul class="nav">
                <li class="selected_menue"><div class="left_li left_li1"></div><a class="nav_a" href="left.jsp?id=1" target="left">管理中心</a></li>
                <li><div class="left_li left_li2"></div><a class="nav_a" href="left.jsp?id=2" target="left">信息中心</a></li>
                <li><div class="left_li left_li3"></div><a class="nav_a" href="left.jsp?id=3" target="left">留言中心</a></li>
                <li><div class="left_li left_li4"></div><a class="nav_a" href="left.jsp?id=4" target="left">商品中心</a></li>
                <li><div class="left_li left_li5"></div><a class="nav_a" href="left.jsp?id=5" target="left">订单中心</a></li>
                <li><div class="left_li left_li6"></div><a class="nav_a" href="left.jsp?id=6" target="left">用户中心</a></li>               
                <li><div class="left_li left_li7"></div><a class="nav_a" href="../index" target="_blank">预览首页</a></li>
           		<li><div class="left_li left_li8"></div><a class="nav_a" href="login.jsp" target="_top" >退出系统</a></li>
			</ul>
		</div>

<script type="text/javascript">
		$(".nav").on("click","li", function () { 
			$(this).addClass('selected_menue').siblings().removeClass('selected_menue'); 
			$(parent.frames["topFrame1"].document).find("#get_thisname").text( $(this).text() );
		});
</script>
	</body>

</html>