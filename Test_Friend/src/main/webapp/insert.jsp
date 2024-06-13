<%@page import="friend.dto.FriendDto"%>
<%@page import="friend.dao.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	FriendDao dao = new FriendDao();

	String name = request.getParameter("name");
	String pno = request.getParameter("pno");
	FriendDto dto = new FriendDto(0, name, pno);
	
	boolean isSuccess = dao.insert(dto);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert.jsp</title>
</head>
<body>
<%if(isSuccess){%>
	<p>추가되었습니다.</p>
	<p><a href="${pageContext.request.contextPath }/friend/list.jsp">목록보기</a></p>
<%} else{%>
	<p>실패했습니다.</p>
	<p><a href="${pageContext.request.contextPath }/friend/list.jsp">목록보기</a></p>
<%} %>
</body>
</html>