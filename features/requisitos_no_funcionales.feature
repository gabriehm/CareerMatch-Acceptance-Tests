# language: es

Característica: Requisitos no funcionales de CareerMatch
  Como usuario de CareerMatch
  Quiero que la plataforma sea segura, privada, rápida y disponible
  Para utilizar el sistema con confianza durante mi búsqueda laboral

  Escenario: Acceso seguro con credenciales válidas
    Dado que el usuario se encuentra en la pantalla de inicio de sesión
    Y el usuario tiene una cuenta registrada
    Cuando el usuario ingresa un correo y contraseña válidos
    Y el usuario selecciona la opción "Iniciar sesión"
    Entonces el sistema permite el acceso a la cuenta
    Y el sistema muestra el panel principal correspondiente al tipo de usuario

  Escenario: Rechazo de acceso con credenciales inválidas
    Dado que el usuario se encuentra en la pantalla de inicio de sesión
    Y el usuario ingresa credenciales incorrectas
    Cuando el usuario selecciona la opción "Iniciar sesión"
    Entonces el sistema no permite el acceso a la cuenta
    Y el sistema muestra el mensaje "Credenciales inválidas"

  Escenario: Protección de datos personales del postulante
    Dado que el postulante joven tiene un perfil profesional registrado
    Y el postulante no ha autorizado la visibilidad completa de su perfil
    Cuando una empresa revisa postulantes compatibles
    Entonces el sistema muestra únicamente información básica permitida
    Y el sistema restringe datos personales sensibles del postulante

  Escenario: Respuesta rápida al aplicar filtros de búsqueda
    Dado que el postulante joven se encuentra en el buscador de vacantes
    Y el sistema cuenta con vacantes registradas
    Cuando el postulante joven aplica filtros de búsqueda
    Entonces el sistema muestra los resultados en un tiempo no mayor a 3 segundos
    Y el sistema mantiene los resultados ordenados según los filtros aplicados

  Escenario: Disponibilidad de la plataforma en horario normal de operación
    Dado que el usuario cuenta con conexión a internet
    Y la plataforma CareerMatch se encuentra en horario normal de operación
    Cuando el usuario ingresa a la plataforma
    Entonces el sistema carga la página principal correctamente
    Y el sistema permite acceder a las funcionalidades principales sin interrupciones

  Escenario: Mensaje claro ante indisponibilidad temporal del servicio
    Dado que el usuario intenta acceder a CareerMatch
    Y el sistema se encuentra en mantenimiento o presenta una interrupción temporal
    Cuando el usuario intenta cargar la plataforma
    Entonces el sistema muestra un mensaje de indisponibilidad
    Y el sistema informa que el servicio será restablecido posteriormente
