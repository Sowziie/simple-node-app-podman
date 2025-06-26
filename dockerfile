# Dockerfile

# Étape 1 : Utiliser une image officielle Node.js comme base
FROM node:22

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier les fichiers de package et installer les dépendances
COPY package*.json ./
RUN npm install

# Étape 4 : Copier tout le reste du projet
COPY . .

# Étape 5 : Exposer le port utilisé par l'app
EXPOSE 3000

# Étape 6 : Lancer l'app
CMD ["npm", "start"]
