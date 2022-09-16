<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/join.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mystyle.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/font.css">
<!-- appForm -->
<form action="join" method="post" class="appForm" name="joinForm"
	style="margin-top: 50px;">
	<h2>회원가입</h2>
	<div class="textForm">
		<input type="text" id="id" name="id" class="id"
			placeholder="ID를 입력해주세요" required="required" />
	</div>
	<div class="textForm">
		<input type="password" id="pw" name="pw" class="pw"
			placeholder="비밀번호를 입력해주세요" required="required" />
	</div>
	<div class="textForm">
		<input type="password" id="pwcheck" name="pwcheck" class="pw"
			placeholder="비밀번호를 다시 한번 입력해주세요" required="required" />
	</div>
	<button type="button" class="btn_baseColor" onclick="pwCheck()">등록</button>
</form>
<!-- //appForm -->


<script>
	var msg = '${msg}';
	if (msg != '') {
		alert(msg);
	}
	function pwCheck() {
		var pw = document.joinForm.pw.value;
		var pw2 = document.joinForm.pwcheck.value;
		if (pw != pw2) {
			alert("비밀번호가 일치하는지 확인하세요.");
		} else {
			document.joinForm.submit();
		}

	}
</script>