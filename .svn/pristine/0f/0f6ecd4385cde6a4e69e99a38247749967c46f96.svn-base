<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
    Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		<script src="../ueditor/ueditor.config.js" type="text/javascript" charset="utf-8"></script>
		<script src="../ueditor/ueditor.all.js" type="text/javascript" charset="utf-8"></script>
		<script src="../ueditor/lang/zh-cn/zh-cn.js" type="text/javascript" charset="utf-8" ></script>
	</head>
	<body>
		<form action="proedit" method="post" enctype="multipart/form-data">
			<p class="path">产品中心/编辑产品</p>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr><td class="lable">名称</td><td><input type="hidden" name="oldurl" value="<%=objbyid.get("imgurl")%>"/><input type="text" name="proname" value="<%=objbyid.get("proname")%>"/></td></tr>				
				<tr>
					<td class="lable">类别<%=objbyid.get("typeid")%></td><td>	
					    <select name="typeid" class="type_select">
					    	<option <%=(objbyid.get("typeid").toString().equals("1"))?"selected=\"selected\"":""%> value="1">格力</option>
					    	<option <%=(objbyid.get("typeid").toString().equals("2"))?"selected=\"selected\"":""%> value="2">美的</option>
					    	<option <%=(objbyid.get("typeid").toString().equals("3"))?"selected=\"selected\"":""%> value="3">海尔</option>
					    	<option <%=(objbyid.get("typeid").toString().equals("4"))?"selected=\"selected\"":""%> value="4">长虹</option>					    	
					    </select>
				    </td>
				    <td class="price2"><div class="price1">价格</div><input class="price_ipt" type="text" name="price" value="<%=objbyid.get("price")%>"/><div class="price1">元</div></td>
				</tr>				
				<tr><td class="lable">特色</td><td><input type="text" name="brief" value="<%=objbyid.get("brief")%>"/></td></tr>
				<tr><td class="lable">产地</td><td><input type="text" name="address" value="<%=objbyid.get("address")%>"/></td></tr>
				<tr><td class="lable">图片</td><td><div class="file_iptbox"><input onchange="getPhoto(this)" type="file" class="file_ipt" name="file1"/></div><div class="ge_pic_icon_Infor"><img src="../img/preview_img_.svg"/></div></td></tr>
				<tr><td class="lable">内容</td><td><script id="editor" type="text/plain" style="width:900px;height:240px;"></script>
				<input type="hidden" name="descriptions" id="descriptions"/>
				<input type="hidden" name="id"  value="<%=objbyid.get("id")%>"/>
				<div style="display:none;" id="htmlcontents"><%=objbyid.get("descriptions").toString()%></div>
				</td></tr>
				<tr><td class="lable">属性</td><td class="check_btm_box"><label><input class="is_upcheck" type="checkbox" name="istop" value="1" <%=(objbyid.get("istop").toString().equals("1"))?"checked='checked'":""%> />首页推荐</label><label><input class="is_upcheck" type="checkbox" name="isstar" value="1"  <%=(objbyid.get("isstar").toString().equals("1"))?"checked='checked'":""%> />首页明星单品</label> </td></tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
		</form>
		<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		
		
<script type="text/javascript">
			//Html编码获取Html转义实体
			function htmlEncode(value){
			  return $('<div/>').text(value).html();
			}
			//Html解码获取Html实体
			function htmlDecode(value){
			  return $('<div/>').html(value).text();
			}

 			var ue = UE.getEditor('editor');
 			$("#btnsave").click(function(e){
 				var str=UE.getEditor('editor').getContent();
 				//str=htmlEncode(str);
 				$("#descriptions").val(str);
 				
 			});
 			
 			 ue.ready(function () {
 				 
 				var str=$("#htmlcontents").html();
 				//console.log(str);
 				//str=htmlDecode(str);
 				//console.log(str);
 				ue.execCommand('insertHtml',str);
 	         });
 			
 			var imgurl = "";
 		    function getPhoto(node) {
 		        var imgURL = "";
 		        try{
 		            var file = null;
 		            if(node.files && node.files[0] ){
 		                file = node.files[0];
 		            }else if(node.files && node.files.item(0)) {
 		                file = node.files.item(0);
 		            }
 		            //Firefox 因安全性问题已无法直接通过input[file].value 获取完整的文件路径
 		            try{
 		                imgURL =  file.getAsDataURL();
 		            }catch(e){
 		                imgRUL = window.URL.createObjectURL(file);
 		            }
 		        }catch(e){
 		            if (node.files && node.files[0]) {
 		                var reader = new FileReader();
 		                reader.onload = function (e) {
 		                    imgURL = e.target.result;
 		                };
 		                reader.readAsDataURL(node.files[0]);
 		            }
 		        }
 		        creatImg(imgRUL);
 		        return imgURL;
 		    }
 		    function creatImg(imgRUL){
 		        var textHtml = "<img src='"+imgRUL+"'width='70px' height='35px'/>";
 		        $(".ge_pic_icon_Infor").html(textHtml);
 		    }
 		</script>
	</body>
</html>