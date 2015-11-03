package practica

class PersonaBusquedaTagLib
{
    def busquedaPersona={ attrs ->
        out << render(template: '/taglibs/personaBusqueda', model:[idNombre: attrs.id,
                                                           nombreTxt: attrs.eventos,
                                                           idApellido: attrs.eventoManual])
    }
}
