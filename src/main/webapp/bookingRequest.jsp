<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.restorationbooking.model.*"%>
<%@ page import="java.util.*"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/request.css">
</head>
<body>

    <header>
        <!--  communicate-us ends -->
        </div>

        </div>

        <div class="navigate">
            <div class="sub-logo">
                <img class="logo" src="https://iili.io/HyVtDZl.png" alt="logo_for_webpage">
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
    <main>
        <div class="backround-image">
            <h1>REQUEST A QUOTE</h1>

        </div>
        <div class="request-box">

            <p>Do you have an item or items you would like to repair or restore?
                Not sure about the process or what’s possible?</p>

            <p>No worries—you’re in the best of hands! Complete the form below, attach pictures if you have them.</p>

            <p>One of our Restoration Consultants will be in touch soon to discuss
                your goals and vision for your piece(s). We look forward to connecting with you!</p>
            <h2>Request a quote</h2>


            <form id="request_form"  method = "post" action ="<%=request.getContextPath() %>/AddBookingDetailServlet">

                <div class="full-form">
                    <div class="both-side">
                        <div class="side">
                            <div class="elements">
                                <label for="first-name">
                                   Name<i class="fa-solid fa-star-of-life"></i>
                                </label>
                                <input type="text" class="request_book" name="userName" id="first_name"
                                    pattern="[A-Za-z]{3,32}" required>
                            </div>
                            <div class="elements">
                                <label for="last-name">
                                    Product name<i class="fa-solid fa-star-of-life"></i>
                                </label>
                                <input type="text" class="request_book" name="productName" id="product_name"
                                    pattern="[A-Za-z]{3,32}" required>
                            </div>
                            <div class="elements">
                                <label for="email">
                                    E-mail<i class="fa-solid fa-star-of-life"></i>
                                </label>
                                <input type="email" name="email" id="email" required>
                            </div>
                            <div class="elements">
                                <label for="phone-number">
                                    Phone number<i class="fa-solid fa-star-of-life"></i>
                                </label>
                                <input type="tel" class="request_book" name="phoneNumber" pattern="^[6-9][0-9]{9}$"
                                    id="phone_number" maxlength="10" minlength="10" title="PLease enter 10 digit number"
                                    required>
                            </div>

                            <div class="elements">
                                <label for="categorys">
                                    category of item<i class="fa-solid fa-star-of-life"></i>
                                </label>
                                <!-- <input list="category" name="category" id="categories"> -->
                                <select id="category" name="categoryOfItem">
                                    <option></option>
                                    <option value="HOME_FURNITURE">HOME_FURNITURE</option>
                                    <option value="RADIO">RADIO</option>
                                    <option value="CAMERA">CAMERA</option>
                                    <option value="VOICE_RECORDER">VOICE_RECORDER </option>
                                    <option value="VINTAGE_SWITCH">VINTAGE_SWITCH</option>
                                    <option value="GRAMOPHONE">GRAMOPHONE</option>
                                    <option value="WALKMAN">WALKMAN</option>
                                    <option value="AMPLIFER">AMPLIFER</option>
                                    <option value="CALCULATOR">CALCULATOR</option>
                                    <option value="TELEVISION">TELEVISION</option>
                                    <option value="HEADPHONE">HEADPHONE</option>
                                    <option value="TELEPHONE">TELEPHONE</option>
                                    <option value="COMPUTER">COMPUTER</option>
                                    <option value="TAILORING_MACHINE">TAILORING_MACHINE</option>
                                    <option value="BETTERMASS_LIGHT">BETTERMASS_LIGHT</option>
                                    <option value="FAN">FAN</option>
                                    <option value="OTHERS">OTHERS</option>
                                </select>

                            </div>


                        </div>

                        <div class="side1">

                            <div class="elements">
                                <label for="width">
                                    How old the product is(in years)<i class="fa-solid fa-star-of-life"></i>
                                </label>
                                <input type="text" name="productAge" id="how_old" class="request_book" pattern="[0-9]{1,3}"
                                    minlength="1" maxlength="3" required>
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
                                    <input type="url" name="imageUrl" id="file" class="request_book" required>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="area">
                        <label for="description">Description about the problem of your product:</label>
                        <textarea name="description" id="description" col="20" row="50"></textarea>

                    </div>
                    <button id="request_submit" type="submit">submit</button>

            </form>
        </div>
        
    </main>


</body>
</html>