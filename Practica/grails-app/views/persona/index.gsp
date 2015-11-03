<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Practica</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('#list').DataTable();
        });
        $(function()
        {
            $("#fecha").datepicker({dateFormat: 'dd/mm/yy'});
        });
        function buscar(valor)
        {
            if(valor=='Nombre')
            {
                document.getElementById('buscarFecha').style.display = 'none';
                document.getElementById('buscarApPat').style.display = 'none';
                document.getElementById('buscarNombre').style.display = 'block';
            }
            if(valor=='Apellido Paterno')
            {
                document.getElementById('buscarFecha').style.display = 'none';
                document.getElementById('buscarApPat').style.display = 'block';
                document.getElementById('buscarNombre').style.display = 'none';
            }
            if(valor=='Fecha Nacimiento')
            {
                document.getElementById('buscarFecha').style.display = 'block';
                document.getElementById('buscarApPat').style.display = 'none';
                document.getElementById('buscarNombre').style.display = 'none';
            }
        }
    </script>
</head>

<body>

<%--<g:busquedaPersona nombreTxt="busqueda" idApellido="apellidoBusqueda" idNombre="3"></g:busquedaPersona>--%>

<table>
    <tr>
        <td><g:link controller="persona" action="index" >Inicio</g:link></td>
        <td><g:link controller="persona" action="create" >Dar de alta Persona</g:link></td>
        <td>
            <g:set var="opciones" value="${["Nombre","Apellido Paterno","Fecha Nacimiento"]}"/>
            <g:select id="buscar" name="buscar"
                      from="${opciones}"
                      noSelection="${['':'Buscar por...']}"
                      onchange="buscar(this.value);"
            />
        </td>
        <td>
            <div id="buscarNombre" style="display:none;">
                <g:formRemote name="form" update="updateMe" method="GET"
                              action="${createLink(controller: 'persona', action: 'buscarPersonaNombre')}"
                              url="[controller: 'persona', action: 'buscarPersonaNombre']">
                    Buscar: <input name="nombre" id="nombre" type="text" pacleholder="Buscar por Nombre.." value="" />
                    <g:actionSubmit value="Nombre" />
                </g:formRemote>
            </div>
        </td>
        <td>
            <div id="buscarApPat" style="display:none;">
                <g:formRemote name="form" update="updateMe" method="GET"
                              action="${createLink(controller: 'persona', action: 'buscarPersonaApPat')}"
                              url="[controller: 'persona', action: 'buscarPersonaApPat']">
                    Buscar: <input name="apPaterno" id="apPaterno" type="text" pacleholder="Buscar por Apellido.." value="" />
                    <g:actionSubmit value="ApPaterno" />
                </g:formRemote>
            </div>
        </td>
        <td>
            <div id="buscarFecha" style="display:none;">
                <g:formRemote name="form" update="updateMe" method="GET"
                              action="${createLink(controller: 'persona', action: 'buscarPersonaFecha')}"
                              url="[controller: 'persona', action: 'buscarPersonaFecha']">
                    Buscar: <input name="fecha" id="fecha" type="text" pacleholder="Buscar por fecha.." value="" />
                    <g:actionSubmit value="Fecha" />
                </g:formRemote>
            </div>
        </td>
    </tr>
</table>


    <div id="updateMe">
        <g:render template="tabla" model="[personas?: personas]"/>
    </div>


    <%-- <g:paginate total="${personasInstanceCount ?: 0}" />
    util:remotePaginate total... debe estar dentro de divs update updateMe
    controller="persona" action="index"--%>


</body>
</html>