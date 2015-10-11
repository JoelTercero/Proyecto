package practica

class Persona
{
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    Date fechaNacimiento
    Integer edad

    static constraints = {
        nombre nullable: false, blank: false
        apellidoPaterno nullable: false, blank: false
        apellidoMaterno nullable: true
        fechaNacimiento nullable: true
        edad nullable: true
    }
}
