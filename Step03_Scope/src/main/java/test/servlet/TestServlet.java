package test.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class TestServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Random ran = new Random();
		List<Integer> list = new ArrayList<Integer>();
		for(int i = 0; i < 6; i ++) {
			int num = ran.nextInt(45) + 1;
			list.add(num);
		}
		Collections.sort(list);
		req.setAttribute("random", list);
		
		RequestDispatcher rd = req.getRequestDispatcher("/test/test.jsp");
		rd.forward(req, resp);
	}
}
