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
商品名称：<input value="${good.gname}" readonly="readonly"><br><br>
商品品牌：<input value="${good.bname}" readonly="readonly"><br><br>
商品种类：<input value="${good.gsname}" readonly="readonly"><br><br>
商品照片：<img alt="xxx" width="100" height="100" src="img?path=${good.img}"><br><br>
<a href="queryGoodsAll"><input type="button" value="返回列表界面"></a>
</form>
</body>
</html>