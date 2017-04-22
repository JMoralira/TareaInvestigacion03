<%-- 
    Document   : juga
    Created on : 03-19-2017, 03:15:52 PM
    Author     : Jose Lira
--%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Base64"%>
<%@page import="com.sv.udb.controlador.EquiposCtrl"%>
<%@page import="com.sv.udb.modelo.Equipos"%>
<%@page import="com.sv.udb.controlador.JugadoresCtrl"%>
<%@page import="com.sv.udb.modelo.Jugadores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='webjars/materialize/0.97.3/dist/css/materialize.min.css'>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="webjars/jquery/2.1.4/jquery.min.js"></script>
        <script type="text/javascript" src="webjars/materialize/0.97.3/dist/js/materialize.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
         <form method="POST" action="JugadoresServ" name="DEMO" enctype="multipart/form-data">
        <h1>${mensAler}</h1>
        <label>Codigo:</label>
        <input type="text" name="codi" id="codi" value="${codi}" readonly> <br>
        <label>Id Equipo:</label>
        <select id="cmbEquipo" name="cmbEquipo" value="${cmbEquipo}">
            
            <option  disabled selected> Seleccione un equipo</option>
            <%                
                for(Equipos temp : new EquiposCtrl().consTodo())
                {
            %>
            <option value="<%=temp.getCodiEqui()%>"><%=temp.getNombEqui()%></option>;
            <%
                }
            %>
        </select> <br>
        <label>Nombre:</label>
        <input type="text" name="nomb" id="nomb" value="${nomb}" required> <br>
        <label>Edad:</label>
        <input type="text" name="edad" id="edad" value="${edad}" required> <br>
        <label>Altura:</label>
        <input type="text" name="altu" id="altu" value="${altu}" required> <br>
        <label>Peso:</label>
        <input type="text" name="peso" id="peso" value="${peso}" required> 
        
          <div class="input-field col s12 m12 l12">
            <div class="file-field input-field">
            <button class="btn">
         <i class="material-icons">insert_photo</i>
        <input type='file' name='imagen' id="img"/> 
        </button>
                <div class="file-path-wrapper">
                            <input class="file-path validate" name="ima" type="text" value="${ima}" placeholder='1200x1200px máx., 2MB máx., PNG/JPG/GIF '>
                </div> 
        </div>
        </div>
             <c:if test="${codi==null}">
                <button class="btn waves-effect waves-light" type="submit" name="btoJuga" value="Guardar">Guardar
                <i class="material-icons right">send</i>
                </button>
             </c:if>
                            <c:if test="${codi !=null and codi!=''}">
                <button class="btn waves-effect waves-light" type="submit" name="btoJuga" value="Modificar">Modificar
                <i class="material-icons right">send</i>
                </button>
                <button class="btn waves-effect waves-light" type="submit" name="btoJuga" value="Eliminar">Eliminar
                <i class="material-icons right">send</i>
                </button>
                </c:if>
                <button class="btn waves-effect waves-light" type="submit" name="btoJuga" value="Nuevo">Nuevo 
                <i class="material-icons right">send</i>
                </button>
        <ul>
            <li><a href="index.jsp">Equipos</a></li>
        </ul>
        </form>
        
        <h1>La Tabla</h1>
        <form method="POST" action="JugadoresServ" name="TABLA">
        <table border="1">
            <thead>
            <tr>
                <th>Cons</th>
                <th>Id Equipo</th>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Altura</th>
                <th>Peso</th>

            </tr>
            </thead>
            <tbody>
            <%
                List<Jugadores> listEqui = new JugadoresCtrl().constTodo();
                pageContext.setAttribute("listJugaJSTL", listEqui);
            %>
            
                        <c:forEach items="${listJugaJSTL}" var="temp">
            <tr>
                <td><p><input type="radio" name="codiJugaRadi" value="${temp.getCodiJuga()}" id="${temp.getCodiJuga()}"/>
                        <label for="${temp.getCodiJuga()}"></label></p></td>
                <td>${temp.getCodiEqui()}</td>
                <td>${temp.getNombJuga()}</td>
                <td>${temp.getEdadJuga() }%></td>
                <td>${temp.getAltuJuga()}</td>
                <td>${temp.getPesoJuga()}</td>
            </tr>                  
            </c:forEach>
            </tbody>
        </table>
            <button class="btn waves-effect waves-light" type="submit" name="btoJuga" value="Consultar">Consultar
            <i class="material-icons right">send</i>
            </button>
        </form>
        </div>
            <script>
        $(document).ready(function() {
            $('select').material_select();
          });
    </script>
    </body>
</html>
