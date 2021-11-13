Feature: HU15:Como alumno deseo escuchar música mientras realizo mis ejercicios para realizar mis entrenamientos de manera efectiva y agradable

 Scenario: E01: El alumno está a punto de iniciar su sesión de entrenamiento
        TA01
        Given que el alumno está a punto de iniciar una rutina de ejercicio
        When el alumno presiona el símbolo musical al lado del botón "Comenzar rutina"
        Then comenzará a sonar la lista de canciones elegidas previamente por el alumno, de lo contrario, se le permitirá al alumno crear una lista de canciones (haciendo uso de sus puntos) desde YouTube y/o Spotify, et
        Examples:
            | Usuario | Opcion | Mensaje |
            | Javier  | "Iniciar rutina" | "Se reproduce las canciones predeterminadas por el usuario"  |
Scenario: E02: El alumno está en medio de una de sus sesiones de entrenamiento.
       TA02
       Given que el alumno está en medio de una rutina de ejercicio
       When el alumno presiona el símbolo musical en la esquina superior de la pantalla
       Then comenzará a sonar la lista de canciones elegidas previamente por el alumno, de lo contrario, se le permitirá al alumno crear una lista de canciones (haciendo uso de sus puntos) desde YouTube y/o Spotify, etc
       Examples:
           | Usuario | Opcion | Mensaje |
           | Javie  | "Musica(Simbolo)"  | “Se reproduce las canciones predeterminadas por el usuario”  |