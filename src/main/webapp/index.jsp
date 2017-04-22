<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Base64"%>
<%@page import="com.sv.udb.controlador.EquiposCtrl"%>
<%@page import="com.sv.udb.modelo.Equipos"%>
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
        <h1>${mensAler}</h1>
        <form method="POST" action="EquiposServ" name="DEMO" enctype="multipart/form-data">
                    <label for="codi">Codigo:</label>
                    <input type="text" name="codi" id="codi" value="${codi}" readonly> <br>
                    <label for="nomb">Nombre:</label>
                    <input type="text" name="nomb" id="nomb" value="${nomb}" required> <br>
                    <label for="desc">Descripción:</label>
                    <input type="text" name="desc" id="desc" value="${desc}" required> <br>
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
                <button class="btn waves-effect waves-light" type="submit" name="btonEqui" value="Guardar"> Guardar
                <i class="material-icons right">send</i>
               
                </button>
                 </c:if>
                                <c:if test="${codi != '' and codi!=null}">
                <button class="btn waves-effect waves-light" type="submit" name="btonEqui" value="Modificar">Modificar
                <i class="material-icons right">send</i>
              
                </button>
                 
                            
                <button class="btn waves-effect waves-light" type="submit" name="btonEqui" value="Eliminar">Eliminar
                <i class="material-icons right">send</i>
                </button>
                </c:if>
                <button class="btn waves-effect waves-light" type="submit" name="btonEqui" value="Nuevo">Nuevo
                <i class="material-icons right">send</i>
                </button>
        <ul>
            <li><a href="juga.jsp">Jugadores</a></li>
        </ul>            
        </form>
        
        <h1>La Tabla</h1>
        <form method="POST" action="EquiposServ" name="TABLA">
        <table>
            <thead>
            <tr>
                <th>Cons</th>
                <th>Nombre</th>
                <th>Descripcion</th>      
            </tr>
            </thead>
            <tbody>  
             <%
                List<Equipos> listEqui = new EquiposCtrl().consTodo();
                pageContext.setAttribute("listEquiJSTL", listEqui);
            %>
            <c:forEach items="${listEquiJSTL}" var="temp">
             <tr>
                <td><p><input name="codiEquiRadi" type="radio" id="${temp.getCodiEqui()}" value="${temp.getCodiEqui()}" />
                        <label for="${temp.getCodiEqui()}"></label></p></td>
                <td>${temp.getNombEqui()}</td>
                <td>${temp.getDescEqui()}</td>                
               
            </tr>
            
            

            </c:forEach>
         </tbody>
        </table>
            <button class="btn waves-effect waves-light" type="submit" name="btonEqui" value="Consultar">Consultar
            <i class="material-icons right">send</i>
            </button>
        </form>
    </div>
            
    </body>
</html>
