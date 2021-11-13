Feature: HU12:Como alumno, quiero tener un perfil específico a mis necesidades, que muestre mis preferencias en disciplinas del deporte y otra información que considere pertinente para darme a conocer a posibles entrenadores y otros alumnos.

Scenario: E01:El alumno crea su perfil con datos válidos y de manera correcta
       TA01
       Given que el alumno se encuentra en el formulario de "Datos generales del alumno"
       When ingrese su sexo, peso actual, edad y cantidad aproximada de agua que bebe al día, eligiendo entre las opciones disponibles
       Then el sistema guardará los nuevos datos del usuario en "Información general del alumno", la barra de progreso de creación de cuenta se llenará a un 60% y se mostrará en pantalla la sección de configuración de privacidad de datos.
       Examples:
           | Usuario | Opción | Mensaje |
           |  Javier  | "Datos generales del usuario"  |"El sistema guarda los nuevos datos ademas de la barra de creación de cuenta se completará en un 60%"|
Scenario: E02:El alumno crea su perfil con datos no válidos y/o de manera incorrecta
       TA02
       Given que el alumno se encuentra en el formulario de "Datos generales del alumno"
       When trate de escribir en una de las casillas en lugar de elegir entre las opciones disponibles
       Then el sistema mostrará una advertencia señalando que no se puede escribir en las casillas y que debe elegir entre las opciones presentadas
       Examples:
           | Usuario | Opcion | Mensaje |
           | Javier | “Datos generales del usuario”  | “Advertencia de mal registro e indicación para un buen registro”  |   