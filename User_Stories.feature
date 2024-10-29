---01
#lenguaje: es 
Feature: Registro del usuario en la app.
# Como persona interesada en el reciclaje, quiero registrarme en la aplicación brindando mis datos personales 
para acceder a todas las funcionalidades de Eco-Cycle.
       Scenario: Proceso de registro.
               Given que estoy en la pantalla de inicio
               And selecciono la opción de “<Unirme>”
               When selecciono la opción “<Registrarme>”
               And completo mis datos personales como mi correo electrónico y contraseña. 
                     |   usuario   |     correo           |    contraseña     | 
                     |    Juan     |  jmachuca@gmail.com  |    ********       |
                     |    María    | mangeles@gmail.com   |    *********      |
                Then debería poder crear mi cuenta y recibir un correo de confirmación.    

---02
#lenguaje: es 
Feature: Confirmación del registro del usuario en la app.
# Como persona interesada en el reciclaje, quiero confirmar mi correo electrónico para acceder a todas 
las funcionalidades de Eco-Cycle.

     Scenario: Confirmación de registro
               Given que ya complete mi registro
               And confirmo mi “<correo electronico>”
               When inicie sesión con mis credenciales
               Then el sistema me mostrara un mensaje de inicio de sesión satisfactorio
                     | Inicio de sesion     |    Satisfactorio           |      redirigiendo     | 
               And me redirigirá al panel principal de la app con acceso a las funcionalidades de la app.
---02
#lenguaje: es 
Feature: Confirmación del registro del usuario en la app.
# Como persona interesada en el reciclaje, quiero confirmar mi correo electrónico para acceder a todas 
las funcionalidades de Eco-Cycle.

     Scenario: Error de registro
               Given que ya complete mi registro
               And confirmo mi “<correo electronico>”
               When inicie sesión con mis credenciales
               Then el sistema me mostrara un mensaje de error inicio de sesión 
                     | Inicio de sesion     |   Error en inicio de sesion |  Hubo un problema valdidando el correo  |
               And me dirá la razón exacta del problema

---03
#lenguaje: es 
Feature: Inicio de Sesión.
#Como usuario registrado, quiero poder iniciar sesión fácilmente para  acceder a mi cuenta y a mis datos 
guardados

     Scenario: Scenario namecenario : Inicio de sesión exitoso
               Given que estoy en la pantalla de inicio,
               And seleccione “<Inicio de sesion>”
               When ingreso mi correo electrónico y contraseña correctos. 
               Then debería poder acceder a mi cuenta sin problemas.
|                      Acción                          |  Resultado esperado                             |
|   Seleccionar Inicio de sesión                       |  La pantalla de inicio de sesión debe aparecer  |
|   Ingresar correo electrónico y contraseña correctos |  El sistema debe permitir el acceso a la cuenta |

---03
#lenguaje: es 
Feature: Inicio de Sesión.
#Como usuario registrado, quiero poder iniciar sesión fácilmente para  acceder a mi cuenta y a mis datos 
guardados

     Scenario: Recuperación de contraseña
               Given que olvide mi contraseña
               And seleccione “<Olvidaste tu contrasena>”
               When ingreso a mi correo electronico  
               And restablezco mi contraseña mediante el correo recibido
               Then el sistema debe permitirme iniciar sesión con la nueva contraseña.

| Acción                                      | Resultado esperado                                              |
| Seleccionar Olvidaste tu contraseña         | La opción de recuperación de contraseña debe aparecer           |
| Ingresar correo electrónico                 | El sistema debe enviar un correo para restablecer la contraseña |
| Ingresar nueva contraseña                   | El acceso debe ser exitoso con la nueva contraseña              |


---04
#lenguaje: es 
Feature: Completar Perfil de Usuario
#Como nuevo usuario de Eco-Cycle, quiero completar mi perfil personal ingresando mi dirección 
y preferencias de notificación para recibir información personalizada sobre reciclaje en mi zona.

     Scenario: Proceso de completar perfil
               Given que ya me registré en la aplicación
               And estoy en la sección “<Mi perfil>”
               When ingreso mi dirección y selecciono mis preferencias de notificación
               And le doy clic en “<Guardar cambios>”
               Then el sistema guardará la información y empezaré a recibir notificaciones personalizadas

    Examples:
      | Acción                                        | Resultado esperado                                              |
      | Registrarse en la aplicación                  | El usuario debe estar registrado en la app                      |
      | Estar en la sección Mi perfil                 | El sistema debe mostrar la página de edición del perfil         |
      | Ingresar dirección y seleccionar preferencias | La información debe ser ingresada correctamente                 |
      | Hacer clic en Guardar cambios                 | El sistema debe guardar los cambios                             |
      | Notificaciones personalizadas activadas       | El usuario debe empezar a recibir notificaciones personalizadas |

---04
#lenguaje: es 
Feature: Completar Perfil de Usuario
#Como nuevo usuario de Eco-Cycle, quiero completar mi perfil personal ingresando mi dirección 
y preferencias de notificación para recibir información personalizada sobre reciclaje en mi zona.

     Scenario: Recepción de notificaciones personalizadas
               Given que ya ingresé mi dirección
               And he activado las notificaciones
               When hay un evento de reciclaje cercano a mi ubicación
               Then el sistema me enviará una notificación a mi dispositivo

    Examples:
      | Acción                                 | Resultado esperado                                            |
      | Ingresar dirección y activar notificaciones | El sistema debe tener la información necesaria           |
      | Enviar notificación                     | El usuario debe recibir una notificación en su dispositivo   |


---05
#lenguaje: es 
Feature: Suscripción a la versión Premium
#Como usuario de Eco-Cycle, quiero suscribirme a la versión premium para acceder a las 
funcionalidades avanzadas como contenido exclusivo y reportes personalizados

     Scenario: Proceso de suscripción
               Given que estoy en mi perfil de usuario
               And selecciono la opción “<Suscribirse a premiun>”
               When ingreso los datos de mi tarjeta de pago
               And le doy clic a “<Realizar pago>”
               Then el sistema mostrará un mensaje de suscripción exitosa
               And inmediatamente dará acceso a las funciones premium

      | Acción                                      | Resultado esperado                                                   |
      | Estar en el perfil de usuario               | El sistema debe mostrar el perfil del usuario                        |
      | Seleccionar la opción Suscribirse a Premium | El sistema debe llevar al flujo de suscripción                       |
      | Ingresar datos de la tarjeta de pago        | Los datos deben ser ingresados correctamente                         |
      | Hacer clic en "Realizar pago"               | El sistema debe procesar el pago                                     |
      | Mostrar mensaje de suscripción exitosa      | El usuario debe ver un mensaje confirmando la suscripción            |
      | Acceso a funciones premium                  | El usuario debe tener acceso inmediato a las funcionalidades premium |

---05
#lenguaje: es 
Feature: Suscripción a la versión Premium
#Como usuario de Eco-Cycle, quiero suscribirme a la versión premium para acceder a las 
funcionalidades avanzadas como contenido exclusivo y reportes personalizados

     Scenario: Visualización de beneficios premium
               Given que quiero conocer los beneficios de la versión premium antes de suscribirme
               And estoy en la pantalla de suscripción
               When selecciono “<Beneficios de premium>”
               Then el sistema mostrará una lista detallada de las ventajas que brinda la versión premium en 
               comparación con la gratuita

      | Acción                                | Resultado esperado                                                 |
      | Estar en la pantalla de suscripción   | El sistema debe mostrar la opción de suscribirse a Premium         |
      | Seleccionar Beneficios de premium     | El sistema debe mostrar una lista detallada de los beneficios      |
      | Comparar con la versión gratuita      | El usuario debe ver una clara comparación entre ambas versiones    |


---06
#lenguaje: es 
#Como usuario premium de Eco-Cycle, quiero gestionar mi suscripción 
para ver mi plan actual, modificarlo o cancelarlo si lo deseo.
Feature: Gestión de Suscripción Premium

     Scenario: Visualización del plan de suscripción
               Given que soy suscriptor premium de Eco-Cycle
                And me encuentro en la sección “<Mi Perfil>”
               When selecciono la opción “<Gestionar suscripcion>”
               Then el sistema me mostrará mi plan actual y la fecha de renovación

      | Acción                                | Resultado esperado                                           |
      | Ser suscriptor premium                | El sistema debe reconocer al usuario como premium            |
      | Estar en la sección Mi perfil         | El sistema debe mostrar las opciones del perfil del usuario  |
      | Seleccionar Gestionar suscripción     | El sistema debe mostrar el plan actual y fecha de renovación |

---06
#lenguaje: es 
#Como usuario premium de Eco-Cycle, quiero gestionar mi suscripción 
para ver mi plan actual, modificarlo o cancelarlo si lo deseo.
Feature: Gestión de Suscripción Premium

     Scenario: Cancelación de suscripción
               Given que quiero cancelar mi suscripción
               And estoy en la sección “<Gestionar suscripcion>”
               When selecciono la opción “<Cancelar suscripcion>”
               And el sistema me muestra un mensaje preguntándome "¿Está seguro de que desea cancelar la suscripción?"
               Then doy clic en “<Si>”
               And el sistema cancela automáticamente mi suscripción

      | Acción                                      | Resultado esperado                                                |
      | Estar en la sección Gestionar suscripción   | El sistema debe mostrar las opciones de gestión de la suscripción |
      | Seleccionar Cancelar suscripción            | El sistema debe preguntar si se desea cancelar                    |
      | Confirmar con "Sí"                          | El sistema debe cancelar automáticamente la suscripción           |


---07
#lenguaje: es 
#Como usuario premium de Eco-Cycle, quiero administrar mi membresía para ver que se pueda 
adaptar a mis necesidades y asegurarse que siga cumpliendo con mis expectativas.
Feature: Administración de membresía Premium

     Scenario: Modificación de suscripción
               Given que soy suscriptor premium
               And quiero cambiar mi plan actual
               When selecciono la opción “<Modificar suscripcion>”
               Then el sistema me permitirá actualizar mi plan
               And veré los cambios reflejados inmediatamente

      | Acción                              | Resultado esperado                                         |
      | Ser suscriptor premium              | El sistema debe reconocer al usuario como premium          |
      | Seleccionar Modificar suscripción   | El sistema debe mostrar opciones de cambio de plan         |
      | Actualizar plan                     | Los cambios deben reflejarse inmediatamente en el sistema  |

---07
#lenguaje: es 
#Como usuario premium de Eco-Cycle, quiero administrar mi membresía para ver que se pueda 
adaptar a mis necesidades y asegurarse que siga cumpliendo con mis expectativas.
Feature: Administración de membresía Premium

     Scenario: Renovación automática de suscripción
               Given que mi suscripción premium está próxima a renovarse
               And tengo activada la opción de renovación automática
               When llega la fecha de renovación
               Then el sistema procesa el pago automáticamente
               And me enviará una notificación de renovación exitosa

      | Acción                                       | Resultado esperado                                         |
      | Activar opción de renovación automática      | El sistema debe tener la renovación automática activada    |
      | Llegar a la fecha de renovación              | El sistema debe procesar el pago automáticamente           |
      | Enviar notificación de renovación exitosa    | El usuario debe recibir una notificación de la renovación  |

---08
#lenguaje: es 
Feature: Mapa de Calor para Áreas con Residuos
#Como ciudadano preocupado por el medio ambiente, quiero ver un mapa de calor que muestre 
las áreas con mayor acumulación de basura para saber dónde actuar y contribuir al reciclaje.

      Scenario: Visualización del mapa de calor
               Given que me encuentro en la pantalla principal de la app
               And tengo activada la función de localización
               When selecciono la opción “<Mapa de calor>”
               Then el sistema me muestra las áreas con mayor acumulación de basura en mi zona

      | Acción                        | Resultado esperado                                                 |
      | Activar localización          | El sistema debe acceder a la ubicación del usuario                 |
      | Seleccionar Mapa de calor     | El sistema debe mostrar el mapa con áreas de acumulación de basura |

---08
#lenguaje: es 
Feature: Mapa de Calor para Áreas con Residuos
#Como ciudadano preocupado por el medio ambiente, quiero ver un mapa de calor que muestre 
las áreas con mayor acumulación de basura para saber dónde actuar y contribuir al reciclaje.

     Scenario: Descripción detallada de los residuos
               Given que quiero conseguir más detalles del informe
               And selecciono una “<zona del mapa>”
               When hago clic en un área resaltada
               Then el sistema me muestra una descripción del tipo de residuos y recomendaciones de reciclaje

      | Acción                            | Resultado esperado                                                 |
      | Seleccionar una zona en el mapa   | El sistema debe resaltar las áreas con mayor acumulación de basura |
      | Hacer clic en un área resaltada   | El sistema debe mostrar detalles de residuos y recomendaciones     |


---09
#lenguaje: es 
Feature: Función de historial de reportes
#Como ciudadano que reporta áreas con problemas de residuos, quiero poder acceder al historial de 
mis reportes, para verificar que los problemas estén abordando de manera efectiva.

     Scenario: Visualización del Historial de Reportes
               Given que he realizado varios reportes sobre áreas con problemas de residuos
               And quiero revisar el estado de mis reportes anteriores
               When accedo a la sección “<Historial de reportes>” en la app
               Then puedo ver una lista de todos los reportes que he enviado

      | Acción                                | Resultado esperado                                                  |
      | Acceder a Historial de Reportes       | El sistema debe mostrar una lista de todos los reportes enviados    |
      | Revisar estado de reportes anteriores | El usuario debe poder visualizar el estado de cada reporte enviado  |

---09
#lenguaje: es 
Feature: Función de historial de reportes
#Como ciudadano que reporta áreas con problemas de residuos, quiero poder acceder al historial de 
mis reportes, para verificar que los problemas estén abordando de manera efectiva.

     Scenario: Actualización y Notificación del Estado del Reporte
               Given que un reporte ha sido actualizado
               And quiero saber el estado más reciente
               When el estado de uno de mis reportes cambia
               Then el sistema me enviará una notificación con la actualización del estado del reporte

      | Acción                                  | Resultado esperado                                                               |
      | Cambiar estado de un reporte            | El sistema debe enviar una notificación con la actualización del estado          |
      | Recibir notificación                    | El usuario debe poder ver los detalles del estado actualizado en la notificación |

---10
#lenguaje: es 
Feature: Función de reporte de áreas necesitadas de mantenimiento
# Como ciudadano que desea mantener la ciudad limpia,
quiero poder reportar áreas específicas que necesitan mantenimiento y limpieza,
para que podamos tomar acción y mejorar la gestión de residuos.

     Scenario: Reportar un área necesitada de mantenimiento
               Given que me encuentro en la pantalla principal de la app
               And tengo activada la función de localización
               When selecciono la opción “<Reportar Mantenimiento>”
               And elijo una ubicación en el mapa donde hay acumulación de residuos o problemas de limpieza
               Then el sistema envía el reporte para que se pueda coordinar la intervención necesaria

      | Acción                             | Resultado esperado                                                           |
      | Activar localización               | El sistema debe acceder a la ubicación del usuario                           |
      | Seleccionar Reportar Mantenimiento | El usuario selecciona una ubicación en el mapa y el sistema envía el reporte |

---10
#lenguaje: es 
Feature: Función de reporte de áreas necesitadas de mantenimiento
# Como ciudadano que desea mantener la ciudad limpia,
quiero poder reportar áreas específicas que necesitan mantenimiento y limpieza,
para que podamos tomar acción y mejorar la gestión de residuos.

     Scenario: Confirmación y seguimiento del Reporte
               Given que se ha enviado un reporte sobre un área necesitada de mantenimiento
               When el sistema recibe y procesa el reporte
               Then debería recibir una confirmación de que mi reporte ha sido recibido
               And una notificación con el estado del reporte, para saber si se está gestionando el problema reportado

      | Acción                         | Resultado esperado                                                          |
      | Enviar reporte                 | El sistema debe procesar y enviar una confirmación al usuario               |
      | Recibir notificación de estado | El usuario debe recibir actualizaciones sobre el estado del reporte enviado |


---11
#lenguaje: es
Feature: Consejos Educativos sobre el reciclaje
# Como usuario interesado en el reciclaje,
quiero recibir consejos educativos sobre cómo separar y reciclar diferentes tipos de residuos para cuidar mi planeta.


     Scenario: Visualización de consejos educativos generales
               Given que me encuentro en la página de inicio en la app
               And deseo aprender sobre el reciclaje
               When selecciono la opción “<Consejos>”
               And me muestra una lista de opciones, elijo la opción “<Consejos de reciclaje>”
               Then se me mostrarán recomendaciones sobre cómo separar correctamente plásticos, papel y residuos orgánicos

      | Acción                            | Resultado esperado                                                  |
      | Seleccionar Consejos              | El sistema debe mostrar una lista de consejos                       |
      | Seleccionar Consejos de reciclaje | El sistema debe mostrar recomendaciones sobre cómo separar residuos |

---11
#lenguaje: es
Feature: Consejos Educativos sobre el reciclaje
# Como usuario interesado en el reciclaje,
quiero recibir consejos educativos sobre cómo separar y reciclar diferentes tipos de residuos para cuidar mi planeta.

     Scenario: Visualización de consejos personalizados
               Given que quiero recibir consejos personalizados
               And he completado mi perfil
               When ingreso a la sección de “<Consejos>”
               And me muestra una lista de opciones, elijo la opción “<Consejos personalizados>”
               Then recibiré recomendaciones de reciclaje basadas en los residuos que suelo generar en mi hogar

      | Acción                                | Resultado esperado                                                                  |
      | Completar perfil                      | El sistema debe personalizar las recomendaciones según el perfil del usuario        |
      | Seleccionar Consejos personalizados | El sistema debe mostrar recomendaciones basadas en los residuos generados en el hogar |

---12
#lenguaje: es
Feature: Integración con redes sociales para promover el reciclaje
# Como usuario que apoya el reciclaje,
quiero tener la opción de compartir mis logros y consejos sobre reciclaje en redes sociales,
para motivar a otros a adoptar prácticas de reciclaje en sus vidas.


     Scenario: Compartir Logros de Reciclaje
               Given que he completado una meta de reciclaje en la app
                And quiero compartir este logro
               When selecciono la opción “<Compartir Logro>”
               Then puedo publicar un mensaje en mis redes sociales (como Facebook o Twitter) que destaque mi compromiso con el reciclaje y anime a mis amigos a hacer lo mismo

      | Acción                            | Resultado esperado                                          |
      | Completar meta de reciclaje       | El sistema debe permitir compartir el logro                 |
      | Seleccionar Compartir Logro     | El usuario debe poder publicar el logro en sus redes sociales |

---12
#lenguaje: es
Feature: Integración con redes sociales para promover el reciclaje
# Como usuario que apoya el reciclaje,
quiero tener la opción de compartir mis logros y consejos sobre reciclaje en redes sociales,
para motivar a otros a adoptar prácticas de reciclaje en sus vidas.


     Scenario: Compartir Consejos de Reciclaje
               Given que estoy visualizando consejos educativos en la app
               And quiero compartir estos consejos con mi red
               When selecciono la opción “<Compartir Consejo>”
               Then puedo publicar los consejos sobre reciclaje en mis redes sociales, con un enlace a la app para que otros usuarios también puedan beneficiarse de la información

      | Acción                              | Resultado esperado                                                                   |
      | Visualizar consejos educativos      | El sistema debe permitir compartir los consejos                                      |
      | Seleccionar Compartir Consejo       | El usuario debe poder publicar los consejos en redes sociales con un enlace a la app |

---13
#lenguaje: es
Feature: Recordatorios para reciclaje y desperdicios
# Como usuario comprometido con la gestión de residuos,
quiero recibir recordatorios periódicos para asegurarme de que no olvido reciclar y manejar correctamente los residuos,
para mantener mis hábitos de reciclaje consistentes.

     Scenario: Configuración de Recordatorios
               Given que me encuentro en la sección de configuración de la app
               And quiero establecer recordatorios para reciclar
               When selecciono la opción “<Configurar Recordatorios>”
               Then puedo elegir la frecuencia y el tipo de recordatorios que deseo recibir (por ejemplo, recordatorios semanales para reciclar ciertos materiales o recordatorios para verificar el estado de los contenedores de reciclaje)

      | Acción                               | Resultado esperado                                                     |
      | Seleccionar Configurar Recordatorios | El sistema debe permitir elegir la frecuencia y tipo de recordatorios  |
      | Configurar frecuencia                | El usuario debe poder elegir recordatorios semanales o personalizados  |

---13
#lenguaje: es
Feature: Recordatorios para reciclaje y desperdicios
# Como usuario comprometido con la gestión de residuos,
quiero recibir recordatorios periódicos para asegurarme de que no olvido reciclar y manejar correctamente los residuos,
para mantener mis hábitos de reciclaje consistentes.

     Scenario: Recepción de Recordatorios
               Given que he configurado mis recordatorios de reciclaje
               And es el momento en que se activa uno de mis recordatorios
               When recibo una notificación de la app
               Then el sistema me recordará qué materiales debo reciclar y cómo prepararlos para el reciclaje

      | Acción                        | Resultado esperado                                                               |
      | Configurar recordatorios      | El sistema debe activar los recordatorios configurados                           |
      | Recibir notificación          | El usuario debe recibir recordatorios con detalles sobre qué materiales reciclar |

---14
#lenguaje: es
Feature: Participación en desafíos y/o de reciclaje
# Como usuario entusiasta del reciclaje,
quiero participar en diversos desafíos, competencias y eventos de reciclaje con otros miembros de la comunidad
para hacer de una manera más divertida y recreativa el método de reciclaje en apoyo al planeta.

     Scenario: Participación en Desafíos
               Given que estoy interesado en retos de reciclaje
               And quiero unirme a un desafío y/o evento comunitario
               When accedo a la sección de “<Eventos>” en la app
               Then puedo ver una lista de desafíos de reciclaje actuales, como “<Recuerdos de nuestros eventos>”, y unirme al desafío más interesante para así realizar un apoyo en forma de “<retos>” a nuestro planeta

      | Acción                       | Resultado esperado                                        |
      | Acceder a Eventos            | El sistema debe mostrar una lista de desafíos disponibles |
      | Seleccionar desafío          | El usuario debe poder unirse al desafío más interesante   |

---14
#lenguaje: es
Feature: Participación en desafíos y/o de reciclaje
# Como usuario entusiasta del reciclaje,
quiero participar en diversos desafíos, competencias y eventos de reciclaje con otros miembros de la comunidad
para hacer de una manera más divertida y recreativa el método de reciclaje en apoyo al planeta.

     Scenario: Visualización de Resultados, Rankings y Comentarios
               Given que he participado en un desafío y/o evento de reciclaje
               And el desafío ha concluido
               When reviso la sección de “<Comentarios>” y “<Calificaciones>” en la app
               Then puedo ver los resultados del desafío, incluyendo mi posición en el ranking y los premios o reconocimientos ganados
               And puedo visualizar los comentarios de los participantes que han estado apoyando y sus experiencias

      | Acción                           | Resultado esperado                                                |
      | Revisar resultados               | El sistema debe mostrar la posición del usuario en el ranking     |
      | Ver comentarios                  | El usuario debe poder leer los comentarios de otros participantes |

---15
#lenguaje: es
Feature: Compensación por Reciclar
# Como usuario activo en la comunidad de reciclaje,
quiero acumular puntos y recibir recompensas cada vez que recicle
para estar motivado a seguir haciéndolo.

     Scenario: Acumulación de puntos automática
               Given que participo activamente en el programa de reciclaje
               And he registrado mis acciones de reciclaje
               When reviso “<Mi Perfil>”
               Then el sistema actualizará automáticamente mis puntos acumulados basados en la cantidad de residuos reciclados

      | Acción                           | Resultado esperado                                               |
      | Registrar acciones de reciclaje  | El sistema debe contabilizar la cantidad de residuos reciclados  |
      | Revisar perfil                   | El usuario debe ver los puntos acumulados actualizados           |

---15
#lenguaje: es
Feature: Compensación por Reciclar
# Como usuario activo en la comunidad de reciclaje,
quiero acumular puntos y recibir recompensas cada vez que recicle
para estar motivado a seguir haciéndolo.

     Scenario: Historial de puntos
               Given que quiero ver mi progreso
               And accedo a la sección de “<Historial de Puntos>”
               When reviso el historial de puntos
               Then el sistema me mostrará un registro detallado de las actividades de reciclaje 
               And los puntos ganados por cada una

      | Acción                          | Resultado esperado                                                         |
      | Acceder a Historial de Puntos   | El sistema debe mostrar un registro detallado de las actividades y puntos  |
      | Revisar historial de puntos     | El usuario debe poder ver la cantidad de puntos ganados por cada actividad |


---16
#lenguaje: es
Feature: Canje de Puntos por Beneficios Locales
# Como usuario que acumula puntos en el programa de reciclaje,
quiero poder canjear mis puntos por beneficios y descuentos en negocios locales,
para que mi esfuerzo en reciclar se traduzca en recompensas tangibles en mi comunidad.

     Scenario: Catálogo de Beneficios
               Given que he acumulado puntos en el programa de reciclaje
               And quiero ver qué beneficios están disponibles
               When accedo a la sección de “<Canje de Puntos>” en la app
               Then el sistema me mostrará un catálogo de beneficios y descuentos ofrecidos por negocios locales, como restaurantes, tiendas y servicios, que puedo obtener a cambio de mis puntos acumulados

      | Acción                      | Resultado esperado                                                                |
      | Acceder a Canje de Puntos   | El sistema debe mostrar un catálogo de beneficios ofrecidos por negocios locales  |
      | Ver beneficios              | El usuario debe poder ver opciones de canje basadas en sus puntos acumulados      |

---16
#lenguaje: es
Feature: Canje de Puntos por Beneficios Locales
# Como usuario que acumula puntos en el programa de reciclaje,
quiero poder canjear mis puntos por beneficios y descuentos en negocios locales,
para que mi esfuerzo en reciclar se traduzca en recompensas tangibles en mi comunidad.

     Scenario: Proceso de Canje
               Given que he elegido un beneficio para canjear
               And tengo suficientes puntos para el canje
               When selecciono el beneficio y confirmo el canje
               Then el sistema me enviará un código de descuento o una tarjeta de regalo electrónica
               And actualizará mi saldo de puntos en consecuencia

      | Acción                  | Resultado esperado                                                                   |
      | Seleccionar beneficio   | El sistema debe permitir al usuario confirmar el canje de puntos                     |
      | Confirmar canje         | El sistema debe enviar un código o tarjeta de regalo y actualizar el saldo de puntos |


---17
#lenguaje: es
Feature: Feedback y Evaluación de Eventos de Reciclaje
# Como participante en eventos de reciclaje comunitarios,
quiero poder proporcionar feedback y evaluar los eventos a los que asisto,
para ayudar a mejorar futuras iniciativas y compartir mi experiencia con otros usuarios.

     Scenario: Envío de Feedback después del Evento
               Given que he asistido a un evento de reciclaje
               And el evento ha finalizado
               When accedo a la sección de “<Eventos>” en la app
               Then puedo enviar comentarios sobre el evento, incluyendo aspectos positivos y áreas de mejora

      | Acción                        | Resultado esperado                                                             |
      | Acceder a Mi Participación    | El sistema debe permitir enviar comentarios sobre el evento                    |
      | Enviar comentarios            | El usuario debe poder proporcionar feedback sobre aspectos positivos y mejoras |

---17
#lenguaje: es
Feature: Feedback y Evaluación de Eventos de Reciclaje
# Como participante en eventos de reciclaje comunitarios,
quiero poder proporcionar feedback y evaluar los eventos a los que asisto,
para ayudar a mejorar futuras iniciativas y compartir mi experiencia con otros usuarios.

     Scenario: Visualización de Evaluaciones y Comentarios
               Given que he proporcionado feedback sobre un evento
               And quiero ver cómo otros usuarios han evaluado el evento
               When reviso la sección de “<Eventos>” en la app
               Then puedo ver una calificación promedio del evento
               And leer comentarios de otros participantes

      | Acción                          | Resultado esperado                                                        |
      | Revisar Evaluaciones de Eventos | El sistema debe mostrar una calificación promedio y comentarios de otros  |
      | Ver comentarios                 | El usuario debe poder leer los comentarios de otros participantes         |


---18
#lenguaje: es
Feature: Participación en Eventos de Reciclaje Comunitario
# Como usuario que quiere participar en la comunidad de reciclaje,
quiero unirme a eventos locales de reciclaje para contribuir al bienestar de mi comunidad.


     Scenario: Notificación de eventos cercanos
               Given que he activado las notificaciones
               And quiero estar informado sobre los eventos
               When haya un “<Unirme>” de reciclaje en mi área
               Then el sistema me enviará una notificación con los detalles del evento

      | Acción                     | Resultado esperado                                                     |
      | Activar notificaciones     | El sistema debe enviar notificaciones sobre eventos cercanos           |
      | Recibir notificación       | El usuario debe recibir los detalles del evento (lugar, hora, etc.)    |

---18
#lenguaje: es
Feature: Participación en Eventos de Reciclaje Comunitario
# Como usuario que quiere participar en la comunidad de reciclaje,
quiero unirme a eventos locales de reciclaje para contribuir al bienestar de mi comunidad.


     Scenario: Confirmación de asistencia
               Given que he decidido participar en un evento
               And selecciono “<Unirme>” a un evento específico
               When confirmo mi asistencia
               Then el sistema me enviará una confirmación
               And enviará recordatorios del evento con los detalles del lugar y hora

      | Acción                  | Resultado esperado                                                      |
      | Seleccionar Unirme      | El usuario debe poder unirse al evento                                  |
      | Confirmar asistencia    | El sistema debe enviar una confirmación y recordatorios con detalles    |


---19
#lenguaje: es
Feature: Planificación a la participación de Reciclaje Comunitario
# Como usuario interesado en el reciclaje,
quiero planificar eventos futuros para ayudar a mejorar el bienestar de mi comunidad
y fomentar la participación de otros usuarios en iniciativas de reciclaje.

  
     Scenario: Visualización de eventos futuros
               Given que quiero planificar mi participación en eventos
               And deseo ver una lista de eventos futuros
               When acceda a la sección de “<Eventos de Reciclaje>”
               Then el sistema me mostrará los eventos programados en mi área para las próximas semanas

      | Acción                         | Resultado esperado                                                        |
      | Acceder a Eventos de Reciclaje | El sistema debe mostrar los eventos programados para las próximas semanas |
      | Ver eventos futuros            | El usuario debe poder ver una lista de eventos disponibles en su área     |


---19
#lenguaje: es
Feature: Planificación a la participación de Reciclaje Comunitario
# Como usuario interesado en el reciclaje,
quiero planificar eventos futuros para ayudar a mejorar el bienestar de mi comunidad
y fomentar la participación de otros usuarios en iniciativas de reciclaje.

     Scenario: Cancelación de participación
               Given que ya no puedo asistir a un evento
               And quiero cancelar mi participación
               When seleccione la opción de “<Cancelar asistencia>”
               Then el sistema eliminará mi confirmación
               And me enviará un mensaje de cancelación exitosa

      | Acción                          | Resultado esperado                                               |
      | Seleccionar Cancelar asistencia | El sistema debe eliminar la confirmación de asistencia al evento |
      | Enviar mensaje de cancelación   | El usuario debe recibir una notificación de cancelación exitosa  |


---20
#lenguaje: es
Feature: Acceso y navegación del menú principal de la aplicación
# Como usuario de la aplicación,
quiero acceder fácilmente al menú principal desde cualquier pantalla,
para poder navegar entre las diferentes secciones de la aplicación de manera eficiente.

     Scenario: Acceso al menú principal
               Given que estoy en cualquier pantalla de la aplicación
               And quiero acceder al menú principal
               When seleccione el icono de “<Menu>”
               Then se desplegará el menú lateral con todas las opciones disponibles

      | Acción                    | Resultado esperado                                                   |
      | Seleccionar el icono Menú | El sistema debe mostrar el menú lateral con las opciones disponibles |

---20
#lenguaje: es
Feature: Acceso y navegación del menú principal de la aplicación
# Como usuario de la aplicación,
quiero acceder fácilmente al menú principal desde cualquier pantalla,
para poder navegar entre las diferentes secciones de la aplicación de manera eficiente.

     Scenario: Navegación desde el menú
               Given que quiero moverme a una sección específica de la aplicación
               And estoy visualizando el menú
               When seleccione una opción del “<Menu>”
               Then seré redirigido a esa sección correspondiente sin necesidad de volver a la pantalla principal

      | Acción                      | Resultado esperado                                        |
      | Seleccionar opción del Menú | El usuario debe ser redirigido a la sección seleccionada  |


---21
#lenguaje: es
Feature: Información de la Startup
# Como usuario,quiero conocer un poco sobre el startup
para saber las motivaciones y contactos que brinda la aplicación.

     Scenario: Información del Startup
               Given que busco información sobre el startup
               And seleccione la opción de “<Contactos>”
               When esté dentro de esta opción
               Then la aplicación me dirigirá a la información de la app y Startup

      | Acción                        | Resultado esperado                                            |
      | Seleccionar opción Contactanos| El sistema debe mostrar la información de la app y la Startup |


---22
#lenguaje: es
Feature: Traqueo de Camiones
# Como usuario,quiero hacer uso de la función de traqueo de camiones
para recibir notificaciones sobre días de recolección.

     Scenario: Información de los horarios de los camiones
               Given que soy un usuario registrado en la aplicación
               And me encuentro en la zona de “<Camiones>”
               When seleccione esa opción
               Then podré ver la ruta de los camiones
               And he permitido las notificaciones
               Then me llegará una notificación indicando que un camión se encuentra a 5 minutos

      | Acción                        | Resultado esperado                                                   |
      | Seleccionar opción Camiones   | El sistema debe mostrar la ruta de los camiones                      |
      | Permitir notificaciones       | El usuario debe recibir una notificación cuando un camión esté cerca |

