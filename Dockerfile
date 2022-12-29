FROM httpd:2.4
COPY ./Files/ /usr/local/apache2/htdocs/
EXPOSE 80

