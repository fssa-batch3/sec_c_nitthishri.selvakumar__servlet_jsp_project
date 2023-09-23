<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.restorationbooking.model.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/editRequest.css">
</head>
<body>

    <header>

        <!--  communicate-us ends -->

      
        <div class="navigate">
            <div class="sub-logo">
                <img class="logo" src="../assets/images/index_page/logo.png" alt="logo_for_webpage">
            </div>
            <div class="sub-navigate">
                <ul>
                    <li>
                        <a class="navi" href="../index.html">Home</a>
                    </li>
                    <li>
                        <a class="navi" href="../pages/about.html">About</a>
                    </li>
                    <li>
                        <a class="service" href="">Service</a>
                        <div class="sub-service">
                            <ul>
                                <li>
                                    <a class="sub-service1" href="../pages/service/service2.html">repair electronics</a>
                                </li>
                                <li>
                                    <a class="sub-service1" href="../pages/service/service1.html">repair furniture</a>
                                </li>

                            </ul>

                        </div>
                    </li>
                    <li>
                        <a class="navi" href="../pages/restore/restore.html">how we restore</a>
                    </li>
                    
                    <li>
                        <a class="navi" href="../pages/contact.html">contact us</a>
                    </li>
                    <li>
                        <a class="navi" href="../pages/track/track.html">track request</a>
                    </li>
                    <li>
                        <a class="navi" href="../pages/login/login.html">Login</a>
                    </li>
                    <li>
                        <a class="navi-button" href="../pages/request.html">Request a quote</a>
                </ul>
            </div>

        </div>
        <!-- menu-bar ends -->
    </header>


<h1 id="edit_req">Edit the Request</h1>
    <div class="request-box">

       
     


        

        <%
        
//        out.println("Hello" + request.getSession().getAttribute("bookerId"));
//      out.println("Hi" + request.getSession().getAttribute("Logedinemail"));
       
        int bookId = (int) request.getSession().getAttribute("bookerId");

        
//            out.println("nitthu " + bookId);
        
        
        List<BookingRequest> getById = (List<BookingRequest>) request.getAttribute("receiveById");

       
        if (getById != null) {
            for (BookingRequest ele : getById) {
            	
            
        %>

        <form id="request_form" method="post" action ="<%=request.getContextPath() %>/EditRequestServlet">
            <div class="full-form">
                <div class="both-side">
                    <div class="side">
                        <div class="elements">
                            <label for="first-name">
                            User Name<i class="fa-solid fa-star-of-life"></i>
                            </label>
                            <input type="text" class="request_book" name="userName" id="first_name"
                                pattern="[A-Za-z]{3,32}" value="<%=ele.getBookingUserName() %>" required>
                        </div>
                        <div class="elements">
                            <label for="last-name">
                                Product name<i class="fa-solid fa-star-of-life"></i>
                            </label>
                            <input type="text" class="request_book" name="productName" id="product_name"
                                pattern="[A-Za-z]{3,32}" value="<%=ele.getProductName() %>"required>
                        </div>
                        <div class="elements">
                            <label for="email">
                                E-mail<i class="fa-solid fa-star-of-life"></i>
                            </label>
                            <input type="email" name="email" id="email"  value="<%=ele.getUserEmail() %>"required disabled>
                        </div>
                        <div class="elements">
                            <label for="phone-number">
                                Phone number<i class="fa-solid fa-star-of-life"></i>
                            </label>
                            <input type="tel" class="request_book" name="phoneNumber" pattern="^[6-9][0-9]{9}$"
                                id="phone_number" value="<%=ele.getPhoneNumber() %>"maxlength="10" minlength="10" title="PLease enter 10 digit number"
                                required>
                        </div>

                        <div class="elements">
                            <label for="categorys">
                                category of item<i class="fa-solid fa-star-of-life"></i>
                            </label>
                            <!-- <input list="category" name="category" id="categories"> -->
                            <select id="category">
                                <option></option>
                                <option value="home-furniture">Home-furniture</option>
                                <option value="Radio">Radio</option>
                                <option value="Camera">Camera</option>
                                <option value="voice recorder">Voice recorder</option>
                                <option value="vintage switch">vintage switch</option>
                                <option value="gramophone">gramophone</option>
                                <option value="walkman">walkman</option>
                                <option value="Amplifer">Amplifer</option>
                                <option value="Calculator">Calculator</option>
                                <option value="Television">Television</option>
                                <option value="Head-phone">Head-Phone</option>
                                <option value="Telephone">Telephone</option>
                                <option value="computer">Computer</option>
                                <option value="Tailoring-machine">Tailoring-machine</option>
                                <option value="Bettermass-light">Bettermass-light</option>
                                <option value="Fan">Fan</option>
                                <option value="others">Others</option>
                            </select>

                        </div>
                       

                    </div>

                    <div class="side1">

                        <div class="elements">
                            <label for="width">
                                How old the product is(in years)<i class="fa-solid fa-star-of-life"></i>
                            </label>
                            <input type="text" name="productAge" id="how_old" class="request_book" pattern="[0-9]{1,3}"
                                minlength="1" maxlength="3" value="<%=ele.getProductAge() %>" required>
                        </div>

                        <div class="elements">
                            <label for="reason">REASON FOR RESTORATION INQUIRY</label>

                            <div class="reason">
                                <input type="radio" name="reason" class="sentimental"
                                    value="I am sentimental about it.">
                                <label class="why" for="sentimental">I am sentimental about it.</label>
                            </div>

                            <div class="reason">
                                <input type="radio" name="reason" class="sentimental">
                                <label class="why" for="quality" value="My furniture/item
                                is high-end/good quality."> My furniture/item
                                    is high-end/good quality.</label>
                            </div>

                            <div class="reason">
                                <input type="radio" name="reason" class="sentimental" value="I really like the style and I don't want to replace
                                it.">
                                <label class="why" for="like"> I really like the style and I don't want to replace
                                    it.</label>
                            </div>

                            <div class="reason">
                                <input type="radio" name="reason" id="others" value="Others">
                                <label class="why" for="others">Others</label>
                            </div>
                        </div>
                        

                        <div class="elements">

                            <label for="reason">WHAT WOULD YOU LIKE TO TALK TO US ABOUT?</label>

                            <div class="reason">
                                <input type="radio" class="request_book" name="quote" id="quote">
                                <label class="why" for="quote">I want to get a quote for my item.</label>
                            </div>

                            <div class="reason">
                                <input type="radio" class="request_book" name="quote" id="valuable">
                                <label class="why" for="valuable"> I want to know more about your services</label>
                            </div>

                            <div class="elements">
                                <label for="file">
                                    Photo_url<i class="fa-solid fa-star-of-life"></i></label>
                                <input type="url" value="<%=ele.getImageUrl() %>" name="imageUrl" id="file" class="request_book" required>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="area">
                    <label for="description">Description about the problem of your product:</label>
                    <textarea name="description" id="description" col="20" row="50"></textarea>

                </div>
               
                <input type="hidden" name="bookingId" value="<%=bookId%>">
                
                
                <button id="request_submit" type="submit">Edit</button>
                </form>
                <%
                
              
            }
        }
        else {
        	%>
        
        Console.log("is empty");
    	<%	
        }%>
        
                
                
       
    </div>
</body>
</html>
