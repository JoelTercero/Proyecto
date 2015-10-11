package practica

import grails.transaction.Transactional

@Transactional
class PersonaService
{
    def utilService
    Persona guardarPersona(params)
    {
        println params
        Persona persona = new Persona(params)
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

    List<Persona> listarPersona(params)
    {
        println params
        params.nombre="Joel"
        params.apellidoPaterno="Tercero"
        params.apellidoMaterno="Perez"
        params.fechaNacimiento=new Date()
        params.edad=26
        guardarPersona(params)
        List<Persona> listaPersonas=Persona.findAll()
        println "listaPersonas "+listaPersonas
        listaPersonas
    }
}
