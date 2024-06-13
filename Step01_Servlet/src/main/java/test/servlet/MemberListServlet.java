package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import test.dto.MemberDto;

@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//sample 데이터
		List<MemberDto> members = new ArrayList<MemberDto>();
		members.add(new MemberDto(1, "김구라", "노량진"));
		members.add(new MemberDto(2, "해골", "행신동"));
		members.add(new MemberDto(3, "원숭이", "동물원"));
		
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 설정
		resp.setContentType("text/html; charset=utf-8");
		//요청을 한 클라이언트에게 문자열을 출력할수 있는 객체의 참조값 얻어내기
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title></title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h3>회원목록입니다</h3>");
		pw.println("<table>");
		pw.println("<tr>");
			pw.println("<th>번호</th>");
			pw.println("<th>이름</th>");
			pw.println("<th>주소</th>");
		pw.println("</tr>");
		//반복문 돌면서 실제 회원 목록을 출력!
		for (MemberDto tmp : members) {
			pw.println("<tr>");
				pw.println("<td>" + tmp.getNum() + "</td>");
				pw.println("<td>" + tmp.getName() + "</td>");
				pw.println("<td>" + tmp.getAddr() + "</td>");
			pw.println("</tr>");
		}
		pw.println("</table>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}