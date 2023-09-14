package com.fssa.blackwoodalley.servlet.day04;




import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetAllBookServlet
 */
@WebServlet("/GetAllBookServlet")
public class GetAllBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");
		session.setMaxInactiveInterval(10);
		PrintWriter out = response.getWriter();
		if(loggedInEmail == null) {
			response.sendRedirect("login.html");
		}
		else {
			out.println("<h1>Printing all books</h1>");
			out.println("<p>Logged In user: "+ loggedInEmail + "</p>");
			out.println("<a href='LogoutServlet'>logout</a>");
		}
	}

}