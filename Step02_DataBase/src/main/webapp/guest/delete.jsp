<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송되는 삭제할 글의 글번호와 비밀번호를 추출해서
	boolean isSuccess = false;
	
	int num = Integer.parseInt(request.getParameter("num"));
	String pwd = request.getParameter("pwd");
	//GuestDao 를 이용해서 글을 삭제하고
	GuestDao dao = GuestDao.getInstance();
	//비밀번호가 일치하는지 확인 (java 에서 문자열의 내용이 같은지 비교할때는 .equals() 메소드를 이용)
	
	if(pwd.equals(dao.getData(num).getPwd())){
		//DB에서 실제로 삭제하고
		isSuccess = dao.delete(num);
	}else{
		isSuccess = false;
	}
	//응답한다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/delete.jsp</title>
</head>
<body>
	<script>
	<%if(isSuccess){ %>
		alert("삭제 되었습니다.");
		location.href="${pageContext.request.contextPath }/guest/list.jsp";
	<%} else{ %>
		alert("실패 했습니다.");
		location.href="${pageContext.request.contextPath }/guest/list.jsp";
	<%} %>
	</script>
</body>
</html>