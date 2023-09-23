<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blackwoodalley</title>
    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/login.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
</head>

<body>
<%!public static final String GO_TO_SIGNUP_PAGE = "signup.jsp";%>
    <div class="form-box">
        <div class="button-box">
            <h1>Log In</h1>

        </div>
        <div class="social-media">
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-google"></i>
            <i class="fa-brands fa-twitter"></i>
        </div>
        <div class="box">

            <form id="loginform" method="post" action="<%=request.getContextPath() %>/LoginServlet">

                <input type="email" name="email" id="emailid" class="text" placeholder="Email_id" required>
                <input type="password" name="password" id="password" class="text" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" title="UpperCase, LowerCase, Number/SpecialChar and min 8 Chars" placeholder="Enter password" required>

                <a class="forgot" name="forget_password" href="">forgot password?</a>

                <a class="new-here" name="new_here" href=<%=GO_TO_SIGNUP_PAGE%>>I'm new here</a>

                <button type="submit" class="submit">Login</button>
            </form>
        </div>

    </div>

</body>
<script src="../javascript/login.js">

</script>

</html>