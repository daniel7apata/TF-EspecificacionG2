Feature: HU18:Como alumno quiero acceder a las clases en modo sin conexión para seguir ejecutando mis rutinas
Scenario: E01:El alumno se encuentra con conexión a internet 
       TA01
     Given que el alumno se encuentra conectado a internet 
     When el alumno quiera ingresar a sus clases por primera vez
     Then el sistema descarga el paquete de ejercicios asignados por el entrenador de manera automática.
     Examples:
       | Alumno | opción              | Simulación                                                                                                |
       | Javier | "Registrar avance"  | "el sistema procede a descargar el paquete de ejercicios asignados por el entrenador de manera automática"|
  
Scenario: E02:El alumno se encuentra sin conexión a internet
       TA02
     Given que el alumno se encuentra sin conexión a internet 
     When el alumno quiera ingresar a sus clases
     Then el sistema ejecutará el paquete de ejercicios guardados de manera automática

      | Alumno | opción              | Simulación                                                             |
      | Javier | “Modo sin conexión” |“El sistema ejecutará el paquete de ejercicios guardado automáticamente”|