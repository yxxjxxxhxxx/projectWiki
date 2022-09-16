<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>개발위키</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">

</head>


<body>

	<!-- tiles.xml에 선언된 템플릿의 name을 사용 -->

	<div id="wrap">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="body" />

	</div>



</body>
</html>