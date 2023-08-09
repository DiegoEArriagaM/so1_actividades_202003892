# Gestión de Usuarios
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