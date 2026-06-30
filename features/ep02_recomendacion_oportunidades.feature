# language: es

Característica: Recomendación de oportunidades laborales
  Como postulante joven
  Quiero recibir oportunidades laborales recomendadas
  Para postular a vacantes más alineadas con mi perfil profesional

  Antecedentes:
    Dado que el postulante joven tiene un perfil profesional registrado en CareerMatch
    Y el sistema cuenta con vacantes laborales disponibles

  Escenario: Mostrar ofertas acordes al perfil del postulante
    Dado que el postulante joven completó su carrera, habilidades e intereses laborales
    Cuando el postulante joven ingresa a la sección de oportunidades laborales
    Entonces el sistema muestra una lista de vacantes recomendadas
    Y el sistema prioriza las vacantes relacionadas con su carrera y habilidades

  Escenario: Aplicar filtros de búsqueda laboral
    Dado que el postulante joven se encuentra en el buscador de vacantes
    Cuando el postulante joven aplica los filtros de modalidad "Remoto", ubicación "Lima" y nivel de experiencia "Practicante"
    Entonces el sistema actualiza la lista de vacantes
    Y el sistema muestra únicamente las vacantes que cumplen con los filtros aplicados

  Escenario: Mostrar mensaje cuando no existen vacantes compatibles
    Dado que el postulante joven tiene un perfil profesional completo
    Y el sistema no encuentra vacantes compatibles con su perfil actual
    Cuando el postulante joven ingresa a la sección de oportunidades laborales
    Entonces el sistema muestra el mensaje "No se encontraron vacantes compatibles por el momento"
    Y el sistema sugiere actualizar habilidades, intereses o filtros de búsqueda

  Esquema del escenario: Priorizar vacantes según afinidad con el perfil
    Dado que el postulante joven tiene la carrera "<carrera>" registrada en su perfil
    Y el postulante joven tiene la habilidad principal "<habilidad_principal>"
    Cuando el sistema compara el perfil con las vacantes disponibles
    Entonces el sistema muestra primero la vacante "<vacante_recomendada>"
    Y el sistema asigna un nivel de afinidad "<afinidad>"

    Ejemplos:
      | carrera                    | habilidad_principal | vacante_recomendada   | afinidad |
      | Ingeniería de Software     | JavaScript          | Practicante Frontend  | Alta     |
      | Ciencias de la Computación | SQL                 | Practicante de Datos  | Alta     |
      | Ingeniería de Software     | Testing             | Practicante QA        | Media    |
