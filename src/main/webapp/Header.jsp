
<%!public static final String GO_TO_ELECTRONICS_PAGE = "/blackwoodalley-web/ElectronicsServlet";%>
<%!public static final String GO_TO_FURNITURE_PAGE = "/blackwoodalley-web/FurnitureServlet";%>
<%!public static final String GO_TO_ABOUTUS_PAGE = "/blackwoodalley-web/AboutServlet";%>
<%!public static final String GO_TO_CONTACT_PAGE = "/blackwoodalley-web/ContactServlet";%>
<%!public static final String GO_TO_RESTORE_PAGE = "/blackwoodalley-web/RestoreServlet";%>

<%!public static final String GO_TO_TRACKREQUEST_PAGE = "/blackwoodalley-web/TrackRequestServlet";%>


<header>
	<!-- menu-bar starting -->
	<!--  communicate-us starting -->

	<div class="communicate-us">

		<div class="sub-communicate-us">
			<a class="connect" href="tel:+9876543210"> <i
				class="fa-solid fa-phone"></i> 9876543210
			</a> <a class="connect" href="mailto:blackwoodalley@gmail.com"> <i
				class="fa-solid fa-envelope"></i>blackwoodalley@gmail.com
			</a>
		</div>

		<div class="menu-bar">
			<a href="https://twitter.com" aria-label="twitter"> <i
				class="fa-brands fa-twitter"></i>
			</a> <a href="https://facebook.com" aria-label="facebook"> <i
				class="fa-brands fa-facebook-f"></i>
			</a> <a href="https://pinterest.com" aria-label="pinterest"> <i
				class="fa-brands fa-pinterest"></i>
			</a> <a href="https://instagram.com" aria-label="instagram"> <i
				class="fa-brands fa-instagram"></i>
			</a> <a href="https://youtube.com" aria-label="youtube"> <i
				class="fa-brands fa-youtube"></i>
			</a>
		</div>

	</div>

	<!--  communicate-us ends -->

	<div class="line"></div>

	<div class="navigate">
		<div class="sub-logo">
			<a class="navi" href="./index.html"> <img class="logo"
				src="assets/images/index_page/logo.png" alt="logo_for_webpage">
		</div>
		</a>
		<div class="sub-navigate">
			<ul id="whole_nav">

				<li><a class="service" href="">About</a>
					<div class="sub-service">

						<ul>
							<li><a class="sub-service1" href=<%=GO_TO_ABOUTUS_PAGE%>>About
									us</a></li>
							<li><a class="sub-service1"
								href=<%=GO_TO_RESTORE_PAGE%>>How we restore</a></li>

						</ul>
					</div></li>
				<li><a class="service" href="">Service</a>
					<div class="sub-service">
						<ul>
							<li><a class="sub-service1" href=<%=GO_TO_ELECTRONICS_PAGE%>>Repair
									electronics</a></li>
							<li><a class="sub-service1" href=<%=GO_TO_FURNITURE_PAGE%>>Repair
									furniture</a></li>
							<li><a class="sub-service1"
								href="/pages/product/product.html">Buy</a></li>

						</ul>

					</div></li>
				<li><a class="navi" href=<%=GO_TO_CONTACT_PAGE%>>Contact us</a>
				</li>
				<li><a class="navi" href=<%=GO_TO_TRACKREQUEST_PAGE%>>Track
						request</a></li>
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