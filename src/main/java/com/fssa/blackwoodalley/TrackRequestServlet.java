package com.fssa.blackwoodalley;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.restorationbooking.errors.DAOException;
import com.fssa.restorationbooking.model.BookingRequest;
import com.fssa.restorationbooking.service.BookingService;

/**
 * Servlet implementation class TrackRequestServlet
 */
@WebServlet("/TrackRequestServlet")
public class TrackRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrackRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		BookingService bookings = new BookingService();
		try {
			HttpSession session = request.getSession();
			String email = (String) session.getAttribute("Logedinemail");
			
			List<BookingRequest> allList = bookings.getThroughEmail(email);
			request.setAttribute("getByEmail", allList);
			
			
		
			
//			JSONArray accountsJSonArray = new JSONArray(allList);
//			request.setAttribute("accountsJSonArray", accountsJSonArray);
			
		} catch (DAOException e) {
			e.printStackTrace();

		} catch (SQLException e) {
			e.printStackTrace();

		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/trackRequest.jsp");
		dispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
