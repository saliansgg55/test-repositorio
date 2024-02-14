# Usa la imagen oficial de Apache
FROM httpd:latest

# Copia tu sitio web estático al directorio de documentos de Apache en el contenedor
#COPY ./mi_sitio_web /usr/local/apache2/htdocs/

# Exponer el puerto 80 para que el servidor Apache pueda ser accesible desde el exterior
EXPOSE 80