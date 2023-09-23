package com.fssa.blackwoodalley;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class EditServlet
 */
@WebServlet("/AutoFillRequestServlet")
public class AutoFillRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String bookingIdString = request.getParameter("bookingId");
		 if (bookingIdString != null && !bookingIdString.isEmpty()) {
	            try {
	                // Parse the bookingIdString to an integer

	                int bookingId = Integer.parseInt(bookingIdString);
	     
	                //creating the session 
					HttpSession session = request.getSession();
					session.setAttribute("bookerId",bookingId);
					
					
					
	                // Create an instance of your BookingService
	                BookingService booking = new BookingService();

	                
	                List<BookingRequest> getById =  booking.getParticularBooking(bookingId);
	                request.setAttribute("receiveById", getById);
	                
	                PrintWriter out = response.getWriter();
	                out.println(getById);

//	    			boolean editReq = booking.updateBooking(getById);
	                
	                RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/autoFillRequest.jsp");
		    		dispatcher.forward(request, response);
		    		
		    		
	            }
	        	
			catch (DAOException e) {
				e.printStackTrace();

			}
	            catch (SQLException e) {
	    			e.printStackTrace();

	    		}

	    		
	                
	}

}
}
