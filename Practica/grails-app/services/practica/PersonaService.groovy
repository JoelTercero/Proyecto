package practica

import grails.transaction.Transactional
import java.text.SimpleDateFormat;
import java.text.ParseException;

@Transactional
class PersonaService
{
    def utilService
    Persona guardarPersona(params)
    {

        println params
        Persona persona = new Persona(params)
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yy");
        try
        {
            persona.fechaNacimiento = formato.parse(params.fecha)
        }
        catch (ParseException ex)
        {
            System.out.println(ex);
        }
        //persona.fechaNacimiento=(params.fecha)
        //persona.save()
        persona.save(flush:true, failOnError:true)
        persona
    }
    Persona consultarPersona(Long id)
    {
        Persona persona=persona.get(id)
        persona.edad=utilService.calcularEdad(persona.fechaNacimiento)
        persona
    }

    //List<Persona> listarPersona(params)
    def listarPersona()
    {
        //println params
        /*params.nombre="Joel"
        params.apellidoPaterno="Tercero"
        params.apellidoMaterno="Perez"
        params.fechaNacimiento=new Date()
        params.edad=26
        guardarPersona(params)*/
        //List<Persona> listaPersonas=Persona.findAll()
        //println "listaPersonas "+listaPersonas
        //listaPersonas

        Persona.list()
    }

    Map<Object, Object> listarPersonas(params)
    {
        def mapa = []
        List<Persona> listaPersonas=Persona.list(max: params.max, offset: params.offset)
        mapa.listaPersonas=listarPersonas
        mapa.totalPersonas=listaPersonas.size()
        listarPersonas
    }
}
