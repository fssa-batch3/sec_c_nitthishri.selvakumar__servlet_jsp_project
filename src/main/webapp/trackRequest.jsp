<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.restorationbooking.model.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"
        href="/blackwoodalley-web/assets/css/trackRequest.css">
    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        rel="stylesheet">
</head>   

<body>
   
    <jsp:include page="Header.jsp"/>

    <div id="whole_full_box">

        <%
        List<BookingRequest> getByEmail = (List<BookingRequest>) request.getAttribute("getByEmail");
        if (getByEmail != null) {
            for (BookingRequest ele : getByEmail) {
        %>

        <div id="both_box">

            <%
            if (ele.getBookingStatus() == 0 && ele.getPickUpId() == 0) {
            %>
            <div class="full_box">
                <div id="img_box">
                    <img src="<%=ele.getImageUrl() %>" id="booker_image"
                        alt="antique_repair">
                </div>
                <div id="detail_box">
                    <p id="booker_name">
                        Name<span id="book_name">:<%=ele.getBookingUserName() %></span>
                    </p>

                    <p id="booker_Age">
                        Product Age<span id="book_age">:<%=ele.getProductAge() %></span>
                    </p>
                    <p id="booker_category">
                        PhoneNumber<span id="book_category">:<%=ele.getPhoneNumber() %></span>
                    </p>
                 
                    <p id="booker_item_category">
                        Category Item<span id="book_category_item">:<%=ele.getProductName() %></span>
                    </p>
                    <input type="hidden" name="bookingId"
					value="<%=ele.getBookingId()%>">
                   
                    <form  action ="<%=request.getContextPath() %>/AutoFillRequestServlet" method="post">
                    <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
                    <button type="submit" id="edit_bt">Edit</button>
                    </form>
                   
                 <form  action ="<%=request.getContextPath() %>/DeleteRequestServlet" method="post">
                    <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
                    <button type="submit" id="delete_bt">Delete</button>
                </form>
                
                </div>
            </div>

            <%
            } else {
            %>
            <div class="full_box">
                <div id="img_box">
                    <img src="<%=ele.getImageUrl() %>" id="booker_image"
                        alt="antique_repair">
                </div>
                <div id="detail_box">
                    <p id="booker_name">
                        Name<span id="book_name">:<%=ele.getBookingUserName() %></span>
                    </p>

                    <p id="booker_Age">
                        Product Age<span id="book_age">:<%=ele.getProductAge() %></span>
                    </p>
                    <p id="booker_category">
                        PhoneNumber<span id="book_category">:<%=ele.getPhoneNumber() %></span>
                    </p>
                  
                    <p id="booker_category">
                    Category<span id="booking_category">:<%=ele.getCategoryOfItem() %></span>
                </p>
                <p id="booker_item_category">
                Category Item<span id="book_category_item">:<%=ele.getProductName() %></span>
            </p>
                </div>
            </div>

            <%
            }
            %>
            <%
            if (ele.getBookingStatus() == 0 && ele.getPickUpId() == 0) {
            %>
            <div id="track_report">
            <p id="para_track_report">The request for the restore your
                product is keep under process and you will check the result after
                24 hours</p>
            <div id="underprocess">...Underprocess</div>
            <form  action ="<%=request.getContextPath() %>/ContactBookIdServlet" method="post">
            <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
            <button type="submit" id="clarify" >Clarify your doubt</button>
            </form>
           
        </div>
        <%
        } else if (ele.getBookingStatus() == 1 &&  ele.getPickUpId() == 0) {
        %>
        <div id="track_report">
            <p id="para_track_report"><%=ele.getReason() %></p>
            <div id="accepted">Accepted</div>
            <form  action ="<%=request.getContextPath() %>/ContactBookIdServlet" method="post">
            <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
            <button type="submit"  id="acc_clarify">Clarify your doubt</button>
            </form>
           
                <form  action ="<%=request.getContextPath() %>/GetBookIdServlet" method="post">
                <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
                <button type="submit" id="pickup">Request Pickup</button>
                </form>
        </div>
        <%
        } else if (ele.getBookingStatus() == 2 &&  ele.getPickUpId() == 0){
        %>
        <div id="track_report">
            <p id="para_track_report"><%=ele.getReason() %></p>
            <div id="rejected">Rejected</div>
            
            <form  action ="<%=request.getContextPath() %>/ContactBookIdServlet" method="post">
            <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
            <button type="submit"  id="clarify">Clarify your doubt</button>
            </form>
            
            
        </div>
        <%
        }
        else {
        %>
        <div id="track_report">
        <p id="para_track_report"><%=ele.getReason() %></p>
        <div id="accepted">Accepted</div>
        <form  action ="<%=request.getContextPath() %>/ContactBookIdServlet" method="post">
        <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
        <button type="submit"  id="acc_clarify">Clarify your doubt</button>
        </form>
       
            <form  action ="<%=request.getContextPath() %>/GetBookIdServlet" method="post">
            <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
            <button type="submit" id="pickup">Edit Pickup Details</button>
            </form>
            
            <form  action ="<%=request.getContextPath() %>/GetBookIdServlet" method="post">
            <input type="hidden" name="bookingId" value="<%=ele.getBookingId()%>">
            <button type="submit" id="editPickup">View Pickup Details</button>
            </form>
    </div>
        <% 
        }
        %>
    </div> 
    <%
    }
        }
     else{
    %>
    <p>empty</p>
    <%
    }
    %>
</div>
</body>

</html>
