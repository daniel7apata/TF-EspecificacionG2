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
         Then el sistema mostrará en pantalla una etiqueta roja que indique que la información 
         registrada por el alumno está siendo verificada por el equipo de E-Gym y, a continuación, el detalle de la(s) enfermedad(es) del alumno y otra información médica pertinente.

        Examples:
            | Usuario |        Opción       |                             Etiqueta                                   |
            | Javier  | "Ver perfil médico" | "Su información está siendo verificada- Tu estado médico es saludable" |

 