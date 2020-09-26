<%-- 
    Document   : formJSP
    Created on : 25/09/2020, 13:05:37
    Author     : user-ubunto
--%>

<%@page import="com.mycompany.ejerciciojsp.controlCalculator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (request.getParameter("number1") == null && request.getParameter("number2") == null) { %>
        <h2>Formulario</h2>
        <form METHOD="POST" ACTION="formJSP.jsp">            
            <label>Numero 1: </label>
            <br />
            <input type="text" name="number1" />
            <br />
            <label>Numero 2: </label>
            <br />
            <input type="text" name="number2" />
            <br />
            <br />
            <fieldset>
                <legend>Elige una opcion</legend>
                <label>
                    <input type="radio" name="input" value="add" /> Suma
                    <br />
                </label>
                <label>
                    <input type="radio" name="input" value="subtract" /> Resta 
                    <br />
                </label>
                <label>
                    <input type="radio" name="input" value="multiplication" /> Multiplicacion
                    <br />
                </label>
                <label>
                    <input type="radio" name="input" value="raise" /> Elevar
                    <br />
                </label>
                <label>
                    <input type="radio" name="input" value="higher" /> El mayor de los 2
                    <br />
                </label>
                <label>
                    <input type="radio" name="input" value="binary" /> Convertir a binario
                    <br />
                </label>
            </fieldset>
            <br />
            <input type="submit" value="Calcular" />                     
        </form>
        <%} else {%>   
            <%if (request.getParameter("number1") == "" || request.getParameter("number2") == ""){%>
                <h2>Error</h2>
                <p> No ingreso un dato</p>
            <%} else {%>   
                <%String number1 = request.getParameter("number1");%>
                <%String number2 = request.getParameter("number2");%>
                <%controlCalculator control = new controlCalculator(number1,number2);%>
                
                <%if (request.getParameter("input").equalsIgnoreCase("binary")){%>
                    <%String result1 = control.turnNumber(number1);%>
                    <%String result2 = control.turnNumber(number2);%>
                    <p>El numero 1 convertido es:</p>
                    <%=result1%>
                    <br/>
                    <p>El numero 2 convertido es:</p>
                    <%=result2%>
                    <br/>                    
                <%} else {%>
                    <p>El resultado es</p>                    
                    <%String result = control.calculate(request.getParameter("input"));%>   
                    <p> <%=result%></p>
                <%}%>
            <%}%>
        <%}%>
    </body>
</html>
