# Imagen base
FROM node:18

# Crear directorio de la app
WORKDIR /usr/src/app

# Copiar archivos de la app
COPY package*.json ./
RUN npm install
COPY . .

# Exponer puerto
EXPOSE 5678

# Comando para ejecutar n8n
CMD ["npx", "n8n"]
