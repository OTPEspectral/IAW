FROM httpd:2.4

RUN mkdir -p /usr/local/apache2/htdocs/default /usr/local/apache2/htdocs/portal-online /usr/local/apache2/htdocs/interna-offline 

RUN echo "<h1>Sitio Default</h1>" > /usr/local/apache2/htdocs/default/index.html && \
    echo "<h1>Portal Web Online</h1>" > /usr/local/apache2/htdocs/portal-online/index.html && \
    echo "<h1>Red Interna Offline</h1>" > /usr/local/apache2/htdocs/interna-offline/index.html

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

EXPOSE 80
