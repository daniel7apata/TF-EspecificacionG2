 Feature:HU05:Como alumno quiero recibir recordatorios diarios sobre el plan de alimentación, para asegurarme de cumplirlo.
     Scenario:E01:El alumno quiere recibir notificaciones de la app
         TA01
          Given que el alumno se encuentra en la configuración de su rutina; y el alumno selecciona la opción "Definir recordatorio"
          When el alumno ingrese la hora para sus recordatorios
          Then el alumno recibirá recordatorios para ejercitarse a la hora que ha definido.
           
          Examples:
             |            Opción       | Hora definida|                 Recordatorio            |
             | “Definir recordatorio”  |      3PM     | "Son las 3 PM, es hora de ejercitarte"  |

