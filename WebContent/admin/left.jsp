<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css" />		
		<style type="text/css">
			html {
				width: 100%;
				height: 100%;
			}
			
			body {
				width: 100%;height: 100%;
				font-size: 14px;
			}
			
			.leftitem {
				width: 100%;
				list-style: none;
				padding-top: 12px;
			}
			
			.leftitem li {
				float:left; margin-left:20px;
				width:100px; height: 40px;
				line-height: 40px; border-radius: 4px;
				background:white;
				box-shadow: 0px 2px 6px 0px rgba(0, 0, 0, 0.2);
			}
			
			.leftitem li a {
				display: block;
				width:100%; height: 100%;				
				text-decoration: none;
				text-align: center;border-radius: 4px;				
			}
			.selected_menue{background-color: rgba(128,136,172,0.8);}
			.leftitem li a:hover {
				background-color: rgba(128,136,172,0.8);
				color: white;
			}
		</style>
	</head>
	<body>
		<div class="left_box">
		<form name="form1" method="post" action="left.aspx" id="form1">
			<ul class="leftitem" id="leftitem">
                <li><a href="login.jsp"  target="_top">退出系统</a></li>
			</ul>
		</form>
		</div>
		<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		$(".leftitem").on("click","li", function () { 
			$(this).addClass('selected_menue').siblings().removeClass('selected_menue'); 
		});
		    function getQueryString(name) {
		        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		        var r = window.location.search.substr(1).match(reg);
		        if (r != null) {
		            return unescape(r[2]);
		        }
		    }
		    var id=getQueryString("id");
		    var navstr="<li><a href=\"login.jsp\"  target=\"_top\">退出系统</a></li>";
		    switch(id)
		    {
		    	case "1":navstr="<li><a href=\"passwordedit.jsp\"  target=\"main\">修改密码</a></li><li><a href=\"logout\"  target=\"_top\">退出系统</a></li>";break;
		    	case "2":navstr="<li><a href=\"newsadd.jsp\"  target=\"main\">发布信息</a></li><li><a href=\"newslist\"  target=\"main\">信息列表</a></li><li><a href=\"logout\"  target=\"_top\">退出系统</a></li>";break;
		    	case "3":navstr="<li><a href=\"guestbooklist\"  target=\"main\">查看留言</a></li><li><a href=\"logout\"  target=\"_top\">退出系统</a></li>";break;
		    	case "4":navstr="<li><a href=\"proadd.jsp\"  target=\"main\">新增商品</a></li><li><a href=\"prolist\"  target=\"main\">商品列表</a></li><li><a href=\"logout\"  target=\"_top\">退出系统</a></li>";break;
		    	case "5":navstr="<li><a href=\"orderheadlist\"  target=\"main\">查看订单</a></li><li><a href=\"logout\"  target=\"_top\">退出系统</a></li>";break;
		    	case "6":navstr="<li><a href=\"memberlist\"  target=\"main\">查看会员</a></li><li><a href=\"logout\"  target=\"_top\">退出系统</a></li>";break;
		    }
		    $("#leftitem").html(navstr);
		    
		    window.parent.frames["main"].location.href = "blank.jsp";

		</script>
	</body>

</html>
    