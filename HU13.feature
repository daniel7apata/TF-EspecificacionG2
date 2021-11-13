Feature: HU13:Como entrenador, quiero tener un perfil específico a mis necesidades, que muestre mis especialidades y algunas aclaraciones que considere que mis alumnos deban saber. Además de la valoración a mis servicios colocada por mis antiguos alumnos.

Scenario: E01:El entrenador crea su perfil con datos válidos y de manera correcta
       TA01
       Given que el entrenador se encuentra en el formulario de "Datos generales del entrenador"
       When ingrese su sexo, edad, especialidad en disciplina deportiva y años de experiencia, eligiendo entre las opciones disponibles
       Then el sistema guardará los nuevos datos del usuario en "Información general del entrenador", la barra de progreso de creación de cuenta se llenará a un 60% y se mostrará en pantalla la sección de configuración de privacidad de datos
       Examples:
           | Usuario | Opción |  Mensaje |
           | Mateo  |  "Datos generales del usuario"  |"El sistema guarda los nuevos datos además de la barra de creación de cuenta se completará en un 60%"|     
Scenario:  E02:El entrenador crea su perfil con datos no válidos y/o de manera incorrecta
       TA02
       Given que el entrenador se encuentra en el formulario de "Datos generales del usuario"
       When trate de escribir en una de las casillas en lugar de elegir entre las opciones disponibles
       Then el sistema mostrará una advertencia señalando que no se puede escribir en las casillas y que debe elegir entre las opciones presentadas
       Examples:
           | Usuario | Opcion    |Mensaje   |
           | Mateo  | "Datos generales del usuario"  | “Advertencia de mal registro e indicación para un buen registro”|  