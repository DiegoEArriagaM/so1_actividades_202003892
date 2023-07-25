# Tipos de Kernel
## Comunes
### Kernel monolítico
  Es de gran tamaño que puede gestionar todas las tareas. Se encarga de la gestión de memoria y procesos, así como de la comunicación entre los procesos y el soporte de las diferentes funciones de los drivers y el hardware. Los sistemas operativos que recurren al Kernel monolítico son Linux, OS X y Windows.

  Posee todos los privilegios para acceder a dispositivos de entrada / salida (E / S), memoria, interrupciones de hardware y la pila de CPU. Tienen que incorporar código que interactúe con muchos dispositivos, E / S y canales de interrupción, y otros operadores de hardware. 

  Esta forma de núcleo es la base para Linux, Unix, MS-DOS y Mac OS. Los sistemas operativos más nuevos generalmente usan un Kernel híbrido para permitir un mantenimiento más sencillo y mejoras en el sistema operativo.

### Microkernel
Están diseñados con pequeños tamaños que contiene la cantidad casi mínima de funciones y características necesarias para implementar un sistema operativo a fin de maximizar la flexibilidad de implementación, de modo que permita que otras partes del sistema operativo se implementen de manera eficiente, ya que no impone muchas políticas.. Para cumplir con todas las tareas como un Kernel monolítico cuenta con diferentes módulos. Solo el Mach de OS X es el único que utiliza el microkernel.

### Kernel híbrido
Combinación entre el microkernel y el Kernel monolítico. Nos encontramos ante un Kernel grande, pero compacto y que puede ser modulado y otras partes del mismo Kernel pueden cargarse de manera dinámica. Es utilizado en Linux y OS X.

Un núcleo híbrido ejecuta algunos servicios en el espacio del núcleo para reducir la sobrecarga de rendimiento de un microkernel tradicional, mientras sigue ejecutando el código del núcleo como servidores en el espacio del usuario.

Por ejemplo, un diseño de núcleo híbrido puede mantener el sistema de archivos virtuales y los controladores de bus dentro del núcleo y los controladores del sistema de archivos y los controladores de almacenamiento como programas de modo de usuario fuera del núcleo. 

## Poco comunes
### Nanokernel
Es un kernel aún más pequeño que el Microkernel. Su uso está destinado a sistemas embebidos ya que el nivel de fiabilidad es mayor. Ofrece abstracción de hardware, pero sin servicios del sistema. En la actualidad los microkernels también carecen de servicios del sistema, por lo tanto, los términos microkernal y nanokernal se han vuelto análogos. 

### Exokernel
Es un tipo de sistema operativo desarrollado en el Instituto de Tecnología de Massachusetts (MIT). Que busca proporcionar administración de recursos de hardware a nivel de aplicación.

La arquitectura exokernel está diseñada para separar la protección de recursos de la administración para facilitar la personalización específica de la aplicación.

Se considera innovadora ya que se estructura de manera vertical. Los núcleos son pequeños y su desarrollo tiene fines investigativos. En un exokernel la toma de decisiones está a cargo de los programas, para hacer el uso de los recursos del hardware en ciertas bibliotecas. El Kernel se limita a evitar errores en los permisos de hardware y eludir conflictos.

### Unikernel
Esta destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos. Es habitual en dispositivos de bajo consumo como los IoT.

### Anykernel
Busca conservar las cualidades de los Kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario.

# User vs Kernel Mode

Un procesador en una computadora que ejecuta Windows tiene dos modos diferentes: modo de usuario y modo kernel. El procesador cambia entre los dos modos según el tipo de código que se esté ejecutando en el procesador. Las aplicaciones se ejecutan en modo usuario y los componentes principales del sistema operativo se ejecutan en modo kernel.

## User Mode
Cuando inicia una aplicación en modo de usuario se crea un proceso para la aplicación. Se caracteriza por:

- El proceso proporciona a la aplicación un espacio de direcciones virtual privado y una tabla de identificadores privada.
- Debido a que el espacio de direcciones virtuales de una aplicación es privado, una aplicación no puede alterar los datos que pertenecen a otra aplicación.
- Cada aplicación se ejecuta de forma aislada y, si una aplicación se bloquea, el bloqueo se limita a esa aplicación. 
- Además de ser privado, el espacio de direcciones virtuales de una aplicación en modo de usuario está limitado.
- Un proceso que se ejecuta en modo de usuario no puede acceder a direcciones virtuales reservadas para el sistema operativo.
- Limitar el espacio de direcciones virtuales de una aplicación en modo de usuario impide que la aplicación altere y, posiblemente, dañe los datos críticos del sistema operativo.

## Kernel Mode
Son las aplicaciones que se suelen ejecutar por los interpretes de comandos, como las consolas de comandos. Se caracteriza por:

- Todo el código que se ejecuta en modo kernel comparte un único espacio de direcciones virtuales.
- Un controlador en modo kernel no está aislado de otros controladores y del propio sistema operativo.
- Si un controlador en modo kernel escribe accidentalmente en la dirección virtual incorrecta, los datos que pertenecen al sistema operativo u otro controlador podrían verse comprometidos.
- Si se bloquea un controlador en modo kernel, se bloquea todo el sistema operativo.