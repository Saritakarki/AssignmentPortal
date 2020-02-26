<%-- 
    Document   : uploadForm
    Created on : May 9, 2018, 4:12:31 PM
    Author     : Sarita Karki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
       
      <title>File Uploading Form</title>
    </head>
   
   <body>
       <div class="container-fluid" style="background-color:#cccccc; padding: 0">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" style="height:60vh; overflow: hidden" role="listbox">
    <div class="item active">
      <img src="../images/image.png" style="width:100%;" alt="...">
    </div>
    <div class="item">
      <img src="../images/image2.png" style="width:100%;"  alt="...">
    </div>
      <div class="item">
      <img src="../images/image3.png" style="width:100%;" alt="...">
    </div>
      <div class="item">
      <img src="../images/studydeadline.jpg" style="width:100%;" alt="...">
    </div> 
  </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
     </div>
       
       
       <div class="container" style="text-align:center;">
           <br>
          
      <form action = "uploadFile.jsp" method = "post" enctype = "multipart/form-data">
          <div class="container-login100-form-btn">
             
              <input class="login100-form-btn" id="file-upload" type = "file" name = "file" style="height: 40px; width: 250px; border:none; padding:7px; display: none" />
               <label class="login100-form-btn" for="file-upload" class="custom-file-upload" style="height: 40px; width: 250px;"> <span> Select File</span>
</label>
              
              
              <input type="hidden" name="subid" value="<% out.print(request.getParameter("subjects"));%>">
              
          </div>
         <br>
         <div class="container-login100-form-btn">
         <input  class="login100-form-btn" type = "submit" value = "Upload File" style="height: 40px; width: 250px;" />
          </div>
      </form>
       </div>
       
              <script>( function ( document, window, index )
{
	var inputs = document.querySelectorAll( '.login100-form-btn' );
	Array.prototype.forEach.call( inputs, function( input )
	{
		var label	 = input.nextElementSibling,
			labelVal = label.innerHTML;

		input.addEventListener( 'change', function( e )
		{
			var fileName = '';
			if( this.files && this.files.length > 1 )
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
			else
				fileName = e.target.value.split( '\\' ).pop();

			if( fileName )
				label.querySelector( 'span' ).innerHTML = fileName;
			else
				label.innerHTML = labelVal;
		});

		// Firefox bug fix
		input.addEventListener( 'focus', function(){ input.classList.add( 'has-focus' ); });
		input.addEventListener( 'blur', function(){ input.classList.remove( 'has-focus' ); });
	});
}( document, window, 0 ));</script>
       
       
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
