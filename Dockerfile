# Usa una imagen base de Ubuntu
FROM httpd:2.4
#COPY ./public-html/ /usr/local/apache2/htdocs/
# Instala software adicional si es necesario
#RUN apt-get update && apt-get install -y \
#    paquete1 \
#    paquete2 \
#    paquete3

# Configura el entorno de trabajo
#WORKDIR /app

        
# Exponer el puerto 80 para que el servidor web esté accesible
EXPOSE 80
# Define el comando por defecto para ejecutar cuando el contenedor inicie
#CMD ["comando", "argumento"]
