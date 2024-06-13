<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	GuestDao dao = GuestDao.getInstance();
	List<GuestDto> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/list.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="guest" name="current"/>
	</jsp:include>
	<div class="container" >
		<div class="col-md-6">
		<a href="${pageContext.request.contextPath }/guest/insertform.jsp">
			<span class="visually-hidden">새 글 작성</span>
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
			  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
			  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4"/>
			</svg>
		</a>
		<h1>방명록 목록입니다</h1>
		<table class = "table table-bordered table-striped" style="width: 1000px;">
			<!-- colgroup 안에 있는 col 요소의 폭이 칼럼의 폭으로 지정된다. -->
			<colgroup>
				<col class="col-1"/>
				<col class="col-2"/>
				<col class="col-4"/>
				<col class="col-2"/>
				<col class="col-1"/>
				<col class="col-4"/>
			</colgroup>
			<thead class = "table-dark">
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>등록일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(GuestDto tmp : list) {%>
					<tr>
						<td class="table-light"><%=tmp.getNum() %></td>
						<td class="table-light"><%=tmp.getWriter() %></td>
						<td class="table-light"><textarea class="form-control" rows="5" readonly><%=tmp.getContent() %></textarea></td>
						<td class="table-light"><%=tmp.getRegdate() %></td>
						<td class="table-light">
							<a href="${pageContext.request.contextPath }/guest/updateform.jsp?num=<%=tmp.getNum()%>">
							<span class="visually-hidden">수정</span>
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
							  <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.5.5 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11z"/>
							</svg>
							</a>
						</td>
						<td class="table-light">
							<form action="delete.jsp" method="post">
								<!-- 화면상에 보이지는 않지만 폼 전송될 때 같이 전송되는 input -->
								<input class="form-control" type="hidden" name="num" value="<%=tmp.getNum()%>"/>
								<input class="form-control" type="password" name="pwd" placeholder="비밀번호 입력"/>
								<button class="btn btn-danger btn-sm" type="submit">삭제</button>
							</form>
						</td>
					</tr>
				<%} %>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>