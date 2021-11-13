 Feature:HU09:Como alumno quiero realizar comentarios de forma anónima sobre el servicio recibido por parte de los entrenadores, para comunicar con detalle los puntos positivos y negativos de cada uno y, así, ayudar tanto a la comunidad como a los administradores de la app a conocer mejor a sus miembros.
     Scenario:E01:El alumno desea comentar sus impresiones después de haber completado por lo menos el 50% del ciclo planificado por el entrenador.
         TA01
         Given que me encuentro en el perfil del entrenador
         When presiono la opción "Comentar desempeño de forma anónima" 
         Then el sistema deberá mostrar una caja de texto donde el alumno podrá redactar su opinión 
         general acerca del desempeño del entrenador con el que trabajó.
         
         Examples:
             | Entrenador |                 Opción                 |                        Caja de textos                       |
             |   Andrés   | "Comentar desempeño de forma anónima"  | "El entrenador no realiza las sesiones de manera correcta"  |

 
 
     
 
 
     
 
   
      


