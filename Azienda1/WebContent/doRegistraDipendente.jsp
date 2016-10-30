<%@page import="bean.DipendenteBean"%>

<%@page import="ServizioAzienda.ServizioAzienda"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

<jsp:useBean id="dipendente" class="bean.DipendenteBean" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="dipendente"/>
	
<jsp:useBean id="errore" class="utility.ErroreBean" scope="request"></jsp:useBean>
	

	<%
	ServizioAzienda sA= new ServizioAzienda();
	
    String nome= request.getParameter("nome");
    String cognome= request.getParameter("cognome");
    String username= request.getParameter("username");
    String password= request.getParameter("password");
    char ruolo='D';
    String posizione= request.getParameter("posizione");
    String stipendio= request.getParameter("stipendio");
    double stipendio2=Double.parseDouble(stipendio);
    
    DipendenteBean dBean= new DipendenteBean(nome,cognome,username,password,ruolo,posizione,stipendio2);
   
    
    
    if(dBean.isValid() && !sA.trovaUser(username)) {
    	password=sA.conversionePass(password);
    	dipendente.setNome(nome);
    	dipendente.setCognome(cognome);
    	dipendente.setPassword(password);
    	dipendente.setRuolo(ruolo);
    	dipendente.setPosizione(posizione);
    	dipendente.setStipendio(stipendio2);
    	dipendente.setUsername(username);
    	
        sA.registraDipendente(dipendente);
        sA.creazioneRubrica(username);
        
        %>
        <h1>Registrazione effettuata con successo</h1><br>
    	<jsp:forward page="HomePageAdmin.jsp"/>
    <%
    }
    else{
    	errore.setMex("Username già utilizzato o dati non validi");
        %>
    	<jsp:forward page="RegistrazioneNuovoDipendente.jsp"/>
    <%
    }

    
    %>