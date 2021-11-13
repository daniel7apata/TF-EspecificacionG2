 Feature:HU06:Como alumno quiero registrar mi estado de salud inicial y las enfermedades que padezca, para que el entrenador lo tome en cuenta.
    Scenario:E01:El estado de salud del alumno se encuentra entre las opciones
         TA01
         Given que el alumno se encuentra en la ventana de registro de información médica 
         When el alumno elija alguna(s) de las afecciones e ingrese una breve descripción de su situación y/o tratamiento que crea pertinente.
         Then el sistema guardará los datos del alumno y los añadirá a su perfil médico, que estará disponible para su entrenador.

         Examples:
             | Ventana de registro|                  Descripción              |                         Estado                    |
             | Registros médicos  | "Cuento con un perfecto estado de salud"  | "El alumno se encuentra en total disponibilidad"  |