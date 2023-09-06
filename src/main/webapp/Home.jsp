<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.restorationbooking.model.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
</head>

<body>

  <jsp:include page="Header.jsp"/>
    <main>
        <div class="bgimage">
            <img class="bglogo" src="assets/images/index_page/logo-nobg.png" alt="antique">
            <h1>Bring back the memories of life</h1>
            <p>
                Blackwoodalley restoration is truly in a class of its own in quality,service and expertises <br>
                we pride ourselves in approaching every pieces.we restore it longevity in mind.we have been
                <br>restoring
                the treasured family furniture and precious electronics.we have no shortcuts and <br> restoration
                process
                we offer in-home evaluations and pick-up and delivery.
            </p>

        </div>

        <!--restore-here starting-->
        <div class="restore-here">
            <div class="restore-furniture">
                <a href="./pages/service/service2.html">
                    <img class="repair" src="assets/images/index_page/repair1.jpg" alt="antique"></a>
                <a class="repair-content" href="./pages/service/service2.html">Restore electronics</a>
            </div>
            <div class="restore-electronics">
                <a href="./pages/service/service1.html">
                    <img class="repair" src="assets/images/index_page/repair2.jpg" alt="antique"></a>
                <a class="repair-content" href="./pages/service/service1.html">Restore furniture</a>
            </div>
        </div>
        <!-- restore-here ends -->

        <!-- who-we-are starting -->
        <div class="who-we-are">
            <h1>Who we are?</h1>
            <div></div>
            <p> Blackwoodalley restoration has been restoring families precious
                antique electronics and furniture. we do not have any shortcut to restore.
                All restoring are not created equal. Restoring is totally differ from repairing.
                Repairing is the act of repairing something but restoring is the
                the process of bringing an object back to a original state.
                We are the working miracles to restore family history and memories.
                we have the highest quality restoration practices and product that we restore last for generation.</p>

        </div>
        <!-- who-we-are ends -->

        <!--video starting-->
        <div class="vid">
            <video class="back-video" autoplay loop muted controls preload="metadata">
                <source src="assets/video/restoring.mp4" type="video/mp4" alt="antique">
                <track label="English" kind="subtitles" srclang="en">
            </video>

            <h1>
                <i class="fa-solid fa-feather-pointed"></i>
                Contact us<i class="fa-solid fa-feather-pointed"></i>
            </h1>
            <p>
                Do you want to restore your family memories? Reach out to us to speak<br> to a restoration consultant
                about your treasured pieces and<br>schedule your evaluation!
            </p>
            <a class="link" href="./pages/contact.html">Connect with us!</a>

            <div class="subvid">
                <h2>
                    <i class="fa-solid fa-feather-pointed"></i>
                    How we work<i class="fa-solid fa-feather-pointed"></i>
                </h2>
            </div>

            <div class="we-have">
                <div class="sub-we-have">
                    <h1>80+</h1>
                    <h2>experts in restore the antique</h3>

                </div>
                <div class="sub-we-have">
                    <h1>700+</h1>
                    <h2>customers</h3>
                </div>
                <div class="sub-we-have">
                    <h1>5200</h1>
                    <h2>antique restoration</h3>
                </div>
            </div>

        </div>
        <!--video ends-->

    </main>

    <footer>
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <p>company</p>
                    <ul>
                        <li>
                            <a href="./pages/about.html">about us</a>
                        </li>
                        <li>
                            <a href="./pages/service/service1.html">our services</a>
                        </li>

                    </ul>
                </div>
                <div class="footer-col">
                    <p>get help</p>
                    <ul>
                        <li>
                            <a href="./pages/contact.html#faqs">FAQ</a>
                        </li>
                        <li>
                            <a href="./pages/request.html">Request a quote</a>
                        </li>

                    </ul>
                </div>

                <div class="footer-col">
                    <p>contact us</p>
                    <ul>
                        <li>
                            <a href="./pages/contact.html">Phone us</a>
                        </li>
                        <li>
                            <a href="./pages/contact.html">Email us</a>
                        </li>
                        <li>
                            <a href="./pages/contact.html">Reach us directly</a>
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

    <script src="main.js"></script>

    <script>
        let insert;
        // let login_insert;
        const last_email = localStorage.getItem("logged_in")
        console.log(last_email);
        const login = document.getElementById("login")
        login.addEventListener("click", event => {
            event.preventDefault();
            if (last_email == '[]') {
                login.innerHTML = `<a class="navi" href="./pages/login/login.html">LogIn<i
                                class="fa-solid fa-arrow-right-from-bracket"></i></a>`
            }
            localStorage.removeItem("logged_in")
            login.innerHTML = 'LogOut<i class="fa-solid fa-arrow-right-to-bracket"></i>'
        }
        )
        const insert_login = document.getElementById("insert_login")
        const insert_profile = document.getElementById("insert_profile")
        let login_insert;
        console.log(whole_nav)
        if (last_email == "[]") {
            console.log("ok")
            login_insert = ` <a class="navi" href="./pages/login/login.html">Login</a>`
            insert_login.innerHTML = login_insert
            insert_profile.innerHTML = ''
        }
        else {
            insert_login.innerHTML = ''
            insert_profile.innerHTML = `<a class="navi" href="./pages/login/userprofile.html"><img class="man"
                                src="./assets/images/index_page/blank_profile.webp"></a>`
        }

        //  const last_email = localStorage.getItem("logged_in")

        const include = document.getElementById("admin");
        if (last_email == "blackwood@gmail.com") {
            insert = ` <li><a class="service" href="">Admin</a>
                        <div class="sub-service">
                            <ul>
                                <li><a class="sub-service1" href="./pages/product_enter.html">product enter</a>
                                </li>
                                <li><a class="sub-service1" href="./pages/repairer_page.html">repairer page</a>
                                </li>

                            </ul>

                        </div>
                    </li> `

            include.innerHTML = insert

        }
    </script>

</body>

</html>