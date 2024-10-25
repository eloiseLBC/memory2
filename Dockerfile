# Utiliser l'image de base Nginx
FROM nginx:latest

# Installer le package "file"
RUN apt-get update && apt-get install -y file

# Copier la configuration Nginx depuis ton projet vers le container
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copier les sources du site dans le dossier de destination
COPY html/ /var/concentration/html/

# Exposer le port 80 pour accéder au site
EXPOSE 80

# Lancer Nginx en mode frontal
CMD ["nginx", "-g", "daemon off;"]