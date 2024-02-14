# Usa una imagen base de Node.js
FROM node:alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de la aplicación al directorio de trabajo en el contenedor
COPY . /app

# Instala las dependencias de la aplicación
RUN npm install

# Expone el puerto 3000
EXPOSE 3000

# Especifica el comando para iniciar la aplicación cuando se inicie el contenedor
CMD ["node", "app.js"]
