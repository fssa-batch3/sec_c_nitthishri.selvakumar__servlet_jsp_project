
<%!public static final String GO_TO_ELECTRONICS_PAGE = "../ElectronicsServlet";%>
<%!public static final String GO_TO_FURNITURE_PAGE = "../FurnitureServlet";%>
<%!public static final String GO_TO_ABOUTUS_PAGE = "../AboutServlet";%>
<%!public static final String GO_TO_CONTACT_PAGE = "../ContactServlet";%>
<%!public static final String GO_TO_RESTORE_PAGE = "../RestoreServlet";%>

<%!public static final String GO_TO_TRACKREQUEST_PAGE = "../TrackRequestServlet";%>

<%!public static final String GO_TO_LISTALLBOOKING_PAGE = "../GetBookingDetailServlet";%>



<%!public static final String GO_TO_LOGOUT_PAGE = "../LogoutServlet";%>


<%
String LoginStatus = (String) session.getAttribute("Logedinemail");
%>
<%=LoginStatus + "nithi"%>
<%
if (LoginStatus == null || LoginStatus.isEmpty()) {
%>
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
			<a class="navi" href="<%=request.getContextPath() %>/BookingRequestPages/Home.jsp"> <img class="logo"
				src="/blackwoodalley-web/assets/images/index_page/logo.png" alt="logo_for_webpage">	</a>
		</div>
	
		<div class="sub-navigate">
			<ul id="whole_nav">

				<li><a class="service" href="">About</a>
					<div class="sub-service">

						<ul>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/AboutServlet">About
									us</a></li>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/RestoreServlet">How
									we restore</a></li>

						</ul>
					</div></li>
				<li><a class="service" href="">Service</a>
					<div class="sub-service">
						<ul>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/ElectronicsServlet">Repair
									electronics</a></li>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/FurnitureServlet">Repair
									furniture</a></li>
							<li><a class="sub-service1"
								href="/pages/product/product.html">Buy</a></li>

						</ul>

					</div></li>
				<li><a class="navi" href="<%=request.getContextPath() %>/ContactServlet">Contact us</a>
				</li>
				<li><a class="navi" href="<%=request.getContextPath() %>/TrackRequestServlet">Track
						request</a></li>
				<li><a class="navi" href="<%=request.getContextPath() %>/login.jsp">Login</a></li>


			</ul>
		</div>
	</div>
	<!-- menu-bar ends-->

</header>

<%
} else if("blackwoodalley@gmail.com".equals(LoginStatus))  {
%>
<!-- User is logged in -->

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
			<a class="navi" href="<%=request.getContextPath() %>/BookingRequestPages/Home.jsp"> <img class="logo"
				src="/blackwoodalley-web/assets/images/index_page/logo.png" alt="logo_for_webpage"></a>
		</div>
		
		<div class="sub-navigate">
			<ul id="whole_nav">

				<li><a class="service" href="">About</a>
					<div class="sub-service">

						<ul>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/AboutServlet">About
									us</a></li>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/RestoreServlet">How
									we restore</a></li>

						</ul>
					</div></li>
				<li><a class="service" href="">Service</a>
					<div class="sub-service">
						<ul>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/ElectronicsServlet">Repair
									electronics</a></li>
							<li><a class="sub-service1" href="<%=request.getContextPath() %>/FurnitureServlet">Repair
									furniture</a></li>
							<li><a class="sub-service1"
								href="/pages/product/product.html">Buy</a></li>

						</ul>

					</div></li>
				<li><a class="navi" href="<%=request.getContextPath() %>/ContactServlet">Contact us</a>
				</li>
				<li><a class="navi" href="<%=request.getContextPath() %>/TrackRequestServlet">Track
						request</a></li>

				
						
				<li><a class="navi" href="<%=request.getContextPath() %>/LogoutServlet">Logout</a></li>
				<li><a class="navi" href="<%=request.getContextPath() %>/GetBookingDetailServlet">Admin</a>


			</ul>
		</div>
	</div>
	<!-- menu-bar ends -->

</header>

 

<%
}
else{
%>
 
<header>

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
		<a class="navi" href="<%=request.getContextPath() %>/Home.jsp"> <img class="logo"
			src="/blackwoodalley-web/assets/images/index_page/logo.png" alt="logo_for_webpage"></a>
	</div>
	
	<div class="sub-navigate">
		<ul id="whole_nav">

			<li><a class="service" href="">About</a>
				<div class="sub-service">

					<ul>
						<li><a class="sub-service1" href="<%=request.getContextPath() %>/AboutServlet">About
								us</a></li>
						<li><a class="sub-service1" href="<%=request.getContextPath() %>/RestoreServlet">How
								we restore</a></li>

					</ul>
				</div></li>
			<li><a class="service" href="">Service</a>
				<div class="sub-service">
					<ul>
						<li><a class="sub-service1" href="<%=request.getContextPath() %>/ElectronicsServlet">Repair
								electronics</a></li>
						<li><a class="sub-service1" href="<%=request.getContextPath() %>/FurnitureServlet">Repair
								furniture</a></li>
						<li><a class="sub-service1"
							href="/pages/product/product.html">Buy</a></li>

					</ul>

				</div></li>
			<li><a class="navi" href="<%=request.getContextPath() %>/ContactServlet">Contact us</a>
			</li>
			<li><a class="navi" href="<%=request.getContextPath() %>/TrackRequestServlet">Track
					request</a></li>

			

			<li><a class="navi" href="<%=request.getContextPath() %>/LogoutServlet">Logout</a></li>
			


		</ul>
	</div>
</div>
<!-- menu-bar ends -->

</header>



	<%
}
%>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
