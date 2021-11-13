 Feature:HU04:Como alumno quiero registrar mis progresos con respecto al desarrollo del plan de entrenamiento, para mantener a mi entrenador al tanto de mi situación.
     Scenario:E01:El alumno ha terminado una sesión de ejercicio.
         TA01
         Given que he terminado mi sesión de ejercicio
         When presiono el botón "Finalizar"
         Then se muestran en pantalla 3 opciones para valorar el cansancio actual después de la rutina. Después de seleccionar el estado de 
         cansancio, inmediatamente aparece una ventana con el mensaje de felicitaciones y el calendario con todas mis sesiones cumplidas.

        Examples:
            |  Sesión  |      Botón   |                                    Opción-Ventan                                                     |
            |  Cardio  | "Finalizar"  | "La opción ingresada es la primera - Felicidades, a continuación se muestran sus sesiones logradas"  |

     Scenario:E02:El alumno no ha terminado su sesión de ejercicio y ha presionado una opción de salir (botón retroceder).
         TA02
         Given que no he terminado mi sesión de ejercicio 
         When presiono alguna opción de salir
         Then aparece una ventana emergente que advierte que si no se cumple la 
         sesión por completo, entonces esta sesión no se registrará en el calendario de la app como un progreso.
         
         Examples:
             | Sesión | Opción |                          Advertencia                           |
             | Cardio | Salir  | "Si no finalizas la sesión, no se registrará tu avanze de hoy" |
        

      


