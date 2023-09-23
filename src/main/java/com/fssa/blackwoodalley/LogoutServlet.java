package com.fssa.blackwoodalley;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        // Get the current session, or create a new one if it doesn't exist
	        HttpSession session = request.getSession(false);

	        if (session != null) {
	            // Invalidate the session
	            session.invalidate();
	        }

	        // Redirect the user to the login page or any other appropriate destination
//	        RequestDispatcher dispatcher = request.getRequestDispatcher("BookingRequestPages/Home.jsp");
//			dispatcher.forward(request, response);
	        response.sendRedirect("/blackwoodalley-web/Home.jsp");
	        
	    }

}



