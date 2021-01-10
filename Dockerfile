FROM httpd:latest
#donde van a estar los ficheros html
COPY /html/* /usr/local/apache2/htdocs/

