package com.fssa.blackwoodalley;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.restorationbooking.service.BookingService;

/**
 * Servlet implementation class StatusUpdateServlet
 */
@WebServlet("/StatusUpdateServlet")
public class StatusUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  int bookingId = Integer.parseInt(request.getParameter("bookingId"));
	        String status = request.getParameter("status");

	        int intStatus = getStatusValue(status);
	        String reason = request.getParameter("reason");

	        // Convert intStatus to the corresponding integer value (1 for Accepted, 2 for Rejected, 0 for others)
	        int statusValue = intStatus;
            BookingService booking = new BookingService();

	        // Call your updateStatusInDatabase method here
	        booking.updateStatus(bookingId, statusValue, reason);

	        // Redirect back to the same page or any other page as needed
	        response.sendRedirect(request.getContextPath() + "/booking.jsp");
	    }

	  private int getStatusValue(String status) {
		    // Map status to the corresponding integer value
		    if ("Accepted".equals(status)) {
		        return 1;
		    } else if ("Rejected".equals(status)) {
		        return 2;
		    } else {
		        return 0;
		    }
		}


	
}


