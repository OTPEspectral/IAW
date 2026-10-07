Practica 1: Servidores, Proxies y Certificados.

Marca 1 (pública): portal.web.online
Marca 2 (privada): interna.web.offline
MPM: 

Creamos nuestra estructura de archivos de la siguiente forma:
.
├── conf
└── html
    ├── default
    ├── portal-offline
    └── portal-online



Creamos nuestro archivo v-hosts, algunas de las configuraciones son:

ServerName: Nombre interno que se le da a ese archivo web.
DocumentRoot: Root del archivo html de la web.
ErrorLog: Donde guarda el log de errores
CustomLog: Donde guarda el log de accesos. Usamos combined para registrar
IP, fecha, HTTP, URL, etc...
Directory: Define los permisos de seguridad:
	AllowOverride: Le dice a Apache que ignore los archivos de .htaccess.
	Require all granted: Permite a los usuarios conectarse por HTTP.
Options: Desactiva el listado de directorios. En caso de no tener .html, 
no muestra la lista de archivos.
Files: 
	Require all denied: Bloquea el acceso al archivo confidencial.
	Al intentar acceder a él, saltará un error 403.

Ahora modificamos el archivo httpd.conf de apache añadiendo "Include conf/extra/httpd-vhosts.conf
para decirle a apache los VirtualHosts que queremos añadir.
