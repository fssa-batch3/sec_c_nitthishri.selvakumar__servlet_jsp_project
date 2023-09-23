package com.fssa.blackwoodalley;

import java.io.IOException;
import java.sql.SQLException;

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
 * Servlet implementation class HomeServlet
 */
@WebServlet("/HomeServlet")

public class HomeServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	
	UserService userService = new UserService();       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
	        String email = (String) session.getAttribute("Logedinemail");
	        
	        if (email != null) {
	            try {
	                
	                User user = userService.getUserByEmail(email);
	                
	                session.setAttribute("username", user.getUserName());
	                
	                request.setAttribute("user", user);
	                
//	                String success = (String) request.getAttribute("success");
	                
	                request.setAttribute("success", "Logged In Success");
	                response.sendRedirect("/blackwoodalley-web/Home.jsp");
	                    
//	                request.getRequestDispatcher("/BookingRequestPages/Home.jsp").forward(request, response);
	                
	            } 
	            catch (ServiceException e) {
	            	System.out.println(e.getMessage());
	                e.printStackTrace();
	            } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        } else {
	            System.out.println("email is null");
	        }
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
