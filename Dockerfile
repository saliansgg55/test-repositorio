# Usa una imagen base de Ubuntu
FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
# Instala software adicional si es necesario
#RUN apt-get update && apt-get install -y \
#    paquete1 \
#    paquete2 \
#    paquete3

# Configura el entorno de trabajo
WORKDIR /app

RUN sed -i \
		-e 's/^#\(Include .*httpd-ssl.conf\)/\1/' \
		-e 's/^#\(LoadModule .*mod_ssl.so\)/\1/' \
		-e 's/^#\(LoadModule .*mod_socache_shmcb.so\)/\1/' \
		conf/httpd.conf
        

# Define el comando por defecto para ejecutar cuando el contenedor inicie
#CMD ["comando", "argumento"]