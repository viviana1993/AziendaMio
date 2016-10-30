<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/stat.css">

<title>Insert title here</title>
</head>
<body>

<!-- inserisco schema header -->
<div class="header">

<h1>Login Page</h1>

</div>
<!-- chiudo schema header -->



<!-- inserisco  container-->
<div class="row">
  
<div class="col-2 menu">
 
  </div>
  
 <!-- apro schema body  -->
    <div class="col-10 body">

<h1>Login page</h1>


<!-- apro form per Login -->
<form action="doLogin.jsp" method="post">
Username: <input type="text" name="username"/> <br>
Password: <input type="password" name="password"/> <br>

<input type="submit" value ="Login"/>

</form>
<!-- chiudo form per Login -->


  </div><!-- chiudo schema body  -->
  
  
<div id="footer">
 
  </div>
  
  <!-- chiudo form per Login -->
  </div> <!--  end of container -->




</body>
</html>