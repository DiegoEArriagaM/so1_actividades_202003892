- Primero se creo el archivo *actividad.sh*.

- Se movio el *.sh* al la carpeta **/usr/local/bin**
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio/USAC/Sistemas Operativos 1/so1_actividades_202003892/actividad4</b></font>$ sudo cp actividad.sh /usr/local/bin
[sudo] contraseña para diego: 
</pre>

<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/usr/local/bin</b></font>$ ls
actividad.sh  <font color="#2AA1B3"><b>corepack</b></font>  <font color="#26A269"><b>datamodeler</b></font>  <font color="#2AA1B3"><b>n</b></font>  <font color="#26A269"><b>node</b></font>  <font color="#2AA1B3"><b>nodemon</b></font>  <font color="#2AA1B3"><b>npm</b></font>  <font color="#2AA1B3"><b>npx</b></font>
</pre>

- Se cambiaron los permisos del archivo
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>~/Escritorio/USAC/Sistemas Operativos 1/so1_actividades_202003892/actividad4</b></font>$ sudo chmod +x /usr/local/bin/actividad.sh
</pre>

- Se creo el servicio en la carpeta correspondiente

<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/etc/systemd/system</b></font>$ sudo touch actividad4.service
[sudo] contraseña para diego: 
</pre>

- Y se escribio en este lo siguiente
<pre><span style="background-color:#FFFFFF"><font color="#300A24">  GNU nano 6.2                                                  actividad4.service *                                                          </font></span>
<font color="#26A269"><b>[Unit]</b></font>
Description=Mi servicio super-útil

<font color="#26A269"><b>[Service]</b></font>
ExecStart=/usr/local/bin/actividad.sh

<font color="#26A269"><b>[Install]</b></font>
WantedBy=multi-user.target
</pre>

- Se comprueba el estado del servicio
<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/etc/systemd/system</b></font>$ sudo chmod 640 actividad4.service
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/etc/systemd/system</b></font>$ sudo systemctl status actividad4
○ actividad4.service - Mi servicio super-útil
     Loaded: loaded (/etc/systemd/system/actividad4.service; disabled; vendor preset: enabled)
     Active: inactive (dead)
</pre>

- Se inicia el servicio

<pre><font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/etc/systemd/system</b></font>$ sudo systemctl start actividad4.service
<font color="#26A269"><b>diego@diego-HP-Laptop-14-dq1xxx</b></font>:<font color="#12488B"><b>/etc/systemd/system</b></font>$ sudo systemctl status actividad4.service
○ actividad4.service - Mi servicio super-útil
     Loaded: loaded (/etc/systemd/system/actividad4.service; enabled; vendor preset: enabled)
     Active: inactive (dead) since Tue 2023-08-29 19:32:23 CST; 2s ago
    Process: 13588 ExecStart=/usr/local/bin/actividad.sh (code=exited, status=0/SUCCESS)
   Main PID: 13588 (code=exited, status=0/SUCCESS)
        CPU: 6ms

ago 29 19:32:23 diego-HP-Laptop-14-dq1xxx systemd[1]: Started Mi servicio super-útil.
ago 29 19:32:23 diego-HP-Laptop-14-dq1xxx actividad.sh[13588]: Bienvenido a mi servicio
ago 29 19:32:23 diego-HP-Laptop-14-dq1xxx actividad.sh[13588]: mi-servicio: 2023-08-29 19:32:23
ago 29 19:32:23 diego-HP-Laptop-14-dq1xxx systemd[1]: actividad4.service: Deactivated successfully.
</pre>
