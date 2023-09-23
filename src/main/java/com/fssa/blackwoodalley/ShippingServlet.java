package com.fssa.blackwoodalley;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.restorationbooking.errors.DAOException;
import com.fssa.restorationbooking.errors.InvalidBookingDetailException;
import com.fssa.restorationbooking.model.PickupRequest;
import com.fssa.restorationbooking.service.BookingService;
import com.fssa.restorationbooking.service.PickupService;

/**
 * Servlet implementation class ShippingServlet
 */
@WebServlet("/ShippingServlet")
public class ShippingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		// TODO Auto-generated method stub
		 HttpSession session = request.getSession();
	    int bookingId = (int) session.getAttribute("booKIdWhilePickup");
		String emailId = (String) session.getAttribute("Logedinemail");
//	    System.out.println(emailId);
	    
		String name = request.getParameter("name");
        long phoneNumber = Long.parseLong(request.getParameter("number"));
        String address = request.getParameter("address");
        String landmark = request.getParameter("landmark");
        int pincode = Integer.parseInt(request.getParameter("pin-code"));
        LocalDate date = LocalDate.parse(request.getParameter("date"));
        LocalTime time = LocalTime.parse(request.getParameter("time"));
      
        
       PickupService pickupService = new PickupService();
       BookingService booking = new BookingService();
       PickupService pickupService1 = new PickupService();
       
       
        try {
        	PickupRequest pickup = new PickupRequest();
        	pickup.setPickupName(name);
        	pickup.setPickupPhoneNumber(phoneNumber);
        	pickup.setPickupAddress(address);
        	pickup.setPickupLandMark(landmark);
        	pickup.setPickupPincode(pincode);
        	pickup.setPickupDate(date);
        	pickup.setPickupTime(time);
        	pickup.setEmail(emailId);
        	pickup.setBookId(bookingId);
        	
        	boolean isadded = pickupService.addPickup(pickup);
        	

			List<PickupRequest> pickups= pickupService1.getPickUpByBookId(bookingId);
			

for (PickupRequest pick : pickups) {
    // Access the properties of each PickupRequest object and perform actions as needed

    int pickId = pick.getPickupId(); 
    System.out.println("kai"+ pickId);
    // Fix the variable name here
    // Update the session attribute for each PickupRequest
   
    
    // Update the booking with the pickupPhoneNumber (assuming booking.updatePickupId method does this)
    boolean isUpdated = booking.updatePickupId(pick.getBookId(), pickId);
    

	if (isadded && isUpdated) {
		
		 RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/lastPage.jsp");
    		dispatcher.forward(request, response);
}
	else {
	response.sendRedirect(request.getContextPath() + "/shipping.jsp");
	}
}
}
//        	List<PickupRequest> getByEmail = pickupService1.getPickUpByEmail(emailId);
//        	  request.setAttribute("receiveByEmail", getByEmail);



//if (getByEmail != null) {
//    for (PickupRequest ele : getByEmail) {
//    	int pickUpId = ele.getPickupId();
//    	out.print("print ID"+ pickUpId);
//    }
//    }
//        	
//        	if (isadded && isUpdated) {
//        		
//        		 RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/lastPage.jsp");
//		    		dispatcher.forward(request, response);
//        }
//        	else {
//    		response.sendRedirect(request.getContextPath() + "/shipping.jsp");
//        	}
//		}
        catch (DAOException | SQLException | InvalidBookingDetailException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();

		}
        
        
	}

}