<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mystyle.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/font.css">

<!-- 검색버튼  -->

<form action="notice/notice_list" method="post" class="#"
	name="searchForm" style="margin-bottom: 20px;">
	<div class="my-wrap">
		<div class="search">
			<select name="searchType" class="select" style="height: 36px;">
				<option value="title"
					${pageVO.cri.searchType == 'title' ? 'selected' : '' }>제목</option>
				<option value="content"
					${pageVO.cri.searchType == 'content' ? 'selected' : '' }>내용</option>
				<option value="titcont"
					${pageVO.cri.searchType == 'titcont' ? 'selected' : '' }>제목+내용</option>
			</select> <input type="text" name="searchKey" value="${pageVO.cri.searchKey }"
				class="searchTerm" title="검색어를 입력해주세요" placeholder="오류를 검색하세요">
			<button type="button" class="searchButton" onclick="checkKey()">
				🔍<i class="fa fa-search"></i>
			</button>

		</div>

	</div>
</form>



<!-- 로그인 -->
<c:choose>
	<c:when test="${sessionScope.id == null}">
		<div id='my_div'>
			<div class="login-page">
				<div class="form">
					<form class="login" action="user/login" method="post" id="frm">
						<div id="bb">
							<input type="text" placeholder="아이디를 입력하세요" name="id">
						</div>
						<input type="password" placeholder="비밀번호를 입력하세요" name="pw" />
						<!-- <a href="user/mypage" class=searchButton id="" >Login</a> -->
						<input id='go_home' type=submit class=loginbutton value='login'
							id="btn" />
						<!-- <button type="button" onclick="doDisplay()">그냥 버튼</button> -->
					</form>
					<p class="message">
						3조 개발위키 <a href="user/join" id="">Create an account</a>
					</p>
				</div>

			</div>
		</div>
	</c:when>
	<c:otherwise>
		<fieldset
			style="border-radius: 10px; width: 330px; margin: auto; text-align: center;">
			<table
				style="text-align: center; display: table; margin-left: auto; margin-right: auto; font-size: 18px; padding: 0"
				class="bbsListTbl" summary="번호,제목,조회수,작성일 등을 제공하는 표">
				<a style="font-family: '';">${sessionScope.id} 님 환영합니다</a>
				<hr>
				<input class="select" onclick="location.href='user/mypage'"
					type="button" value="마이페이지"
					style="border-radius: 10px; background-color: transparent; width: 164px; border: none; height: 30px;">
				<input class="select" onclick="location.href='user/logout'"
					type="button" value="로그아웃"
					style="border-radius: 10px; background-color: transparent; width: 164px; border: none; height: 30px;">
			</table>
		</fieldset>
	</c:otherwise>
</c:choose>


<script>
	function checkKey() {
		console.log(document.searchForm.searchKey.value.length)
		var x = document.searchForm.searchKey.value.length;
		if (x == 0) {
			alert("검색어를 입력해 주세요.")
			return;
		} else {
			document.searchForm.submit();
		}
	}

	var msg_suc = '${msg_suc}';
	if (msg_suc != '') {
		alert(msg_suc);
	}
</script>





