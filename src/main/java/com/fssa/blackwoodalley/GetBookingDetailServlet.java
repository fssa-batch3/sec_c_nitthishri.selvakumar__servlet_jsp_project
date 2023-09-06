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

import org.json.JSONArray;

import com.fssa.restorationbooking.dao.DAOException;
import com.fssa.restorationbooking.model.BookingRequest;
import com.fssa.restorationbooking.service.BookingService;

/**
 * Servlet implementation class GetBookingDetailServlet
 */
@WebServlet("/GetBookingDetailServlet")
public class GetBookingDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetBookingDetailServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BookingService bookings = new BookingService();
		try {
			List<BookingRequest> allList = BookingService.getFullBooking();
			request.setAttribute("getAllBooking", allList);
			
			JSONArray accountsJSonArray = new JSONArray(allList);
			
		} catch (DAOException e) {
			e.printStackTrace();

		} catch (SQLException e) {
			e.printStackTrace();

		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("./listAllBookingDetails.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
