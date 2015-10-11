<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crear Persona</title>
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
            <%--<dd>
                Fecha de Nacimiento: <g:textField name="nombre" id="nombre" value="" />
            </dd>
            <dd>
                Edad: <g:textField name="edad" id="edad" value="" />
            </dd>--%>
            <br></br>
            <dd>
                <g:submitButton name="Guardar" value="Guardar" />
            </dd>
        </dl>
    </g:form>
</body>
</html>