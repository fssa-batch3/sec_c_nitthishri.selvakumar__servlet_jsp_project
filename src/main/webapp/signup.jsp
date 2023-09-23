M<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blackwoodalley</title>
    <link rel="stylesheet" href="/blackwoodalley-web/assets/css/signup.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
</head>

<body>
    <div class="form-box">
        <div class="button-box">
            <h1>Signup</h1>

        </div>
        <div class="social-media">
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-google"></i>
            <i class="fa-brands fa-twitter"></i>
        </div>
        <div class="box">

            <form id="register_form" type="submit" method="post" action ="<%=request.getContextPath() %>/SignUpServlet">

                <input type="text" class="text" placeholder="UserName" id="first_name"
                    title="Name shouldn't contain spaces and Number" name="username" pattern="[A-Za-z]{3,32}"
                    title="First name cannot contain spaces" required="true">
               

                <input type="email" class="text" name="emailId"  pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]{2,}[.][a-zA-Z]{2,4}$" placeholder="E-mail" id="email" required="true">

                <input type="password" class="text" name="password" placeholder="Enter password" id="password" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" title="UpperCase, LowerCase, Number/SpecialChar and min 8 Chars" required="true">

                <button type="submit" class="submit">Get started</button>

            </form>

        </div>

    </div>

    <script src="../javascript/signup.js">

    </script>
</body>

</html>