package practica

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
}
