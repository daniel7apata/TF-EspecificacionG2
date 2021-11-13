Feature: HU01:Como entrenador quiero visualizar los resultados del plan de entrenamiento de mis alumnos para evaluar su progreso.
    Scenario:E01:El alumno cuenta con un reporte de progreso
    TA01
        Given que me encuentro en el perfil del alumno
        When presiono la opción "Ver progreso"
        Then  el sistema muestra la cantidad de días de ejercicios cumplidos y el porcentaje de acierto a la 
        hora de realizar ejercicios como también el estado de cansancio del alumno tras cada sesión.

        Examples:
            | Usuario|      Opción     |                        Información                     |
            | Javier | "Ver Progreso"  |  "Rutinas realizadas y estado de cansancio del alumno" |

    Scenario:E02:El alumno no cuenta con un reporte de progreso
    TA02
        Given que me encuentro en el perfil del alumno
        When presiono la opción "Ver progreso"
        Then el sistema muestra el mensaje "El alumno no ha iniciado con su plan de entrenamiento o no lo ha registrado correctamente"

        Examples:
            | Usuario|      Opción      |                           Mensaje                           |
            | Javier | "Ver Progreso"   | "Sin inicio de plan de entrenamiento o error al registrarlo"|


   
      


