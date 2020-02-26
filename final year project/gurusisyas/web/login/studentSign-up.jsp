<%-- 
    Document   : teacherRegistration
    Created on : Apr 12, 2018, 2:24:11 PM
    Author     : my computer
--%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title> Student Registration</title>
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
					<img src="../images/logo1.PNG.gif" alt="IMG">
				</div>

                            <%--<form class="login100-form validate-form"> --%>
                                    <form  class="login100-form validate-form" action="studentRegistration.jsp" name="registration">

					<span class="login100-form-title">
						Student Registration
					</span>
                                        

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="fname"  placeholder="First Name">
						<span class="focus-input100"></span>
                                                
                                    
					</div>

					<div class="wrap-input100 validate-input">
                                            <input class="input100" type="text" name="lname" placeholder="Last Name">
						<span class="focus-input100"></span>
						
					</div>
                                        <div class="wrap-input100 validate-input">
                                            <input class="input100" type="email" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						
					</div>
                                 <div class="wrap-input100 validate-input">
                                            <input class="input100" type="text" name="uname" placeholder="username">
						<span class="focus-input100"></span>
						
					</div>
                                  
					<div class="wrap-input100 validate-input">
						<input class="input100" id="pass" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						
					</div>
                                        <div class="wrap-input100 validate-input">
						<input  class="input100" type="password" name="cpass" placeholder=" Confirm Password">
						<span class="focus-input100"></span>
						
					</div> 

					<div>
                                            
                                            <button class="login100-form-btn" type="submit">Register</button>
                                            <br>
                                                <button class="login100-form-btn" type="reset" value="reset">Clear</button>
					</div>
                                    <br>
                                       
						<a class="txt2" href="student.jsp">
							Already Registered?
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					
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
	

</body>
</html>
