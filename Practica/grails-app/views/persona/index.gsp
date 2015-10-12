<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Practica</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(function()
        {
            $("#datepicker").datepicker({dateFormat: 'dd/mm/yy'});
        });
    </script>
</head>

<body>

<table>
    <tr>
        <td><g:link controller="persona" action="index" >Inicio</g:link></td>
        <td><g:link controller="persona" action="create" >Dar de alta Persona</g:link></td>
        <td>
            <g:formRemote name="form" update="updateMe" method="GET"
                          action="${createLink(controller: 'persona', action: 'buscarPersona')}"
                          url="[controller: 'persona', action: 'buscarPersona']">
                Buscar: <input name="busqueda" id="busqueda" type="text" pacleholder="Buscar.." />
                <g:actionSubmit value="Buscar" />
            </g:formRemote>
        </td>
    </tr>
</table>

    <div id="updateMe">
        <g:render template="tabla" model="[personas: personas]"/>
    </div>

</body>
</html>