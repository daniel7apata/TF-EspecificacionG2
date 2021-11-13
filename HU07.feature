 Feature:HU07:Como alumno quiero valorar a mi entrenador, para informar a los demás estudiantes sobre la calidad de servicio que ofrece.
     Scenario: E01:El alumno desea valorar el desempeño del entrenador después de haber completado por lo menos el 50% del ciclo planificado por este.
         TA01
         Given que me encuentro en el perfil del entrenador y me he situado en la sección "Puntuación"
         When seleccione una cantidad de estrellas (de 1 a 5)
         Then el sistema deberá registrar la cantidad de puntos asignados y deberá agregarlos 
         al promedio ya existente de puntos de calificación del entrenador en cuestión, mostrándolos en pantalla.
         
         Examples:
             | Entrenador | Puntuación |                            Registro                         |
             |    Andrés  |  5 puntos  | "La cantidad puntuada es de 5 para el entrenador Andrés, "  |

     Scenario:E02:El alumno desea valorar el desempeño del entrenador sin haber completado por lo menos el 50% del ciclo planificado por este.
         TA02
         Given que me encuentro en el perfil del entrenador
         When seleccione una cantidad de estrellas (de 1 a 5)
         Then aparecerá un mensaje emergente detallando que no me es posible valorar al entrenador 
         sin haber completado por lo menos el 50% de un ciclo asignado por el mismo.

         Examples:
             | Entrenador | Puntuación |                                         Mensaje                                    |
             |   Andrés   |  4 puntos  | "Debes completar al menos el 50% del ciclo y así podrás calificar a tu entrenador" |

 
 
     
 
 
     
 
   
      


