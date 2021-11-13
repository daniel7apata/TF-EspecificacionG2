Feature: HU01:Como entrenador quiero visualizar los resultados del plan de entrenamiento de mis alumnos para evaluar su progreso.
    Scenario:E01:El alumno cuenta con un reporte de progreso
    TA01
        Given que me encuentro en el perfil del alumno
        When presiono la opción "Ver progreso"
        Then  el sistema muestra la cantidad de días de ejercicios cumplidos y el porcentaje de acierto a la hora de realizar ejercicios como también el estado de cansancio del alumno tras cada sesión.

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


 Feature:HU02:Como entrenador quiero verificar el cumplimiento del plan nutricional de mis alumnos, para considerarlo en el planteamiento del plan de ejercicios y alimentación.
     Scenario: E01:El entrenador quiere verificar el plan nutricional de uno de sus alumnos
      TA01
          Given que el entrenador ha ingresado al perfil del alumno; Y se ha dirigido a la sección de "Revisar progreso del alumno"
          When seleccione la opción "Verificar nutrición"
          Then el sistema mostrará información en pantalla de los días de la semana en los que se ha cumplido con la dieta establecida sombreados de color verde y, en caso contrario, de color rojo.

          Examples:
              | Usuario|     Opción    |                Información              |
              | Javier | Ver nutrición | "Cumplió"o "no cumplió con las dietas"  |

     Scenario: E02:El entrenador quiere verificar el plan nutricional de un usuario que no es su alumno
        TA02
            Given que el entrenador ha ingresado al perfil del alumno
            When se dirija a la sección de "Revisar progreso del alumno"
            Then el sistema mostrará un mensaje de advertencia informando que esta no es la cuenta de uno de sus alumnos.

            Examples:
                | Usuario |             Sección           |           Mensaje         |
                | Javier  | "Revisar progreso del alumno" | "El usuario no es alumno" |
 Feature:HU03:Como entrenador requiero conocer el estado de salud de mis alumnos y/o enfermedades crónicas, para considerarlos en su plan de entrenamiento y alimentación.
     Scenario:E01:Se registró en el sistema la información médica del alumno
      TA01
         Given que el entrenador ingresa al perfil del alumno
         When el entrenador seleccione la opción "Ver perfil médico"
         Then el sistema mostrará en pantalla el detalle de la(s) enfermedad(es) del alumno y otra información médica pertinente.
         Examples:
             | Usuario |        Opción       |                            Detalle                             |
             | Javier  | "Ver perfil médico" | "No hay ninguna observación en el historial médico del alumno" |

     Scenario:E02:No se registró en el sistema la información médica del alumno
       TA02
         Given que el entrenador ingresa al perfil del alumno
         When el entrenador seleccione la opción "Ver perfil médico"
         Then se mostrará un mensaje emergente detallando que el alumno: "No se ha ingresado información médica"
         
         Examples:
             | Usuario  |        Sección      |                Mensaje                   |
             |  Javier  | "Ver perfil médico" | "No se ha ingresado información médica"  |
     Scenario:E03:La información registrada por el alumno está siendo verificada por el equipo de E-Gym
        TA03:
         Given que el entrenador ingresa al perfil del alumno
         When el entrenador seleccione la opción "Ver perfil médico"
         Then el sistema mostrará en pantalla una etiqueta roja que indique que la información registrada por el alumno está siendo verificada por el equipo de E-Gym y, a continuación, el detalle de la(s) enfermedad(es) del alumno y otra información médica pertinente.

        Examples:
            | Usuario |        Opción       |                             Etiqueta                                   |
            | Javier  | "Ver perfil médico" | "Su información está siendo verificada- Tu estado médico es saludable" |

 Feature:HU04:Como alumno quiero registrar mis progresos con respecto al desarrollo del plan de entrenamiento, para mantener a mi entrenador al tanto de mi situación.
     Scenario:E01:El alumno ha terminado una sesión de ejercicio.
         TA01
         Given que he terminado mi sesión de ejercicio
         When presiono el botón "Finalizar"
         Then se muestran en pantalla 3 opciones para valorar el cansancio actual después de la rutina. Después de seleccionar el estado de cansancio, inmediatamente aparece una ventana con el mensaje de felicitaciones y el calendario con todas mis sesiones cumplidas.

        Examples:
            |  Sesión  |      Botón   |                                    Opción-Ventan                                                     |
            |  Cardio  | "Finalizar"  | "La opción ingresada es la primera - Felicidades, a continuación se muestran sus sesiones logradas"  |

     Scenario:E02:El alumno no ha terminado su sesión de ejercicio y ha presionado una opción de salir (botón retroceder).
         TA02
         Given que no he terminado mi sesión de ejercicio 
         When presiono alguna opción de salir
         Then aparece una ventana emergente que advierte que si no se cumple la sesión por completo, entonces esta sesión no se registrará en el calendario de la app como un progreso.
         
         Examples:
             | Sesión | Opción |                          Advertencia                           |
             | Cardio | Salir  | "Si no finalizas la sesión, no se registrará tu avanze de hoy" |
        
 Feature:HU05:Como alumno quiero recibir recordatorios diarios sobre el plan de alimentación, para asegurarme de cumplirlo.
     Scenario:E01:El alumno quiere recibir notificaciones de la app
         TA01
          Given que el alumno se encuentra en la configuración de su rutina; y el alumno selecciona la opción "Definir recordatorio"
          When el alumno ingrese la hora para sus recordatorios
          Then el alumno recibirá recordatorios para ejercitarse a la hora que ha definido.
           
          Examples:
             |            Opción       | Hora definida|                 Recordatorio            |
             | “Definir recordatorio”  |      3PM     | "Son las 3 PM, es hora de ejercitarte"  |

 Feature:HU06:Como alumno quiero registrar mi estado de salud inicial y las enfermedades que padezca, para que el entrenador lo tome en cuenta.
    Scenario:E01:El estado de salud del alumno se encuentra entre las opciones
         TA01
         Given que el alumno se encuentra en la ventana de registro de información médica 
         When el alumno elija alguna(s) de las afecciones e ingrese una breve descripción de su situación y/o tratamiento que crea pertinente.
         Then el sistema guardará los datos del alumno y los añadirá a su perfil médico, que estará disponible para su entrenador.

         Examples:
             | Ventana de registro|                  Descripción              |                         Estado                    |
             | Registros médicos  | "Cuento con un perfecto estado de salud"  | "El alumno se encuentra en total disponibilidad"  |

     Scenario:E02:El estado de salud del alumno no se encuentra entre las opciones
         TA02
         Given que el alumno se encuentra en la ventana de registro de información médica
         When el alumno no encuentre su afección entre las opciones presentadas y elija la opción "Otro".
         Then la aplicación mostrará un formulario que deberá llenar con el nombre de la enfermedad, una breve descripción de la misma y una breve descripción de su situación y/o tratamiento que crea pertinente.

         Examples:
             | Ventana de registro | Opción |                             Formulario                              |
             |  Registros médicos  | Otro   | "Tengo un malestar en el tobillo derecho y estoy llevo tratamiento" |

 Feature:HU07:Como alumno quiero valorar a mi entrenador, para informar a los demás estudiantes sobre la calidad de servicio que ofrece.
     Scenario: E01:El alumno desea valorar el desempeño del entrenador después de haber completado por lo menos el 50% del ciclo planificado por este.
         TA01
         Given que me encuentro en el perfil del entrenador y me he situado en la sección "Puntuación"
         When seleccione una cantidad de estrellas (de 1 a 5)
         Then el sistema deberá registrar la cantidad de puntos asignados y deberá agregarlos al promedio ya existente de puntos de calificación del entrenador en cuestión, mostrándolos en pantalla.
         
         Examples:
             | Entrenador | Puntuación |                            Registro                         |
             |    Andrés  |  5 puntos  | "La cantidad puntuada es de 5 para el entrenador Andrés, "  |

     Scenario:E02:El alumno desea valorar el desempeño del entrenador sin haber completado por lo menos el 50% del ciclo planificado por este.
         TA02
         Given que me encuentro en el perfil del entrenador
         When seleccione una cantidad de estrellas (de 1 a 5)
         Then aparecerá un mensaje emergente detallando que no me es posible valorar al entrenador sin haber completado por lo menos el 50% de un ciclo asignado por el mismo.

         Examples:
             | Entrenador | Puntuación |                                         Mensaje                                    |
             |   Andrés   |  4 puntos  | "Debes completar al menos el 50% del ciclo y así podrás calificar a tu entrenador" |

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
            |    Andrés  | Ver valoración | "No hay calificaciones para el entrenador aún" |
 
 Feature:HU09:Como alumno quiero realizar comentarios de forma anónima sobre el servicio recibido por parte de los entrenadores, para comunicar con detalle los puntos positivos y negativos de cada uno y, así, ayudar tanto a la comunidad como a los administradores de la app a conocer mejor a sus miembros.
     Scenario:E01:El alumno desea comentar sus impresiones después de haber completado por lo menos el 50% del ciclo planificado por el entrenador.
         TA01
         Given que me encuentro en el perfil del entrenador
         When presiono la opción "Comentar desempeño de forma anónima" 
         Then el sistema deberá mostrar una caja de texto donde el alumno podrá redactar su opinión general acerca del desempeño del entrenador con el que trabajó.
         
         Examples:
             | Entrenador |                 Opción                 |                        Caja de textos                       |
             |   Andrés   | "Comentar desempeño de forma anónima"  | "El entrenador no realiza las sesiones de manera correcta"  |

 Feature:HU10:Como alumno quiero visualizar un ejemplo de los ejercicios que debo realizar mediante el uso de una inteligencia artificial, para conocerlos a detalle y ejecutarlos correctamente
     Scenario:E01:E01:El alumno no conoce qué ejercicio debe realizar
         TA01
         Given que el alumno ha iniciado una sesión de ejercicio
         When el alumno seleccione la opción "Entrenar con "Gymia", mi Asistente inteligente"
         Then con sus datos previamente registrados, la IA le mostrará una simulación de los ejercicios a realizar desde diferentes ángulos.
         
         Examples:
             | Alumno |         Opción       |                             Simulación                            |
             | Javier | "Entrenar con Gymia" | "Este es una demostración de cómo puedes realizar tus ejercicios" |
 
     
 
 
     
 
   
      


