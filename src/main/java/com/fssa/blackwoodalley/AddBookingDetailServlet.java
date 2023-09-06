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

import com.fssa.restorationbooking.dao.DAOException;
import com.fssa.restorationbooking.model.BookingRequest;
import com.fssa.restorationbooking.service.BookingService;
import com.fssa.restorationbooking.validation.InvalidBookingDetailException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AddBookingDetailServlet")
public class AddBookingDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userEmail = request.getParameter("email");
		String productName = request.getParameter("productName");
		String phoneNumber = request.getParameter("phoneNumber");
		String imageUrl = request.getParameter("imageUrl");
		String bookingUserName = request.getParameter("userName");
		String categoryOfItems = request.getParameter("categoryOfItem");
		String productAge = request.getParameter("productAge");
	
		String category = request.getParameter("categoryOfItems");

	  
	// CategoryOfItem category = CategoryOfItem.valueToEnumMapping(CategoryOfItems);
		 
		int strProductAge =Integer.parseInt(productAge);
		
		PrintWriter out = response.getWriter();
	      out.println("Selected value: " + categoryOfItems);

		
		BookingService bookingService = new BookingService();
		
//		 BookingRequest booking =new BookingRequestBuilder().ProductNameBuilder(productName).PhoneNumberBuilder(phoneNumber).ImageUrlBuilder(imageUrl).BookingUserNameBuilder(bookingUserName).CategoryOfItemBuilder(category).ProductAgeBuilder(strProductAge).build();
	  
		try {
			 
		       BookingRequest book = new BookingRequest();
		     
		       BookingRequest book1 = new BookingRequest(); 
		       
		      
		       book.setUserEmail(userEmail);
		       book.setProductName(productName);
		       book.setPhoneNumber(phoneNumber);
		       book.setImageUrl(imageUrl);
		       book.setBookingUserName(bookingUserName);
		       book.setBookingCategory(category);
		       book.setProductAge(strProductAge);
					       
		     boolean isadded = bookingService.addBooking(book);
 
		     if(isadded) {
		    	 System.out.println("successfully added to db");
		    	 out.println("<h1>Successfully added to the database</h1>");
		    	 
		    	 RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/GetBookingDetailServlet");
		 		dis.forward(request, response);
		     }
		    
		}
		
		catch(DAOException |SQLException| InvalidBookingDetailException  e){
			System.out.println(e.getMessage());
			e.printStackTrace();
	
		} 
		
	}

}
