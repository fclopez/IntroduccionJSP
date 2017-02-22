<%-- 
    Document   : index
    Created on : 16/02/2017, 07:44:20 PM
    Author     : fclopez4
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="jquery-ui-1.12.1/jquery-3.1.1.js" type="text/javascript"></script>
        <script src="jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <link href="jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Indice JSP</title>
    </head>
    
    <body>
        <h1>Indice JSP</h1>
        <form name="Input Form" action="respuesta.jsp">
            <div class="form-group">
                <label class="control-label">Nombre: </label>
                <input id="idnombre" type="text" name="nombre"/>
            </div>
            <br/> 
            <div class="form-group">
                <label class="control-label">Fecha nacimiento: </label>
                <input id="idfecha" type="text" name="fecha"/>
            </div>
            <br/>
            <div class="form-group">
                <input type="submit" name="idsubmit" value="Aceptar"/>
            </div>
        </form>       
       
        <script type="text/javascript">
            $(document).ready(function() {               
                $('#idfecha').datepicker({ dateFormat: 'dd/mm/yy'});
            });
        </script>
    </body>
</html>
