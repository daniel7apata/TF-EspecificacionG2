 Feature:HU02:Como entrenador quiero verificar el cumplimiento del plan nutricional de mis alumnos,para considerarlo en el planteamiento del plan de ejercicios y alimentación.
     Scenario: E01:El entrenador quiere verificar el plan nutricional de uno de sus alumnos
      TA01
          Given que el entrenador ha ingresado al perfil del alumno; Y se ha dirigido a la sección de "Revisar progreso del alumno"
          When seleccione la opción "Verificar nutrición"
          Then el sistema mostrará información en pantalla de los días de la semana en los que se ha cumplido con 
          la dieta establecida sombreados de color verde y, en caso contrario, de color rojo.

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
