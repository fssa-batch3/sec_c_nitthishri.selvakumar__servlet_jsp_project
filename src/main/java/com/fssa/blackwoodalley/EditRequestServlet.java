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

import com.fssa.restorationbooking.errors.DAOException;
import com.fssa.restorationbooking.errors.InvalidBookingDetailException;
import com.fssa.restorationbooking.model.BookingRequest;
import com.fssa.restorationbooking.service.BookingService;

@WebServlet("/EditRequestServlet")
public class EditRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get parameters from the request
		String productName = request.getParameter("productName");
		String phoneNumber = request.getParameter("phoneNumber");
		String imageUrl = request.getParameter("imageUrl");
		String bookingUserName = request.getParameter("userName");
		String productAge = request.getParameter("productAge");
		String bookingId = request.getParameter("bookingId");
//		System.out.println(bookingId + "hellikjuhgofghjkmjnhbv");

		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("Logedinemail");
//		System.out.println(email + "eeeee");
		// Check if bookingId is not empty
		if (bookingId != null && !bookingId.isEmpty()) {
			try {
				// Parse the integer values
				int strProductAge = Integer.parseInt(productAge);
				int strBookingId = Integer.parseInt(bookingId);

				// Create a BookingRequest object
				BookingRequest book = new BookingRequest();
				book.setUserEmail(email);
				book.setProductName(productName);
				book.setPhoneNumber(phoneNumber);
				book.setImageUrl(imageUrl);
				book.setBookingUserName(bookingUserName);
				book.setProductAge(strProductAge);
				book.setBookingId(strBookingId);
                
				// Initialize BookingService
				BookingService bookingService = new BookingService();

				// Update the booking
				boolean isUpdated = bookingService.updateBooking(book);

				if (isUpdated) {
					// If the booking is updated successfully, forward to the tracking page
					RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/TrackRequestServlet");
					dis.forward(request, response);
				} else {
					// Handle the case where the booking update was not successful
					PrintWriter out = response.getWriter();
					out.println("Booking update failed.");
				}
			} catch (NumberFormatException e) {
				// Handle the case where parsing integers fails
				PrintWriter out = response.getWriter();
				out.println("Invalid age or bookingId.");
			} catch (InvalidBookingDetailException | DAOException | SQLException e) {
				// Handle other exceptions
				e.printStackTrace();
			}
		} else {
			// Handle the case where bookingId parameter is null or empty
			PrintWriter out = response.getWriter();
			out.println("Booking ID is missing.");
		}
	}
}
