<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>后台头部</title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css" />
		<style type="text/css">
			body{width:100%;height:65px; box-shadow: 0px 2px 6px 0px rgba(0, 0, 0, 0.2);border: 1px solid white;background:white;}
			.top_logo_box{overflow:hidden;}			
			#get_thisname{float:left; line-height: 65px;color:#636778;}			
			.timeanduser{line-height: 64px; color: #636778; float:right;background:url(../img/user_header.svg) no-repeat; background-size: 25px 25px;background-position: 5px center;padding-left: 35px;}
			.close_img{width:30px;height:30px; float: left;margin: 18px 10px 18px 18px; }
			.logout_img{width:25px;height:25px; margin: 19px 30px 18px 18px;float:right;}
		</style>
	</head>
	<body>	
		<div class="top_logo_box">
			<img class="close_img" src="../img/close_img.svg" />
			<div id="get_thisname">系统设置</div>	
				
			<a href="logout" target="_top" id="logout" title="退出系统"><img class="logout_img" src="../img/left_img8.svg"></a>
			<div class="timeanduser">
					<p id="currentuser">当前用户: <%= ((Map<String,Object>)session.getAttribute("currentuser")).get("truename")%></p>
			</div>			
		</div>

		<script type="text/javascript">
		    
		</script>
	</body>

</html>