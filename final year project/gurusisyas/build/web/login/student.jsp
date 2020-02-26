<%-- 
    Document   : teacherLogin
    Created on : Apr 12, 2018, 2:32:11 PM
    Author     : Sarita
--%>

<!DOCTYPE html>

<html lang="en">
<head>
	<title> Student Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
<!--===============================================================================================-->
</head>
<body  style="background-color: #84b29b">
 
	<div >
            <div class="container-login100-form-btn" >
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="../images/logo.gif" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="post" id='login-form' name='login-form' action="studentLogin.jsp">
					<span class="login100-form-title">
						Student Login
					</span>
                                    
                                         <div class="wrap-input100 validate-input" data-validate="Username is required">
                                             <input class="input100" type="text" name="uname" placeholder="username" autocomplete="off">
						<span class="focus-input100"></span>
						
					</div>
                                  

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						
					</div>
                                     <%
                                         if(null!=(String)request.getAttribute("errorMessage")){
                                    out.print(request.getAttribute("errorMessage"));
                                   
                                  
                                    } request.setAttribute("errorMessage", "Invalid ");
                                  
                                    %>

                                        
					<div class="container-login100-form-btn">
                                            <button class="login100-form-btn" type="submit" value="login">Login</button>
					</div>


					<div class="text-center p-t-136">
						<a class="txt2" href="${pageContext.request.contextPath}/login/studentSign-up.jsp">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="vendor/jquery/dist/jquery.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/validation.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
        
<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>