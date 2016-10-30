<%@page import="bean.ClienteBean"%>

<%@page import="ServizioAzienda.ServizioAzienda"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="cliente" class="bean.ClienteBean" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="cliente"/>
	<jsp:useBean id="utente" class="bean.UtenteBean" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="utente"/>
	
<jsp:useBean id="errore" class="utility.ErroreBean" scope="request"></jsp:useBean>
	

	<%
	ServizioAzienda sA= new ServizioAzienda();
	
    String nome= request.getParameter("nome");
    String cognome= request.getParameter("cognome");
    String username= request.getParameter("username");
    String password= request.getParameter("password");
    char ruolo='C';
    String ragSociale= request.getParameter("ragioneSociale");
    String p_iva= request.getParameter("p_iva");
    
    ClienteBean cBean= new ClienteBean(nome,cognome,username,password,ruolo,ragSociale,p_iva);
    
    
    
    if(cBean.isValid() && !sA.trovaUser(username)) {
    	password=sA.conversionePass(password);
    	cBean.setPassword(password);
        sA.registraCliente(cBean);
        sA.creazioneRubrica(username);
        
        %>
        <h1>Registrazione effettuata con successo</h1><br>
    	<jsp:forward page="HomePageAdmin.jsp"/>
    <%
    }
    else{
    	errore.setMex("Username già utilizzato o dati non validi");
        %>
    	<jsp:forward page="RegistrazioneNuovoCliente.jsp"/>
    <%
    }

    
    %>