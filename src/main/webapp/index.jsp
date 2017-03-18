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
        <input type="text" name="codi" id="codi"> <br>
        <input type="text" name="nomb" id="nomb"> <br>
        <input type="text" name="desc" id="desc"> <br>
        <input type="submit" text="guardar" value="Guardar"> <br>
        </form>
    </body>
</html>
