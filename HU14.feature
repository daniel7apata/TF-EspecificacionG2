Feature: HU14:Como usuario quiero tener una cuenta que se adapte a mis datos y preferencias.  

Scenario: E01:El usuario se registra con datos válidos y correctos 
       TA01
       Given que el usuario se encuentra en el formulario de registro. 
       When ingrese su tipo de cuenta deseada(alumno o entrenador),nombre, usuario, contraseña correctos y presione el botón registrarse.
       Then se guardan los datos y se muestra en pantalla una barra que registra el progreso de creación de cuenta a un 30% junto a un formulario www.equipoegymwebsite.com de "Datos generales de alumno" o "Datos generales de entrenador" a llenar. 
       Examples:
           | Usuario | Opcion | Mensaje |
           | Mateo  | "Datos generales"  | "El sistema guarda los nuevos datos además de la barra de creación de cuenta se completará en un 30%"  |
Scenario: E02::El usuario se registra con datos no válidos
       TA02
       Given que el usuario se encuentra en el formulario de registro
       When ingrese su tipo de cuenta deseada, nombre (usando números), usuario, contraseña, y presione el botón registrarse. 
       Then se muestra un mensaje advirtiendo que el nombre no admite el uso de números y no se guarda el registro. 
       Examples:
           | Usuario | Opcion | Mensaje |
           | Mateo  | "Datos generales"  | “Advertencia de mal registro e indicación para un buen registro”  |