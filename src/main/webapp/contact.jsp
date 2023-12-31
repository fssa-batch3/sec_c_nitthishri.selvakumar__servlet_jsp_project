<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Blackwoodallay|contact us</title>

    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/contact.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap');
    </style>
</head>

<body>

<%
String LoginEmail = (String) session.getAttribute("Logedinemail");
System.out.println(LoginEmail);
int bookingId = (int) session.getAttribute("bookersId");
System.out.println(bookingId);
%>

    <header>
    <%=LoginEmail%>
    
    
    
        <!--  communicate-us ends -->

        <div class="navigate">
            <div class="sub-logo">
                <a class="navi" href="./../index.html">
                    <img class="logo" src="./../assets/images/index_page/logo.png" alt="logo_for_webpage">
            </div></a>
            <div class="sub-navigate">
                <ul id="whole_nav">

                    <li>
                        <a class="service" href="">About</a>
                        <div class="sub-service">

                            <ul>
                                <li>
                                    <a class="sub-service1" href="./../pages/about.html">About us</a>
                                </li>
                                <li>
                                    <a class="sub-service1" href="../../pages/restore/restore.html">How we restore</a>
                                </li>

                            </ul>
                        </div>

                    </li>
                    <li>
                        <a class="service" href="">Service</a>
                        <div class="sub-service">
                            <ul>
                                <li>
                                    <a class="sub-service1" href="./../pages/service/service2.html">Repair electronics</a>
                                </li>
                                <li>
                                    <a class="sub-service1" href="./../pages/service/service1.html">Repair furniture</a>
                                </li>
                                <li>
                                    <a class="sub-service1" href="./../pages/product/product.html">Buy</a>
                                </li>

                            </ul>

                        </div>
                    </li>
                    <li>
                        <a class="navi" href="./../pages/contact.html">Contact us</a>
                    </li>
                    <li>
                        <a class="navi" href="./../pages/track/track.html">Track request</a>
                    </li>
                    <li id="insert_login"></li>
                    <!-- <li><a class="navi" href="./pages/request.html">Restore</a></li> -->
                    <li id="admin">
                        <!-- <a class="service" href="">Admin</a>
                        <div class="sub-service">
                            <ul>
                                <li><a class="sub-service1" href="./pages/product_enter.html">product enter</a>
                                </li>
                                <li><a class="sub-service1" href="./pages/repairer_page.html">repairer page</a>
                                </li>

                            </ul>

                        </div> -->
                    </li>
                    <li id="insert_profile"></li>
                    <li id="login"></li>

                </ul>
            </div>
        </div>
        <!-- menu-bar ends -->

    </header>
    <main>

        <div class="header">
            <h1>The expertise of things never expires</h1>
            <p>Recrete your memories</p>
            <form action="../index.html">
                <button>Get Started</button>
            </form>
        </div>
        <div class="getintouch">
            <div class="left-side">
                <h1>Ask any questions:</h1>
                <p class="para">Please fill out the quick form and we will be in touch with lightning speed</p>
                <form>
                    
                    <input type="text" id="name" placeholder="Name" required>
                    <br>
                    <input type="text" id="email" placeholder="Email" value="<%=LoginEmail%>" disabled  required >
                    <br>
                    <textarea id="message" name="message" rows="6" cols="75" placeholder="Message"></textarea>
                    <br>
                    <button id="sub">Submit</button>
                    
                </form>
            </div>

            <div class="right-side">
                <h1>Connect With Us:</h1>
                <p>For support or any questions</p>
                <p>
                    Email Us: <span class="emailid">blackwoodalley@gmail.com</span>
                </p>
                <p>
                    Phone:<span class="emailid">9876543210</span>
                </p>
                <h2>Address:</h2>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                    <br> Aliquid quo dolorem iure quod veniam quis .
                </p>
            </div>
        </div>
        <h3 class="faq-heading">Frequently asked questions</h3>
        <div id="faqs">
            <div class="side">
                <div class="box">
                    <h4>Can I afford this ? How do I find out?</h4>

                    <p>An easy wat to find out how muc restoration will cost to complete a resotation form
                        and attach a photo or send an email to blackwoodalley@gamil.com . You can also connect in phone
                    </p>

                </div>

                <div class="box">

                    <h4>How do I know my piece is worth restoring?</h4>
                    <p>Fill the request a quote form in our website will help you determine
                        If your answer "yes" to the request,an evaluation can help you make a final decision.
                    </p>
                </div>
            </div>

            <div class="side">
                <div class="box">
                    <h4>Does it cost less to restore than replace?</h4>
                    <p>It depends on the quality, uniqueness and connection you
                        have to your furniture. Connect with us and we cna help you
                        determine your restoration costs versus your replacement costs.
                    </p>
                </div>

                <div class="box">
                    <h4>Does refinishing destroy the value?</h4>
                    <p>Value can often increased through restoration when
                        the correct process is matched to the need and historical
                        value of your furniture.
                    </p>

                </div>
            </div>

            <div class="side">
                <div class="box">
                    <h4>Why would I choose Blackwoodalley restoration? </h4>
                    <p>Our highest priority is providing authentic wood restoration-producing
                        result that stand the test of time and protect the longevity of your piece.We
                        do not take shortcuts.
                    </p>
                </div>

                <div class="box">
                    <h4>What if my piece is a mixture of the Four levels?</h4>
                    <p>We recommend scheduling an in-home evaluation with one of our Restoration Consultants, to discuss
                        your goals and vision and to guide you through what your piece need and
                        what we propose to correct and restore it ot its original condition.
                    </p>

                </div>
            </div>

        </div>

    </main>

    <footer>
        <div class="footer">
            <p>Recreate Your Memories</p>
            <form action="../index.html">
                <button>Get Started</button>
            </form>
        </div>
    </footer>

    <script src="https://smtpjs.com/v3/smtp.js">
    </script >
   
    <script src="/blackwoodalley-web/assets/js/query.js" >
</script>
</body>

</html>