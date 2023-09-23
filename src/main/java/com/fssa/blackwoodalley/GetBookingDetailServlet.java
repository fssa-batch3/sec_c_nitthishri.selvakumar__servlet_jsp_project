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

import com.fssa.restorationbooking.errors.DAOException;
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
			List<BookingRequest> allList = bookings.getFullBooking();
			request.setAttribute("getAllBooking", allList);

            //JSONArray accountsJSonArray = new JSONArray(allList);
			// PrintWriter out = response.getWriter();
			// out.println(accountsJSonArray.toString());
			//out.flush();
			//out.close();

		} catch (DAOException e) {
			e.printStackTrace();

		} catch (SQLException e) {
			e.printStackTrace();

		}
		// response.sendRedirect("BookingRequestPages/listAllBookingDetails.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/listAllBookingDetails.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
