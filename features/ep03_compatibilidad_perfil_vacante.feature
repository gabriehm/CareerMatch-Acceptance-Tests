# language: es

Característica: Compatibilidad perfil-vacante
  Como postulante joven
  Quiero conocer mi compatibilidad con una vacante
  Para decidir con mayor seguridad si me conviene postular

  Antecedentes:
    Dado que el postulante joven tiene un perfil profesional registrado
    Y el sistema cuenta con vacantes laborales con requisitos definidos

  Escenario: Mostrar porcentaje de compatibilidad con una vacante
    Dado que el postulante joven abre el detalle de una vacante laboral
    Cuando el sistema compara los requisitos de la vacante con el perfil del postulante
    Entonces el sistema muestra un porcentaje de compatibilidad
    Y el sistema permite identificar si la vacante se ajusta al perfil del postulante

  Escenario: Solicitar completar perfil cuando no existe información suficiente
    Dado que el postulante joven abre el detalle de una vacante laboral
    Y el perfil profesional del postulante no tiene habilidades registradas
    Cuando el sistema intenta calcular la compatibilidad
    Entonces el sistema no muestra un porcentaje de compatibilidad
    Y el sistema solicita completar las habilidades del perfil profesional

  Escenario: Mostrar requisitos cumplidos y faltantes
    Dado que el postulante joven revisa el detalle de una vacante laboral
    Cuando el sistema compara los requisitos de la vacante con el perfil profesional
    Entonces el sistema marca los requisitos que el postulante cumple
    Y el sistema señala los requisitos que el postulante aún no cumple

  Escenario: Comparar compatibilidad entre vacantes
    Dado que el postulante joven visualiza una lista de vacantes recomendadas
    Y el postulante joven selecciona dos o más vacantes
    Cuando el postulante joven selecciona la opción "Comparar"
    Entonces el sistema muestra una vista comparativa de las vacantes
    Y el sistema presenta requisitos, porcentaje de compatibilidad y nivel de ajuste de cada oportunidad

  Escenario: Evitar comparación con una sola vacante
    Dado que el postulante joven selecciona solo una vacante
    Cuando el postulante joven selecciona la opción "Comparar"
    Entonces el sistema no genera la comparación
    Y el sistema muestra el mensaje "Debe seleccionar al menos dos vacantes para comparar"
