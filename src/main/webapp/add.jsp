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
<form action="add" method="post" enctype="multipart/form-data">
商品名称：<input name="gname"><br><br>
商品品牌：<select name="bid" id="bid">

</select><br><br>
商品种类：<select name="gsid" id="gsid">

</select><br><br>
商品图片上传：<input type="file" name="file"><br><br>
<input type="submit" value="提交">
</form>
<script type="text/javascript">
$(function(){
	$.post("querySelect",function(data){
		var brand=data.brand;
		var kind=data.goodkind;
		
		var str="";
		for ( var i in brand) {
			str+="<option value="+brand[i].bid+">"+brand[i].bname+"</option>"
		}
		$("#bid").html(str);
		
		var str2="";
		for ( var i in kind) {
			str2+="<option value="+kind[i].gsid+">"+kind[i].gsname+"</option>"
		}
		$("#gsid").html(str2);
	},"json")
})
</script>
</body>
</html>