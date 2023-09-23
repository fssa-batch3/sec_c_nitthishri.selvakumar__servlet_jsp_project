<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/shipping.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
</head>

<body>
<jsp:include page="Header.jsp"/>
<%
String LoginEmail = (String) session.getAttribute("Logedinemail");
%>
    <main>
        <div class="full-page">
            <div class="verification">
                <h1>Request pickup</h1>
                <form  id="shipping_form"  method = "post" action ="<%=request.getContextPath() %>/ShippingServlet">
                    <div class="full-side">
                        <div class="side">
                            <div class="column">
                                <label for="name">Name</label>
                                <input type="name" name="name" id="name" required="true" >
                            </div>
                            <div class="column">
                                <label for="number">Phone Number</label>
                                <input type="number" name="number" id="number" required="true" >
                            </div>
                            <div class="column">
                                <label for="email">Email</label>
                                <input type="email" name="email" id="email-id" required="true" value ="<%=LoginEmail%>"disabled>
                            </div>
                            <div class="column">
                                <label for="address">Address </label>
                                <input type="text" name="address" id="address" required>
                            </div>

                        </div>
                        <div class="side">
                            <div class="column">
                                <label for="landmark">Landmark</label>
                                <input type="text" name="landmark" id="landmark" required>
                            </div>

                            <div class="column">
                                <label for="pin-code">Pincode </label>
                                <input type="number" name="pin-code" id="pin-code" required>
                            </div>

                            <div class="column">
                                <label for="date">Date</label>
                                <input type="date" name="date" id="date" required>
                            </div>

                            <div class="column">
                                <label for="time">Time</label>
                                <input type="time" name="time" id="time" required>
                            </div>
                        </div>
                    </div>
                    <textarea id="message" name="message" rows="6" cols="75" placeholder="Message"></textarea>
                    <br>
                    <button id="pickup_submit">submit</button>

                </form>

            </div>
        </div>

       
    </main>
</body>

</html>