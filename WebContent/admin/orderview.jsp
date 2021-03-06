<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
Map<String, Object> orderhead = (Map<String, Object>)request.getAttribute("orderhead");
List<Map<String, Object>> orderitems = (List<Map<String, Object>>)request.getAttribute("orderitems");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
<style type="text/css">
.tb{width:500px; background:#f9f9fb;}
</style>
</head>
<body>
<p class="path">订单中心/订单明细</p>
<table border="0" cellspacing="0" cellpadding="0" class="tb tblis" style="margin-bottom:2px;">
<tr><td style="width:100px;">订单号</td><td style="text-align:left;"><%=orderhead.get("orderid")%></td></tr>

<tr><td>总金额</td><td style="text-align:left;"><%=orderhead.get("sumprice")%></td></tr>
<tr><td>收货人</td><td style="text-align:left;"><%=orderhead.get("sname")%></td></tr>
<tr><td>联系电话</td><td style="text-align:left;"><%=orderhead.get("stel")%></td></tr>
<tr><td>送货地址</td><td style="text-align:left;"><%=orderhead.get("saddress")%></td></tr>
<tr><td>下单时间</td><td style="text-align:left;"><%=orderhead.get("ctime")%></td></tr>
</table>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	  <td style="width:80px;">商品名称</td><td style="width:80px;">单价</td><td style="width:80px;">数量</td><td style="width:100px;">合计</td>   
       </tr>
       <%for (Map<String, Object> m : orderitems) { %>
        <tr>
       		<td><%=m.get("proname")%></td>
       		<td><%=m.get("price")%>.00</td>
       		<td><%=m.get("procount")%></td>
       		<td><%=m.get("price").toString()%>*<%=m.get("procount").toString()%>=<%=Integer.parseInt(m.get("price").toString())*Integer.parseInt(m.get("procount").toString()) %> </td>
       </tr>
    	<% } %>
    </table>
</body>
</html>