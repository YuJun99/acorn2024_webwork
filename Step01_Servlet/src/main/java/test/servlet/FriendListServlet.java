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

//3.
@WebServlet("/friend/list")
public class FriendListServlet extends HttpServlet{//1.
	
	//2.
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// DB에 있는 친구 목록이라 가정하자 sample 데이터
		List<String> names = new ArrayList<String>();
		names.add("김구라");
		names.add("해골");
		names.add("원숭이");
		
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
		pw.println("<title>친구 목록 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
			pw.println("<h3>친구 목록입니다</h3>");
			
			pw.println("<ul>");
				pw.println("<li>" + names.get(0) + "</li>");
				pw.println("<li>" + names.get(1) + "</li>");
				pw.println("<li>" + names.get(2) + "</li>");
			pw.println("</ul>");
			
			//반복문을 활용하면
			pw.println("<ul>");
			for(int i = 0; i < names.size(); i++) {
				//names 리스트의 i 번째 아이템(String) 을 읽어와서
				String tmp = names.get(i);
				// li 요소 가운데 끼워서 출력하기
				pw.println("<li>" + tmp + "</li>");
			}
			pw.println("</ul>");
			
			pw.println("<ul>");
			//확장 for 문을 활용하면?
			for (String item : names) {
				pw.println("<li>" + item + "</li>");
			}
			pw.println("</ul>");
			
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
		

	}
}
