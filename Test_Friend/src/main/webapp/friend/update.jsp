<%@page import="friend.dao.FriendDao"%>
<%@page import="friend.dto.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String pno = request.getParameter("pno");
	FriendDto dto = new FriendDto(num, name, pno);
	FriendDao dao = new FriendDao();
	boolean isSuccess = dao.update(dto);
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/update.jsp</title>
</head>
<body>
<script>
	<%if(isSuccess) { %>
		alert("수정되었습니다.")
		location.href="${pageContext.request.contextPath }/friend/list.jsp";
	<%} else{%>
		alert("실패했습니다.")
		location.href="${pageContext.request.contextPath }/friend/list.jsp";
	<%} %>
	
</script>
</body>
</html>