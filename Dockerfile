# Dockerfile
FROM node:22-alpine

# Définit le répertoire de travail
WORKDIR /app

# Copie les fichiers de dépendances
COPY package*.json ./

# Installe les dépendances de production
RUN npm install --omit=dev

# Copie le reste de l'application
COPY . .

# Expose le port 3000
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]