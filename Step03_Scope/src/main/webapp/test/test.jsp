<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Integer> ran = (List<Integer>)request.getAttribute("random");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/test.jsp</title>
</head>
<body>
	<div class="container">
		<h3>랜덤 숫자 45</h3>
		<p>
		<%for(Integer tmp : ran){ %>
			<%=tmp %>
		<%} %>
		</p>
	</div>
</body>
</html>