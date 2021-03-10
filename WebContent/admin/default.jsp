<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="../js/jquery-3.3.1.min.js"></script>
	<title>高端家电集成后台</title>
</head>
<frameset cols="200px,*" frameborder="no" border="0" framespacing="0">
    <frame src="top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame"></frame>
    <frameset rows="70px,*" name="rgtFrame" scrolling="Yes" frameborder="no" border="0" framespacing="0">
    	<frame src="top_logo.jsp" name="topFrame1" scrolling="No" noresize="noresize" id="topFrame1"></frame>
    	<frameset cols="170px,*" scrolling="Yes" frameborder="no" border="0" framespacing="0">
    		<frame src="left.jsp?id=1" name="left" id="left" border="0" frameborder="no" noresize="noresize" scrolling="yes"/>
        	<frame src="blank.jsp" name="main" id="main" />
    	</frame>
    </frameset>
</frameset>

<script type="text/javascript">
console.log($(".get_thisname").text());
</script>
</html>
