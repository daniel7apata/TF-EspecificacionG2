Feature:HU10:Como alumno quiero visualizar un ejemplo de los ejercicios que debo realizar mediante el uso de una inteligencia artificial, para conocerlos a detalle y ejecutarlos correctamente
     Scenario:E01:E01:El alumno no conoce qué ejercicio debe realizar
         TA01
         Given que el alumno ha iniciado una sesión de ejercicio
         When el alumno seleccione la opción "Entrenar con "Gymia", mi Asistente inteligente"
         Then con sus datos previamente registrados, la IA le mostrará una simulación de los ejercicios a realizar desde diferentes ángulos.
         
         Examples:
             | Alumno |         Opción       |                             Simulación                            |
             | Javier | "Entrenar con Gymia" | "Este es una demostración de cómo puedes realizar tus ejercicios" |