<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <script src="http://code.jquery.com/jquery-latest.js"></script> -->

<script>
	
	var msg = '${msg}';
	if (msg != '') {
		alert(msg);
	} 

	var msg_ne = '${msg_ne}';
	if (msg_ne != '') {
		alert(msg_ne);
	} 
	
	function pwCheck() {
		var id = document.newpwForm.id.value.length;
		var oldpw = document.newpwForm.pw.value;
		var pw = document.newpwForm.pw2.value;
		var pw2 = document.newpwForm.newpw2.value;
		
		
		if (id <= 0) {
			alert("아이디를 입력하세요.");
		} else if (oldpw.length <= 0) {
			alert("기존 비밀번호를 입력하세요.");
		} else if (pw.length <= 0) {
			alert("새 비밀번호를 입력하세요.");
		} else if (pw2.length <= 0) {
			alert("새 비밀번호 확인란을 입력하세요.");
		} else {
			document.newpwForm.submit();
		}
	}

</script>

<title>마이페이지</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>My Page</h3>
			</div>
			<div>
				<form id="pwForm" action="mypageForm" method="post" name="newpwForm">
					<p>
						<label>아이디</label>
<%-- 						<a class="w3-input" href="mypage">${sessionScope.id }</a> --%>
						<input type="text" class="w3-input" name="id" value="${sessionScope.id }" placeholder="아이디를 입력하시오.">
					</p>
					<p>
						<label>기존 비밀번호</label>
						<input class="w3-input" name="pw" id="oldpw" type="password" placeholder="기본 비밀번호를 입력하시요.">
						
					</p>
					<p>
						<label>새 비밀번호</label> 
						<input class="w3-input"name="pw2" type="password" required placeholder="새 비밀번호를 입력하시오.">
					</p>
					<p>
						<label>새 비밀번호 확인</label>
						<input class="w3-input" type="password" name="newpw2" type="password" required placeholder="새 비밀번호를 다시 한 번 입력하시오.">
					</p>
					<p class="w3-center">
						<button type="button" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" onclick="pwCheck()">비밀번호 변경</button>
					</p>
				</form>
					
<!-- 					<a class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" href="notice/notice_myList">작성글 확인</a> -->
				<form action="lookMyList">
 					<input type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round"  name="write" value="작성글 확인" />	
 				</form>	
 				<form action="lookWrite">
					<input type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round"  name="write" value="글작성" />		
				</form>
<!-- 					<a class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" href="notice_write">글작성</a> -->
					

			</div>
		</div>
	</div>
</body>
</html>