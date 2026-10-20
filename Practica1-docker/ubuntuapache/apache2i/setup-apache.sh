#!/bin/bash

# Exit on error
set -e

echo "Creando estructura de directorios para Apache..."
mkdir -p apache2/sites-available \
         apache2/sites-enabled \
         apache2/conf-available \
         apache2/conf-enabled \
         apache2/mods-available \
         apache2/mods-enabled

echo "Creando apache2/ports.conf..."
cat << 'EOF' > apache2/ports.conf
Listen 80

<IfModule ssl_module>
	Listen 443
</IfModule>
EOF

echo "Creando apache2/sites-available/000-default.conf..."
cat << 'EOF' > apache2/sites-available/000-default.conf
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html

    ErrorLog /var/log/apache2/error.log
    CustomLog /var/log/apache2/access.log combined

    <Directory /var/www/html>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
EOF

echo "Habilitando el sitio por defecto en sites-enabled..."
cp apache2/sites-available/000-default.conf apache2/sites-enabled/000-default.conf

echo "¡Estructura de Apache creada exitosamente!"
