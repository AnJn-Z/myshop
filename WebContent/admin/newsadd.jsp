<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		
	</head>
	<body>
		<form action="newsadd" method="post">
			<p class="path">融智信息系统/信息中心/发布信息</p>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr>
					<td class="lable">类别</td><td>
					    <select name="typename">
					    	<option value="1">学校公告</option>
					    	<option value="2">菁菁校园</option>
					    	<option value="3">学校趣闻</option>
					    	<option value="4">班级通知</option>
					    	<option value="5">数学建模</option>
					    	<option value="6">生活攻略</option>
					    </select>
				    </td>
				</tr>
				<tr><td class="lable">标题</td><td><input type="text" name="tbtitle"/></td></tr>
				<tr><td class="lable">作者</td><td><input type="text" name="tbauthor"/></td></tr>
				<tr><td class="lable">来源</td><td><input type="text" name="tbsource"/></td></tr>
				<tr><td class="lable">时间</td><td><input type="text" name="tbctime"/></td></tr>
				<tr><td class="lable">内容</td><td><textarea name="tbcontents"></textarea></td></tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
			
		</form>
		
	</body>
</html>