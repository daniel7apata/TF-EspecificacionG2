Feature: HU11:Como alumno quiero saber si estoy realizando el ejercicio de manera correcta para corregirlo si es que es el caso

Scenario: E01:El alumno ha autorizado a la IA para evaluar la correcta ejecución de sus ejercicios de manera predeterminada.
      TA01
      Given que el alumno se encuentra realizando un ejercicio; Y tiene habilitada la opción "Emplear asistente de entrenamiento, Gymia"
      When  el alumno ejecute un ejercicio de forma incorrecta
      Then  la IA le avisará de su error y le sugerirá formas de corregirlo, en voz alta. 
      Examples:
          | Usuario | Opcion | Mensaje |
          | Javier  | "Entrenar con Gymia"  | "Estas haciendo mal el ejercicio.Esta es una demostración de cómo puedes realizarlo de forma correcta"  |
Scenario: E02:El alumno no ha autorizado a la IA para evaluar la correcta ejecución de sus ejercicios de manera predeterminada
      TA02
      Given que el alumno está a punto de iniciar una rutina de ejercicio
      When el alumno presione el botón de "Comenzar rutina"
      Then aparecerá una ventana emergente con 3 opciones: "Emplear asistente de entrenamiento solo por esta vez", "Emplear asistente de entrenamiento para todas las sesiones" y "No emplear asistente de entrenamiento :c".
      Examples:
          | Usuario | Opcion | Mensaje|
          | Javier  | "Comenzar rutina"  | "ventana emergente con 3 opciones: "Emplear asistente de entrenamiento solo por esta vez", "Emplear asistente de entrenamiento para todas las sesiones" y "No emplear asistente de entrenamiento :c""  |