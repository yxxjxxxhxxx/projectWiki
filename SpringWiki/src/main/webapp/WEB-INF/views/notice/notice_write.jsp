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
	href="${pageContext.request.contextPath }/resources/css/mystyle.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/font.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<title>글작성 페이지</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>Write Page</h3>
			</div>
			<div>
				<form id="myForm" action="writeForm" method="post">

					<p>
						<label>작성자</label> <input class="w3-input" type="text" name="id"
							value="${sessionScope.id }" readonly>
					</p>

					<p>
						<label>오류명</label> <input class="w3-input" type="text"
							name="title" value="${ member.title }" placeholder="오류명을 작성하시오."
							required>
					</p>

					<br />
					<p>
						<label>해결내용</label>
						<textarea class="w3-input" style="resize: none;" rows="10"
							name="content" cols="99"
							placeholder="console 창에 뜬 caused by 오류를 찾아서 그대로 복사해서 기입하고 &#13;&#10;오류에 대한 해결 방법을 작성하시오."></textarea>
					</p>

					<input type="submit"
						class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round"
						name="write" value="등록" />
				</form>

			</div>
		</div>
	</div>
</body>
</html>