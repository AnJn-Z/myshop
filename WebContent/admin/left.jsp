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
			
			.leftitem { width: 100%; list-style: none; }			
			.leftitem li {
				height: 50px;
				line-height: 50px; padding-left: 10px;				
			}
			
			.leftitem li a {
				display: block;color:#8088ac;
				width:100%; height: 100%;				
				text-decoration: none;
				text-align: center;			
			}
			.selected_menue{border-right: solid 2px #8088ac;}
			.leftitem li a:hover {font-weight:bold;}
			.leftitem li:hover {border-right: solid 2px #8088ac; }
			.left_box{width:90%; height:100%;box-shadow: 0px 2px 6px 0px rgba(0, 0, 0, 0.2);background:white;}
			.xgmm_{background:url(../img/left__img11.svg) no-repeat; background-size: 20px 20px;background-position: 22px;}
			.xxlb_{background:url(../img/left__img22.svg) no-repeat; background-size: 20px 20px;background-position: 22px;}
			.fbxx_{background:url(../img/left__img21.svg) no-repeat; background-size: 20px 20px;background-position: 22px;}
			.ckly_{background:url(../img/left__img31.svg) no-repeat; background-size: 20px 20px;background-position: 22px;}
			.xzsp_{background:url(../img/left__img41.svg) no-repeat; background-size: 20px 20px;background-position: 22px;}
			.ckdd_{background:url(../img/left__img51.svg) no-repeat; background-size: 20px 20px;background-position: 22px;}
			.ckvip_{background:url(../img/left__img61.svg) no-repeat; background-size: 20px 20px;background-position: 22px;}
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
		    	case "1":navstr="<li class=\"xgmm_\"><a href=\"passwordedit.jsp\"  target=\"main\">修改密码</a></li><li class=\"xzsp_\"><a href=\"usersadd.jsp\"  target=\"main\">创建管理员</a></li><li class=\"ckvip_\"><a href=\"userslist\"  target=\"main\">管理员列表</a></li>";break;
		    	case "2":navstr="<li class=\"fbxx_\"><a href=\"newsadd.jsp\"  target=\"main\">发布信息</a></li><li class=\"xxlb_\"><a href=\"newslist\"  target=\"main\">信息列表</a></li>";break;
		    	case "3":navstr="<li class=\"ckly_\"><a href=\"guestbooklist\"  target=\"main\">查看留言</a></li>";break;
		    	case "4":navstr="<li class=\"xzsp_\"><a href=\"proadd.jsp\"  target=\"main\">新增商品</a></li><li class=\"xxlb_\"><a href=\"prolist\"  target=\"main\">商品列表</a></li>";break;
		    	case "5":navstr="<li class=\"ckdd_\"><a href=\"orderheadlist\"  target=\"main\">查看订单</a></li>";break;
		    	case "6":navstr="<li class=\"ckvip_\"><a href=\"memberlist\"  target=\"main\">用户管理</a></li>";break;
		    }
		    $("#leftitem").html(navstr);
		    
		    window.parent.frames["main"].location.href = "blank.jsp";

		</script>
	</body>

</html>
    