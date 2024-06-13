<%@page import="friend.dao.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	FriendDao dao = new FriendDao();
	boolean isSuccess = dao.delete(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/delete.jsp</title>
</head>
<body>
<script>
	<%if(isSuccess) {%>
		alert("삭제 했습니다.");
		location.href="${pageContext.request.contextPath }/friend/list.jsp";
	<%} else{%>
		alert("실패 했습니다.");
		location.href="${pageContext.request.contextPath }/friend/list.jsp";
	<%} %>
</script>
</body>
</html>