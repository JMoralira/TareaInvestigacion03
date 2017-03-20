<%@page import="com.sv.udb.controlador.EquiposCtrl"%>
<%@page import="com.sv.udb.modelo.Equipos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form method="POST" action="EquiposServ" name="DEMO">
        <h1>${mensAler}</h1>
        <label>Codigo:</label>
        <input type="text" name="codi" id="codi" value="${codi}" readonly> <br>
        <label>Nombre:</label>
        <input type="text" name="nomb" id="nomb" value="${nomb}" required> <br>
        <label>Descripcion:</label>
        <input type="text" name="desc" id="desc" value="${desc}" required> <br>
        <input type="submit" name="btonEqui" value="Guardar">
        <input type="submit" name="btonEqui" value="Modificar">
        <input type="submit" name="btonEqui" value="Eliminar">
        <input type="submit" name="btonEqui" value="Nuevo">
        <ul>
            <li><a href="juga.jsp">Jugadores</a></li>
        </ul>
        </form>
        
        <h1>La Tabla</h1>
        <form method="POST" action="EquiposServ" name="TABLA">
        <table border="1">
            <tr>
                <th>Cons</th>
                <th>Nombre</th>
                <th>Descripcion</th>
            </tr>
            <%
            for (Equipos temp : new EquiposCtrl().consTodo())
            {
            %>
            <tr>
                <td><input type="radio" name="codiEquiRadi" value="<%= temp.getCodiEqui() %>"</td>
                <td><%= temp.getNombEqui() %></td>
                <td><%= temp.getDescEqui() %></td>
            </tr>
            <%
            }
            %>
        </table>
        <input type="submit" name="btonEqui" value="Consultar">
        </form>
        
    </body>
</html>
