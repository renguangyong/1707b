<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>
<body>
<form action="/queryGoodsAll" method="post">
商品名称：<input name="gname"><br><br>
商品品牌：<select name="bid" id="bid">

</select><br><br>
商品种类：<select name="gsid" id="gsid">

</select>
<input type="submit" value="搜索">
</form>
<table>
<tr>
<td colspan="5">
<a href="add.jsp"><input type="button" value="添加"></a>
<input type="button" value="批量删除" onclick="ps()">
</td>
</tr>
<tr>
<td>商品名称</td>
<td>商品品牌</td>
<td>商品种类</td>
<td>商品照片</td>
<td>操作</td>
</tr>
<c:forEach items="${page.list}" var="e">
<tr>
<td>${e.gname}</td>
<td>${e.bname}</td>
<td>${e.gsname}</td>
<td><img alt="xxx" width="100" height="100" src="img?path=${e.img}"></td>
<td>
<input type="button" value="删除" onclick="del(${e.gid})">
<a href="queryGoodsById?gid=${e.gid}"><input type="button" value="修改"></a>
</td>
</tr>
</c:forEach>
</table>
<script type="text/javascript">
function update(gid){
	location="update?gid="+gid;
}

$(function(){
	$.post("querySelect",function(data){
		var brand=data.brand;
		var goodkind=data.goodkind;
		
		var str="<option value='0'>请选择</option>";
		for ( var i in brand) {
			str+="<option value="+brand[i].bid+">"+brand[i].bname+"</option>"
		}
		$("#bid").html(str);
		
		
		var str2="<option value='0'>请选择</option>";
		for ( var i in goodkind) {
			str2+="<option value="+goodkind[i].gsid+">"+goodkind[i].gsname+"</option>"
		}
		$("#gsid").html(str2);
	},"json")
})
</script>
</body>
</html>