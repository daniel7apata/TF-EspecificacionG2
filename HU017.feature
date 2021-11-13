Feature: HU17:Como alumno quiero coleccionar puntos y canjearlos dentro de la app para acceder a servicios.
Scenario: E01:El alumno ha completado sus tareas en días consecutivos
       TA01
     Given el alumno ha realizado la totalidad de las tareas propuestas por su entrenador en días consecutivos 
     When el alumno registre su avance el 3er día de cumplidas estas condiciones 
     Then el sistema le asignará una recompensa de 10 puntos por día contado.
     Examples:
       | Alumno | opción              | Simulación                                                                                       |
       | Javier | "Registrar avance"  |"el sistema verificará si se han cumplido los 3 días y otorgará 10 puntos por día como recompensa"|
  
Scenario: E02:  El alumno no ha completado sus tareas en días consecutivos
       TA02
     Given el alumno ha realizado la totalidad de las tareas propuestas por su entrenador en días no consecutivos 
     When el alumno registre su avance el 2do día
     Then el sistema le enviará mensajes detallando las condiciones para ganar puntos y las opciones donde puede usarlos
      | Alumno | opción                         | Simulación                                                                                                                |
      | Javier | “Revisar progreso del alumno”  |“El sistema verificará si se han cumplido los 3 días,de no ser así le enviará las formas de ganar puntos y sus condiciones”|