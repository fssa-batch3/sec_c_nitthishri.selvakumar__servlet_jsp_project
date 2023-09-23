<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/furniture.css">
</head>

<body>
<%!public static final String GO_TO_BOOKINGREQUEST_PAGE = "../blackwoodalley-web/BookingRequestServlet";%>

    <jsp:include page="Header.jsp"/>
    <main>
        <div class="full-body">
            <!--aside-start-->
            <aside>
                <div class="full-aside">

                    <div class="sub1-aside">
                        <h4>Antique furniture:</h4>

                        <ul>

                            <li>
                                <a href="../../pages/request.html">home furnitures</a>
                            </li>

                            <li>
                                <a href="../../pages/request.html">instrumental furniture</a>
                            </li>

                            <li>
                                <a href="../../pages/request.html">outdoor furniture</a>
                            </li>
                        </ul>
                    </div>

                    <div class="sub2-aside">
                        <h4>Antique electronics:</h4>

                        <ul>

                            <li>Radio</li>
                            <li>Camera</li>
                            <li>voice recorder</li>
                            <li>Video recorder</li>
                            <li>Vintage switch</li>
                            <li>Walkman</li>
                            <li>Gramophone</li>
                            <li>amplifer</li>
                            <li>Calculator</li>
                            <li>Television</li>
                            <li>Head phone</li>
                            <li>Telephone</li>
                            <li>1980's computer</li>
                            <li>Tailoring machine</li>
                            <li>Bettermass light </li>
                            <li>Fan</li>

                        </ul>

                    </div>

                </div>
            </aside>
            <!--aside-end-->

            <div class="near-aside">
                <div class="furniture-imgs">

                    <div class="outer-box">
                        <a href=<%=GO_TO_BOOKINGREQUEST_PAGE%>>
                            <img class="furniture" src="/blackwoodalley-web/assets/images/service1_page/top-one.jpeg" alt="antique">
                            <h3>Home furniture</h3>
                        </a>
                    </div>

                    <div class="outer-box">
                        <a href=<%=GO_TO_BOOKINGREQUEST_PAGE%>>
                            <img class="furniture" src="/blackwoodalley-web//assets/images/service1_page/top-two.jpeg" alt="antique">
                            <h3>Instrumental furniture</h3>
                        </a>
                    </div>

                    <div class="outer-box">
                        <a href=<%=GO_TO_BOOKINGREQUEST_PAGE%>>
                            <img class="furniture" src="/blackwoodalley-web//assets/images/service1_page/outdoor.jpeg" alt="antique">
                            <h3>outdoor furniture</h3>
                        </a>
                    </div>

                </div>
                <!--contact us-->
                <div class="memories">
                    <h1>RESTORE YOUR FAMILY MEMORIES</h1>
                    <div class="line"></div>
                    <p>Do you have a antique furniture or electronics that you’d like to have evaluate by restore? Here
                        are three ways we can help you now:</p>
                    <div class="communicate">
                        <a class="sub-communicate" href="../../pages/request.html">
                            <i class="fa-solid fa-image"></i>send a photo</a>
                        <a class="sub-communicate" href="../../pages/contact.html">
                            <i class="fa-solid fa-phone"></i>
                            call us (or) <span>
                                <i class="fa-solid fa-envelope"></i>
                                e-mail us</span></a>
                        <a class="sub-communicate" href="../../pages/contact.html">
                            <i class="fa-solid fa-building"></i>bring it to our
                            office</a>
                    </div>
                </div>

            </div>

        </div>
        <!--different level of services-->

        <div class="services">

            <div class="service1">
                <a href="#full-service-level">
                    <i class="fa-solid fa-chair"></i>
                    <h2>Service Levels</h2>
                    <p>Check out the four levels of service we offer to meet your furniture restoration needs.</p>
                </a>
            </div>

            <div class="service1">
                <a href="#how-it-works">
                    <i class="fa-solid fa-screwdriver-wrench"></i>
                    <h2>How It Works</h2>
                    <p>Learn more about our furniture restoration process and how to get started!</p>
                </a>
            </div>

            <div class="service1">
                <a href="#gallery">
                    <i class="fa-solid fa-image"></i>
                    <h2>Before & After Gallery</h2>
                    <p>Check out some of our amazing furniture restorations here.</p>
                </a>
            </div>

        </div>
        <div id="full-service-level">
            <h2>service-levels</h2>
            <div class="service-level">

                <div class="various-levels">
                    <h3>Platinum level</h3>
                    <ul>

                        <li> Disassemble</li>

                        <li> Remove all finish by hand</li>

                        <li> Hand Sanding</li>

                        <li> Hand Staining</li>

                        <li> Choose stain color or match sample</li>

                        <li> Finishing</li>

                        <li> Hardware Replaced</li>

                        <li> Hardware Polished</li>

                        <li> Reassemble</li>

                    </ul>

                </div>

                <div class="various-levels">

                    <h3>Gold level</h3>

                    <ul>

                        <li>Disassemble</li>

                        <li>Solvent Wash</li>

                        <li>Hand staining to match color</li>

                        <li>Hardware polished</li>

                        <li>Remove finish by hand, of one area such as the top</li>

                        <li>Hand sanding</li>

                        <li>Finishing of top and base to match</li>

                        <li>Reassemble</li>
                    </ul>

                </div>

                <div class="various-levels">
                    <h3>Silver level</h3>

                    <ul>

                        <li>Solvent wash/prepare finish</li>

                        <li> Touch up scratches</li>

                        <li> Match color</li>

                        <li>Finishing entire piece, clear coat with lacquer, shellac, oil, or beeswax</li>

                        <li>Hardware cleaned</li>

                    </ul>

                </div>

                <div class="various-levels">
                    <h3>bronze level</h3>
                    <ul>

                        <li>Minor touch-ups to surface level scratches, dents,
                            or dings in the finish or paint—this can be in your home or in-shop, depending on the
                            severity.
                        </li>

                        <li> Re-glue of a slightly loose joint</li>

                        <li> Minor drawer repair for one drawer</li>

                    </ul>

                </div>

            </div>
        </div>

        <div id="how-it-works">

            <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/working.jpeg" alt="antique">

            <div class="sub-how-it-works">

                <h2>How It Works</h2>
                <h3>How do you know which level is best for your precious piece? It depends on several factors:</h3>

                <h3> How do you visualize it when it's restored?</h3>

                <h3> What is your intended use for the piece(s)?</h3>

                <h3>What type of damage it has suffered—breaks,
                    veneer damage, faded finish, water/fire damage, etc.?</h3>

                <h3>What quality of wood or material is it?</h3>

                <p>If you’re not sure what level of service your piece may need, our Restoration
                    Consultants can evaluate your piece(s), understand more about your goals and your vision,
                    and guide you with custom furniture restoration options to meet your specific needs. </p>

                <p> Click the button below to tell us about your piece(s) and a
                    Restoration Consultant will be in touch soon to discuss restoring your furniture.</p>

            </div>

        </div>
        <!--images starting-->
        <div id="gallery">

            <h2>Before and After gallery</h2>
            <figure>

                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/before1.png" alt="antique">
                    <h3>before</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after1.png" alt="antique">
                    <h3>after</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/before2.png" alt="antique">
                    <h3>before</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after2.png" alt="antique">
                    <h3>after</h3>
                </div>

                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/before3.png" alt="antique">
                    <h3>before</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after3.png" alt="antique">
                    <h3>after</h3>
                </div>

                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/before4.png" alt="antique">
                    <h3>before</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after4.png" alt="antique">
                    <h3>after</h3>
                </div>

                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/before5.png" alt="antique">
                    <h3>before</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after5.png" alt="antique">
                    <h3>after</h3>
                </div>

                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/before6.png" alt="antique">
                    <h3>before</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after6.png" alt="antique">
                    <h3>after</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/before7.png" alt="antique">
                    <h3>before</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after7.png" alt="antique">
                    <h3>after</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after-last2.jpg" alt="antique">
                    <h3>after</h3>
                </div>
                <div class="gallery-box">
                    <img class="gallery-imgs" src="/blackwoodalley-web/assets/images/service1_page/after-last1.jpeg" alt="antique">
                    <h3>after</h3>
                </div>

            </figure>

        </div>

    </main>

    <footer>
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <p>company</p>
                    <ul>
                        <li>
                            <a href="../../pages/about.html">about us</a>
                        </li>
                        <li>
                            <a href="../../pages/service/service1.html">our services</a>
                        </li>

                    </ul>
                </div>
                <div class="footer-col">
                    <p>get help</p>
                    <ul>
                        <li>
                            <a href="../../pages/contact.html#faqs">FAQ</a>
                        </li>
                        <li>
                            <a href="../../pages/request.html">Request a quote</a>
                        </li>

                    </ul>
                </div>

                <div class="footer-col">
                    <p>contact us</p>
                    <ul>
                        <li>
                            <a href="../../pages/contact.html">Phone us</a>
                        </li>
                        <li>
                            <a href="../../pages/contact.html">Email us</a>
                        </li>
                        <li>
                            <a href="../../pages/contact.html">Reach us directly</a>
                        </li>
                    </ul>
                </div>

                <div class="footer-col">
                    <p>follow us</p>
                    <div class="social-links">
                        <a href="https://facebook.com" aria-label="facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="https://twitter.com" aria-label="twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="https://instagram.com" aria-label="instagram">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="https://pinterest.com" aria-label="linkedin">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <a href="" class="arrow" aria-label="down-arrow">
            <i class="fa-sharp fa-solid fa-circle-chevron-up"></i>
        </a>
    </footer>
</body>

</html>