# Parte 1: Gestión de Usuarios
## Creación de usuarios
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo adduser usuario1
Añadiendo el usuario `usuario1&apos; ...
Añadiendo el nuevo grupo `usuario1&apos; (1001) ...
Añadiendo el nuevo usuario `usuario1&apos; (1001) con grupo `usuario1&apos; ...
Creando el directorio personal `/home/usuario1&apos; ...
Copiando los ficheros desde `/etc/skel&apos; ...
Nueva contraseña: 
CONTRASEÑA INCORRECTA: La contraseña no supera la verificación de diccionario - Es demasiado simple/sistemática.
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
Cambiando la información de usuario para usuario1
Introduzca el nuevo valor, o presione INTRO para el predeterminado
	Nombre completo []:    
	Número de habitación []: 
	Teléfono del trabajo []: 
	Teléfono de casa []: 
	Otro []: 
¿Es correcta la información? [S/n] S 
</pre>
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo adduser usuario2
Añadiendo el usuario `usuario2&apos; ...
Añadiendo el nuevo grupo `usuario2&apos; (1002) ...
Añadiendo el nuevo usuario `usuario2&apos; (1002) con grupo `usuario2&apos; ...
Creando el directorio personal `/home/usuario2&apos; ...
Copiando los ficheros desde `/etc/skel&apos; ...
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
Cambiando la información de usuario para usuario2
Introduzca el nuevo valor, o presione INTRO para el predeterminado
	Nombre completo []: 
	Número de habitación []: 
	Teléfono del trabajo []: 
	Teléfono de casa []: 
	Otro []: 
¿Es correcta la información? [S/n] s
</pre>

<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo adduser usuario3
Añadiendo el usuario `usuario3&apos; ...
Añadiendo el nuevo grupo `usuario3&apos; (1003) ...
Añadiendo el nuevo usuario `usuario3&apos; (1003) con grupo `usuario3&apos; ...
Creando el directorio personal `/home/usuario3&apos; ...
Copiando los ficheros desde `/etc/skel&apos; ...
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
Cambiando la información de usuario para usuario3
Introduzca el nuevo valor, o presione INTRO para el predeterminado
	Nombre completo []: 
	Número de habitación []: 
	Teléfono del trabajo []: 
	Teléfono de casa []: 
	Otro []: 
¿Es correcta la información? [S/n] s
</pre>
 
 ## Asignación de Contraseñas
 <pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo passwd usuario1
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo passwd usuario2
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo passwd usuario3
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
</pre>

## Información de Usuarios
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo id usuario1
uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)
</pre>

## Eliminación de Usuarios
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo userdel usuario3
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ </pre>

# Parte 2: Gestión de Grupos
## Creación de Grupos
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo groupadd grupo1
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo groupadd grupo2
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ 
</pre>

## Agregar Usuarios a Grupos
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo usermod -a -G grupo1 usuario1
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo usermod -a -G grupo2 usuario2
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ 
</pre>

## Verificar Membresía
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo groups usuario1
usuario1 : usuario1 grupo1
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo groups usuario2
usuario2 : usuario2 grupo2
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ 
</pre>

## Eliminar Grupo
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo groupdel grupo2
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ sudo groups usuario2
usuario2 : usuario2
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio</b></font>$ 
</pre>

# Parte 3: Gestión de Permisos
## Creación de Archivos y Directorios:
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home/usuario1</b></font>$ su usuario1
Contraseña: 
</pre>
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home</b></font>$ cd /home/usuario1
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ 
</pre>
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ echo &quot;Esto es un ejemplo&quot;&gt;archivo1.txt
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ ls
archivo1.txt
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ 
</pre>
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ mkdir directorio1
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ cd directorio1
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ echo &quot;Esto es otro ejemplo&quot;&gt;archivo2.txt
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ ls
archivo2.txt
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ 
</pre>

## Verificar Permisos
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ ls -l
total 8
-rw-rw-r-- 1 usuario1 usuario1   19 ago  9 18:20 archivo1.txt
drwxrwxr-x 2 usuario1 usuario1 4096 ago  9 18:21 <font color="#12488B"><b>directorio1</b></font>
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ ls -ld
drwxr-x--- 3 usuario1 usuario1 4096 ago  9 18:20 <font color="#12488B"><b>.</b></font>
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ </pre>

## Modificar Permisos usando `chmod` con Modo Numérico:
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ chmod 640 archivo1.txt
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ ls -l
total 8
-rw-r----- 1 usuario1 usuario1   19 ago  9 18:20 archivo1.txt
drwxrwxr-x 2 usuario1 usuario1 4096 ago  9 18:21 <font color="#12488B"><b>directorio1</b></font>
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ </pre>

## Modificar Permisos usando `chmod` con Modo Simbólico
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ chmod u+rwx archivo2.txt
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ ls -l
total 4
-rwxrw-r-- 1 usuario1 usuario1 21 ago  9 18:21 <font color="#26A269"><b>archivo2.txt</b></font>
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ </pre>

## Cambiar el Grupo Propietario
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ chown usuario1:grupo1 archivo2.txt
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ ls -l
total 4
-rwxrw-r-- 1 usuario1 grupo1 21 ago  9 18:21 <font color="#26A269"><b>archivo2.txt</b></font>
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/directorio1</b></font>$ 

</pre>

## Configurar Permisos de Directorio
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ chmod 740 directorio1
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ ls -l
total 8
-rw-r----- 1 usuario1 usuario1   19 ago  9 18:20 archivo1.txt
drwxr----- 2 usuario1 usuario1 4096 ago  9 18:21 <font color="#12488B"><b>directorio1</b></font>
<font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ 
</pre>

## Comprobación de Acceso
<pre><font color="#26A269"><b>usuario1@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~</b></font>$ su usuario2
Contraseña: 
<font color="#26A269"><b>usuario2@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home/usuario1</b></font>$ cat archivo1.txt
cat: archivo1.txt: Permiso denegado
<font color="#26A269"><b>usuario2@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home/usuario1</b></font>$ cat directorio1/archivo2.txt
cat: directorio1/archivo2.txt: Permiso denegado
<font color="#26A269"><b>usuario2@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home/usuario1</b></font>$ 
</pre>

## Verificación Final
<pre><font color="#26A269"><b>usuario2@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home/usuario1</b></font>$ ls -l
ls: no se puede abrir el directorio &apos;.&apos;: Permiso denegado
<font color="#26A269"><b>usuario2@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home/usuario1</b></font>$ ls -ld
ls: no se puede acceder a &apos;.&apos;: Permiso denegado
<font color="#26A269"><b>usuario2@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/home/usuario1</b></font>$ 
</pre>

# Reflexion Final

**¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?**

    Es importante sobre todo en ambientes empresariales, en los cuales diferentes usuarios tienen acceso a los mismos equipos, ya que de esta forma se evita que usuarios no autorizados realicen cambios en componentes claves de todo el sistema, poniendo el riesgo el funcionamiento de este

**¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?**

    Otra forma de realizar cambios en los permisos de los archivos es mediante la interfaz gráfica que ofrecen los distintos sistemas operativos derivados de Linux.

    Tambien se pueden realizar cambios directamente en los archivos de texto que almacenan toda la información sobre los usuarios, pero hay que tener cuidado con que los cambios sean cuerrentes con todos los archivos.
