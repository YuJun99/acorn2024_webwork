<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/insertform.jsp</title>
</head>
<body>
<div class="container">
	<form action="${pageContext.request.contextPath }/insert.jsp" method = "post">
		이름<input type="text" name="name" />
		전화번호<input type="text" name="pno"/>
		<button type="submit">추가</button>
	</form>
</div>
</body>
</html>