<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.restorationbooking.model.*"%>
<%@ page import="com.fssa.restorationbooking.model.BookingRequest"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="/blackwoodalley-web/assets/css/listAllBooking.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap"
	rel="stylesheet">

</head>

<body>



	<table>
	
		<thead>
		
			<tr>
				<th>Id</th>
				<th>Email</th>
				<th>ProductName</th>
				<th>PhoneNumber</th>
				<th>ImageUrl</th>
				<th>BookingName</th>
				<th>BookingTime</th>
				<th>ProductAge</th>
				<th>CategoryOfItem</th>
				<th>Status</th>

	
			</tr>
			
		</thead>

		<tbody class="table_row">
			<%
			List<BookingRequest> bookingRequest = (List<BookingRequest>) request.getAttribute("getAllBooking");
			if (bookingRequest != null) {
				for (BookingRequest bookings : bookingRequest) {
			%>

			<tr>
				<td><%=bookings.getBookingId()%></td>
				<td><%=bookings.getUserEmail()%></td>
				<td><%=bookings.getProductName()%></td>
				<td><%=bookings.getPhoneNumber()%></td>
				<td><img src="<%=bookings.getImageUrl()%>" alt="Bookings Image">
				</td>
				<td><%=bookings.getBookingUserName()%></td>
				<td><%=bookings.getBookingTime()%></td>
				<td><%=bookings.getProductAge()%></td>
				<td><%=bookings.getBookingCategory()%></td>


				<td>
					<form method = "post" action ="<%=request.getContextPath() %>/StatusUpdateServlet">
					
						<button type="submit" name="status" value="Accepted">Accepted</button>
					
						<button type="submit" name="status" value="Rejected">Rejected</button>
						<input type="hidden" name="bookingId"
							value="<%=bookings.getBookingId()%>">
						<textarea placeholder="Tell us about your experience"
							class="text_reason" name="reason"></textarea>
						<input type="hidden" name="bookingId"
							value="<%=bookings.getBookingId()%>">
					</form>
				</td>


			</tr>
			<%
			}

			} else {
			%>
			<h1>nothing</h1>
			<%
			}
			%>
		</tbody>
	</table>


	

</body>

</html>