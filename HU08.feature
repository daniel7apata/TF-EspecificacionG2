Feature:HU08:Como alumno quiero acceder a las valoraciones realizadas a los entrenadores, para evaluar su perfil y decidir si trabajar con él.
     Scenario:E01:El entrenador tiene comentarios de valoración
         TA01
         Given que me encuentro en el perfil del entrenador
         When presiono la opción "ver valoración"
         Then se muestra en la pantalla las calificaciones y descripciones de otros alumnos respecto a los servicios del entrenador.

         Examples:
             | Entrenador |      Opción    |                         Calificaciones-Descripciones                          |
             |    Andrés  | Ver valoración | "La calificación del entrenador es alta - Es demasiado bueno en lo que hace"  |
    
     Scenario:E02:El entrenador no tiene comentarios de valoración
         TA02
         Given que me encuentro en el perfil del entrenador
         When  presiono la opción "ver valoración"
         Then se muestra en la pantalla el mensaje: "no hay calificaciones disponibles"

        Examples:
            | Entrenador |     Opción     |                       Mensaje                  |
            |    Andrés  | Ver valoración | "No hay calificaciones para el entrenador aún