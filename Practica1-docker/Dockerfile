FROM httpd:2.4

RUN mkdir -p /usr/local/apache2/htdocs/default /usr/local/apache2/htdocs/portal-online /usr/local/apache2/htdocs/interna-offline 

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

EXPOSE 80
