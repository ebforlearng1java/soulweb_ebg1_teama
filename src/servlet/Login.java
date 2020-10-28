package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet{


	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
//
		String username =request.getParameter("USERNAME");
		String pw =  request.getParameter("PASSWORD");


		HttpSession session = request.getSession(true);
		session.setAttribute("msg", "ログインできました！");


		request.getRequestDispatcher("/find.jsp").forward(request, response);
//		response.sendRedirect("/find.jsp");

	}



}
