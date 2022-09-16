<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/mystyle.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/font.css">

<!-- bodytext_area -->
<div class="bodytext_area box_inner">


	<form action="notice_list" method="post" class="#" name="searchForm">
		<div class="my-wrap">
			<div class="search">
				<select name="searchType"
					style="height: 36px; border-radius: 10px 0 0 10px; box-shadow: 0 1px 6px 0 rgb(32 33 36/ 28%);">
					<option value="title"
						${pageVO.cri.searchType == 'title' ? 'selected' : '' }>제목</option>
					<option value="content"
						${pageVO.cri.searchType == 'content' ? 'selected' : '' }>내용</option>
					<option value="titcont"
						${pageVO.cri.searchType == 'titcont' ? 'selected' : '' }>제목+내용</option>
				</select> <input type="text" name="searchKey"
					value="${pageVO.cri.searchKey }" class="searchTerm"
					title="검색어를 입력해주세요" placeholder="오류를 검색하세요">
				<button type="button" class="searchButton" onclick="checkKey()">
					🔍<i class="fa fa-search"></i>
				</button>

			</div>

		</div>
	</form>

	<ul
		style="text-align: center; display: table; margin-left: auto; margin-right: auto;">
		<fieldset style="border-radius: 10px;">
			<table class="bbsListTbl" summary="번호,제목,조회수,작성일 등을 제공하는 표">
				<caption class="hdd">공지사항 목록</caption>
				<thead>
					<tr>
						<th scope="col" style="width: 80px">번호</th>
						<th scope="col" style="width: 130px">제목</th>
						<th scope="col" style="width: 80px">조회수</th>
						<th scope="col" style="width: 200px">작성일</th>
					</tr>
				</thead>

				<!-- 내가 작성한글 반복도는데 -->

				<tbody>
					<c:forEach var="vo" items="${list }" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td class="tit_notice"><a href="notice_view?eno=${vo.eno }">${vo.title }</a>
							</td>
							<td>${vo.hit }</td>
							<td><fmt:parseDate value="${vo.regdate }"
									pattern="yyyy-MM-dd'T'HH:mm" var="xxx" /> <fmt:formatDate
									value="${xxx }" pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</fieldset>
	</ul>
</div>
<script>
	function checkKey() {
		console.log(document.searchForm.searchKey.value.length)
		var x = document.searchForm.searchKey.value.length;
		if (x == 0) {
			alert("검색어를 입력해 주세요.");
			return;
		} else {
			document.searchForm.submit();
		}
	}
</script>