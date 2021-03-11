<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		<script src="../ueditor/ueditor.config.js" type="text/javascript" charset="utf-8"></script>
		<script src="../ueditor/ueditor.all.js" type="text/javascript" charset="utf-8"></script>
		<script src="../ueditor/lang/zh-cn/zh-cn.js" type="text/javascript" charset="utf-8" ></script>
		<style>	
			
		</style>
	</head>
	<body>
		<form action="proadd" method="post" enctype="multipart/form-data">
			<p class="path">产品中心/新增商品</p>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr><td class="lable">名称</td><td><input type="text" name="proname"/></td></tr>
				<tr>
					<td class="lable">类别</td>
					<td class="select_td" style="width:100px;">
					    <select name="typeid" class="type_select">
					    	<option value="1">格力</option>
					    	<option value="2">美的</option>
					    	<option value="3">海尔</option>
					    	<option value="4">海信</option>
					    	<option value="5">长虹</option>
					    </select>
				   	 </td>					
					<td class="price2"><div class="price1">价格</div><input class="price_ipt" type="text" name="price"/><div class="price1">元</div></td>
				</tr>
				<tr><td class="lable">特色</td><td><input type="text" name="brief"/></td></tr>
				<tr><td class="lable">产地</td><td><input type="text" name="address"/></td></tr>
				<tr><td class="lable">图片</td><td><div class="file_iptbox"><input onchange="getPhoto(this)" type="file" class="file_ipt" name="file1"/></div><div class="ge_pic_icon_Infor"><img src="../img/preview_img_.svg"/></div></td></tr>
				<tr><td class="lable">内容</td><td><script id="editor" type="text/plain" style="width:900px;height:240px;"></script>
				<input type="hidden" name="descriptions" id="descriptions"/></td></tr>
				<tr><td class="lable">属性</td><td class="check_btm_box"><label><input type="checkbox" name="istop" value="1" class="is_upcheck"/>首页推荐</label><label><input type="checkbox" name="isstar" value="1" class="is_upcheck"/>首页明星单品</label> </td></tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
		</form>
		<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		 <script type="text/javascript">
 			var ue = UE.getEditor('editor');
 			$("#btnsave").click(function(e){
 				var str=UE.getEditor('editor').getContent();
 				console.log(str);
 				$("#descriptions").val(str); 				
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
 		</script>
	</body>
</html>