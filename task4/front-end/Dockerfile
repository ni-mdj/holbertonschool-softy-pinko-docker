# 🌐 Image de base officielle Nginx
FROM nginx:latest

# 📁 Copier le code HTML dans le dossier prévu par Nginx
COPY ./softy-pinko-front-end /var/www/html/softy-pinko-front-end

# ⚙️ Copier le fichier de configuration personnalisé de Nginx
COPY ./softy-pinko-front-end.conf /etc/nginx/conf.d/default.conf
