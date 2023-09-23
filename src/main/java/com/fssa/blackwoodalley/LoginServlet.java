package com.fssa.blackwoodalley;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.restorationbooking.model.User;
import com.fssa.restorationbooking.service.UserService;
import com.google.protobuf.ServiceException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	UserService userservice = new UserService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		RequestDispatcher rd = null;

		String emailIdLogin = request.getParameter("email");
		String passwordLogin = request.getParameter("password");

	
			// Validate and check user in the database
			
			
			try {
				User user = userservice.getUserByEmail(emailIdLogin);
				if(user.getPassword().equals(passwordLogin)) {

					HttpSession session = request.getSession();
					session.setAttribute("Logedinemail", emailIdLogin);
					
					request.setAttribute("loginSuccess", "Logged In Success");


					rd = request.getServletContext().getRequestDispatcher("/HomeServlet");
					rd.forward(request, response);

				}
				else {
					
					request.setAttribute("invalidCredentials", "Invalid Credentials: email or password is wrong");
					rd = request.getRequestDispatcher("/signup.jsp");
				}
			} catch (ServiceException | SQLException e) {

				PrintWriter out = response.getWriter();
				out.append(e.getMessage());
				
			}
			
		

	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
