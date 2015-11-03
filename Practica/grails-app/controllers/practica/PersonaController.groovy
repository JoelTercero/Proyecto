package practica

import java.text.SimpleDateFormat;
import java.text.ParseException;

class PersonaController
{
    def personaService
    def index()
    {
        List<Persona> persona=personaService.listarPersona()
        println "persona "+persona
        render(view: '/persona/index',model: [personas: persona])
    }

    def create()
    {
        render (view:"/persona/create")
    }
    def guardar()
    {
        Persona persona=personaService.guardarPersona(params)
        redirect(view: '/persona/index',model: [personas: persona])
    }
    def buscarPersonaNombre()
    {
        println "Persona a Buscar "+params.busqueda
        List<Persona> persona
        persona = Persona.findAllByNombreIlike(params.nombre)
        println "Datos "+persona
        render(template: 'tabla', model: [personas:persona])
    }
    def buscarPersonaApPat()
    {
        println "Persona a Buscar "+params.busqueda
        List<Persona> persona
        persona = Persona.findAllByApellidoPaternoIlike(params.apPaterno)
        println "Datos "+persona
        render(template: 'tabla', model: [personas:persona])
    }
    def buscarPersonaFecha()
    {
        println "Persona a Buscar "+params.busqueda
        List<Persona> persona

        SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yy")
        Date date
        try {

            date = formatter.parse(params.fecha)
            System.out.println(date)
            System.out.println(formatter.format(date))

        } catch (ParseException e)
        {
            e.printStackTrace();
        }

        persona = Persona.findAllByFechaNacimientoIlike(date)
        println "Datos "+persona
        render(template: 'tabla', model: [personas:persona])
    }
}
