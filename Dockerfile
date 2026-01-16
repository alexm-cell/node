# Utiliser l'image officielle Node.js 18
FROM node:18

# Créer le répertoire de l'application dans le conteneur
WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le code de l'application
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Commande pour lancer l'application
CMD ["node", "index.js"]
