<%-- 
    Document   : index
    Created on : Apr 6, 2018, 8:40:05 PM
    Author     : Sarita
--%>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body  style="background-color: #84b29b">
    <a href="index.jsp"></a>
    <br> <br>
    
	<div>
            <div class="container-login100-form-btn" >
			<div class="wrap-login100" >
				<div class="login100-pic js-tilt" data-tilt style="alignment-adjust: central">
					<img src="images/logo.gif" alt="IMG">
				</div>

				<form class="login100-form validate-form"  style="alignment-adjust: central">
					<span class="login100-form-title">
						Member Login
					</span>
                                    <div>
                                        <div class="container-login100-form-btn">
                                             <input class="login100-form-btn" type="button" value="Student" onclick="window.location='login/student.jsp'" />
					
                                    </div>
                                    <br> 
                                   
                                         <div class="container-login100-form-btn">
                                        <input class="login100-form-btn" type="button" value="Teacher" onclick="window.location='login/teacher.jsp'" />
					</div>
                                    </div>

					
				</form>
			</div>
		</div>
	</div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
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
	<script src="js/main.js"></script>

</body>
</html>
