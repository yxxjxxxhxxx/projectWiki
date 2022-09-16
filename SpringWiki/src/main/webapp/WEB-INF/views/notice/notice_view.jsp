<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/font.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<title>글작성 페이지</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>View Page</h3>
			</div>
			<div>
				<form id="pwForm" action="backToList" method="post">

					<input type="hidden" name="eno" value="${vo.eno }"> <br>
					<p>
						<label>오류명</label> <span class="w3-input">${ vo.title }</span>
					</p>
					<br>
					<p>
						<label>해결내용</label> <span class="w3-input">${ vo.content }</span>
					</p>
					<input type="submit"
						class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round"
						value="목록">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
