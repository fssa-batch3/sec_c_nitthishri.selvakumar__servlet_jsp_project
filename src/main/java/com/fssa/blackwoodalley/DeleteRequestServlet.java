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

import com.fssa.restorationbooking.errors.DAOException;
import com.fssa.restorationbooking.service.BookingService;

/**
 * Servlet implementation class deleteRequestServlet
 */
@WebServlet("/DeleteRequestServlet")
public class DeleteRequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the bookingId parameter from the request
        String bookingIdString = request.getParameter("bookingId");

        // Check if bookingIdString is not null and not empty
        if (bookingIdString != null && !bookingIdString.isEmpty()) {
            try {
                // Parse the bookingIdString to an integer
                int bookingId = Integer.parseInt(bookingIdString);

                // Create an instance of your BookingService
                BookingService bookings = new BookingService();

                // Attempt to delete the booking
                boolean isDeleted = bookings.deleteBooking(bookingId);

                if (isDeleted) {
                    // Redirect to the success page
//                    response.sendRedirect("/TrackRequestServlet");
                	RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/TrackRequestServlet");
    				dis.forward(request, response);
                }
//                    else {;
//                    // Handle the case where deletion was not successful
//                    PrintWriter out = response.getWriter();
//                    out.println("Failed to delete booking");
//                }
            } catch (NumberFormatException e) {
                // Handle the case where bookingIdString cannot be parsed as an integer
                PrintWriter out = response.getWriter();
                out.println("Invalid bookingId format");
            } catch (DAOException e) {
                e.printStackTrace();
                // Handle any other exceptions related to DAO operations
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle SQL exceptions
            }
        } else {
            // Handle the case where bookingId parameter is null or empty
            PrintWriter out = response.getWriter();
            out.println("bookingId is null or empty");
        }
    }
}
