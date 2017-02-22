<%-- 
    Document   : respuesta
    Created on : 16/02/2017, 08:11:59 PM
    Author     : fclopez4
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th, td {
                padding: 5px;
                text-align: left;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta JSP</title>
    </head>
    <body>
        <h1>Respuesta JSP</h1>
        <jsp:useBean id="bean1" scope="session" class="logica.Indice" />
        <jsp:setProperty name="bean1" property="nombre"/>
        <jsp:setProperty name="bean1" property="fecha"/>
        <div>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Fecha N.</th>
                    <th>Edad</th>
                    <th>Tamaño string</th>
                </tr>
                  <tr>
                      <td><jsp:getProperty name="bean1" property="nombre" /></td>
                      <td><jsp:getProperty name="bean1" property="fecha" /></td>
                      <td><jsp:getProperty name="bean1" property="edad" /></td>
                      <td><jsp:getProperty name="bean1" property="dimension" /></td>
                  </tr>
            </table>
        </div>
    </body>
</html>
