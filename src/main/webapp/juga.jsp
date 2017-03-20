<%-- 
    Document   : juga
    Created on : 03-19-2017, 03:15:52 PM
    Author     : Jose Lira
--%>
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
        <title>JSP Page</title>
    </head>
    <body>
         <form method="POST" action="JugadoresServ" name="DEMO">
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
        <input type="text" name="peso" id="peso" value="${peso}" required> <p>
        <input type="submit" name="btoJuga" value="Guardar">
        <input type="submit" name="btoJuga" value="Modificar">
        <input type="submit" name="btoJuga" value="Eliminar">
        <input type="submit" name="btoJuga" value="Nuevo">
        <ul>
            <li><a href="index.jsp">Equipos</a></li>
        </ul>
        </form>
        
        <h1>La Tabla</h1>
        <form method="POST" action="JugadoresServ" name="TABLA">
        <table border="1">
            <tr>
                <th>Cons</th>
                <th>Id Equipo</th>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Altura</th>
                <th>Peso</th>
            </tr>
            <%
            for (Jugadores temp : new JugadoresCtrl().constTodo())
            {
            %>
            <tr>
                <td><input type="radio" name="codiJugaRadi" value="<%= temp.getCodiJuga() %>"</td>
                <td><%= temp.getCodiEqui() %></td>
                <td><%= temp.getNombJuga() %></td>
                <td><%= temp.getEdadJuga() %></td>
                <td><%= temp.getAltuJuga() %></td>
                <td><%= temp.getPesoJuga() %></td>
            </tr>
            <%
            }
            %>
        </table>
        <input type="submit" name="btoJuga" value="Consultar">
        </form>
    </body>
</html>
