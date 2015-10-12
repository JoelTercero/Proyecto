<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crear Persona</title>
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

    <g:form controller="persona" action="guardar" >
        <dl>
            <dd>
                Nombre: <g:textField name="nombre" id="nombre" value="" />
            </dd>
            <dd>
                Apellido Paterno: <g:textField name="apellidoPaterno" id="apellidoPaterno" value="" />
            </dd>
            <dd>
                Apellido Materno: <g:textField name="apellidoMaterno" id="apellidoMaterno" value="" />
            </dd>
            <dd>
                Fecha de Nacimiento: <g:textField name="fecha" id="datepicker" value="" />
            </dd>
            <dd>
                <g:hiddenField name="edad" value="0" />
            </dd>
            </br>
            <dd>
                <g:submitButton name="Guardar" value="Guardar" />
            </dd>
        </dl>
    </g:form>
</body>
</html>