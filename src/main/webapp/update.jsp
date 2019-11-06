<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action="#">
商品名称：<input name="gname" value="${good.gname}" readonly="readonly"><br><br>
商品品牌：<select name="bid" id="bid">

</select><br><br>
商品种类：<select name="gsid" id="gsid">

</select><br><br>
商品照片：<img alt="xxx" width="100" height="100" src="img?path=${good.img}"><br><br>
<input type="button"  value="提交" onclick="update()">
</form>
<script type="text/javascript">
function update(){
	$.post("/update",$("form").serialize(),function(){
		alert("修改成功");
		location="/queryGoodsAll";
	})
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
		
		 $("#bid").val(${list.bid});
		  $("#gsid").val(${list.sid});
	},"json")
})
</script>
</body>
</html>