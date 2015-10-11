<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Practica</title>
</head>

<body>
<g:link controller="persona" action="create" >Dar de alta Persona</g:link>
   <table>
       <thead>
            <tr>
                <td>Nombre</td>
                <td>Apellido Paterno</td>
            </tr>
       </thead>
       <tbody>
        <g:each in="${personas}" var="persona">
            <tr>
                <td>${persona.nombre}</td>
                <td>${persona.apellidoPaterno}</td>
            </tr>
        </g:each>
       </tbody>
   </table>

</body>
</html>