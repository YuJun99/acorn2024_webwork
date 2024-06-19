<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request 영역에 "dto" 라는 키값으로 담긴 MemberDto 객체 얻어내기
	MemberDto dto = (MemberDto)request.getAttribute("dto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/member.jsp</title>
</head>
<body>
	<div class="container">
		<h3>회원 한 명의 정보</h3>
		<p>회원번호 : <strong><%=dto.getNum() %></strong></p>
		<p>회원이름 : <strong><%=dto.getName() %></strong></p>
		<p>회원주소 : <strong><%=dto.getAddr() %></strong></p><br>
		
		<%--
			EL 을 이용하면 dto 의 필드에 있는 값을 편하게 출력할 수 있다.
			${dto.getNum()} or ${dto.num }
			
			위와 같이 필드명만 적어도 자동으로 dto 의 getter 메소드를 호출해 준다.
		 --%>
		<h3>EL 을 이용하면 </h3>
		<p>회원번호 : <strong>${dto.num }</strong></p>
		<p>회원이름 : <strong>${dto.name }</strong></p>
		<p>회원주소 : <strong>${dto.addr }</strong></p>
	</div>
</body>
</html>