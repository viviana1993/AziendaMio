<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="dipendente" class="bean.DipendenteBean"
	scope="session"></jsp:useBean>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="Stylesheet" type="text/css" href="css/stat.css">

<title>Insert title here</title>

</head>
<body>


<div id="Container">
  
  <div id="header">
<h1>Header</h1>
  
  </div>
  
  
    <div  class="menu">
 
  <jsp:include page="MenuLateraleClienteIniziale.jsp"></jsp:include>
  
  </div>
    <div id="content" >
    
    <div id="content" class="alert alert-info">
   <h1>Registrazione Nuovo Dipendente</h1>
   </div>
  
  <form action="doRegistraDipendente.jsp" method="post">
Nome : <input type="text" name="nome" /> <br>
Cognome : <input type="text" name="cognome"/> <br>
Username : <input type="text" name="username"/> <br>
Password : <input type="password" name="password"/> <br>
Posizione : <input type="text" name="posizione"/> <br>
Stipendio : <input type="text" name="stipendio"/> <br>
<input type="submit" value ="Registra"/>


</form>
   
  </div>
    <div id="footer">
 <h1>Footer</h1>
 
  </div>
  
  
  </div> <!--  end of container -->



</body>
</html>