Feature: HU16: Como entrenador quiero actualizar el plan de entrenamiento de mis alumnos para que logre los resultados esperados.
Scenario: E01:El entrenador quiere actualizar plan de entrenamiento de uno de sus alumnos
       TA01
     Given que el entrenador ha ingresado al perfil del alumno; Y se ha dirigido a la sección de "Revisar progreso del alumno"
     When seleccione la opción "Editar plan de entrenamiento" 
     Then el sistema mostrará en pantalla el plan de entrenamiento actual de manera detallada, incluyendo la exigencia, cantidad y frecuencia de cada ejercicio. Además de la dieta brindada al alumno.
     Examples:
       | Entrenador | opción                          | Simulación                                                                          |
       | Mateo      | "Editar plan de entrenamiento"  |"el sistema mostrará en pantalla el plan de entrenamiento actual de manera detallada"|
  
Scenario: E02: El entrenador quiere actualizar plan de entrenamiento de un usuario que no es su alumno
       TA02
     Given que el entrenador ha ingresado al perfil de alumno 
     When o se dirija a la sección de "Revisar progreso del alumno" 
     Then el sistema mostrará un mensaje de advertencia informando que esta no es la cuenta de uno de sus alumnos.
      | Entrenador | opción                          | Simulación                                                         |
      | Mateo      | “Revisar progreso del alumno”   |“El sistema advierte que esta no es la cuenta de uno de sus alumnos”|
