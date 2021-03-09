<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
	String msg =(String)request.getAttribute("msg");
	if(msg==null)
	{
		msg="";
	}
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>	电器商城后台管理系统V1.0</title>
    <link rel="stylesheet" type="text/css" href="../css/admin_login.css" />
    <style type="text/css">
    </style>
</head>
<body>
<div class="body_content">
    <div class="body_content_top">
        <img class="logo_img" src="../img/logo_gree.png">
        <div class="title_txt">高端家电品牌集成</div>
    </div>
    <div class="body_content_cen">
        <form  method="post" action="login">
            <div id="logincontainer">
                <div class="loginform">
                    <div class="title">欢迎登陆</div>
                    <div class="title12"><p id="msg"><%=msg%></p></div>
                    <div class="username_box">
                        <p> <span class="lablespan"></span><span class="lablespan1"></span><span><input class="ipt1" name="username" placeholder="输入管理员帐号" type="text" id="username" /></span></p>
                    </div>
                    <div class="username_box">
                        <p> <span class="lablespan"></span><span class="lablespan2"></span><span><input class="ipt1" name="password" placeholder="输入密码" type="password" id="password" /></span> </p>
                    </div>
                    <p class="btm_p"><span><input class="login_btn" type="submit" name="btnlogin" value="登 录" id="btnlogin" /></span></p>
                    <div class="btm_txt1">忘记密码?</div>
                </div>
            </div>
        </form>
    </div>
    <div class="body_content_btm">
        <div class="body_content_toplft">
            <img class="logo_img" src="../img/logo_gree.png">
            <div class="title_txt">Copyright@高端家电电子商务有限公司</div>
        </div>
        <div class="body_content_toprgt">
            <div class="bitbox">
                <img class="ewm_img" src="../img/erweima.png">
                <div class="title_txt2">移动端扫码登录</div>
            </div>

        </div>
    </div>
</div>
<script src="../js/jquery-1.11.0.js"></script>
<script>
    $("#btnlogin").click(function (e) {
        var username = $("#username");
        if (!username.val().length > 0)
        {
            $("#msg").text("请输入用户名！");
            username.focus();
            e.preventDefault();
            return false;
        }

        var password = $("#password");
        if (!password.val().length > 0) {
            $("#msg").text("请输入密码！");
            password.focus();
            e.preventDefault();
            return false;
        }
    });
</script>
</body>
</html>
    