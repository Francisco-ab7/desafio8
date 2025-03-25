# Imagen base de Node.js 
FROM node:20
# Establecer directorio de trabajo en el contenedor 
WORKDIR /dasafio8
# Copiar archivos del proyecto 
COPY package.json package-lock.json ./ 
RUN npm install 
# Copiar el resto del código.
COPY  .  . 
# Exponer el puerto 3000 
EXPOSE 3000 
# Comando para iniciar la aplicación 
CMD ["node", "app.js"] 