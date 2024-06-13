<%@page import="friend.dao.FriendDao"%>
<%@page import="friend.dto.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	FriendDto dto = new FriendDto();
	FriendDao dao = new FriendDao();
	dto = dao.getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/updateform.jsp</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/friend/update.jsp" method = "post">
	<div>
		<label for="num">번호</label>
		<input type="text" name="num" id="num" value="<%=dto.getNum() %>" readonly/>
	</div>
	<div>
		<label for="name">이름</label>
		<input type="text" name="name" id="name" value="<%=dto.getName() %>"/>
	</div>
	<div>
		<label for="pno">전화번호</label>
		<input type="text" name="pno" id="pno" value="<%=dto.getPno() %>"/>
	</div>
	<button type="submit">수정</button>
	<button type="reset">취소</button>
	</form>
</body>
</html>