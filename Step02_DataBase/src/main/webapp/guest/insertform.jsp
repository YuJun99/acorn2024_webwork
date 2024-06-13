<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/include/navbar.jsp">
	<jsp:param value="insert" name="current"/>
</jsp:include>
	<div class="container">
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/index.jsp">Home</a></li>
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/guest/list.jsp">방명록</a></li>
				<li class="breadcrumb-item active">글 추가</li>
			</ol>
		</nav>
		<h1>좋은 글을 남겨 주세요</h1>
		<form action="${pageContext.request.contextPath }/guest/insert.jsp" method="post">
			<div class="form-floating mb-3">
				<input class="form-control" placeholder="작성자 입력.." type="text" id="writer" name="writer"/>
				<label for="writer">작성자</label>
			</div>
			<div class="form-floating mb-3">
				<textarea class="form-control" placeholder=" " style="height: 200px" name="content" id="content" cols="30" rows="10"></textarea>
				<label for="content">내용</label>
			</div>
			<div class="form-floating mb-3">
				<input class="form-control" placeholder=" " type="password" id="pwd" name="pwd"/>
				<label for="pwd">비밀번호</label>
			</div>
			<button class="btn btn-outline-success" type="submit">
			등록
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-text-fill" viewBox="0 0 16 16">
			  <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0 0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0M9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1M4.5 9a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1zM4 10.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m.5 2.5a.5.5 0 0 1 0-1h4a.5.5 0 0 1 0 1z"/>
			</svg>
			</button>
		</form>
	</div>
</body>
</html>