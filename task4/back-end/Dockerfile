# Utilise une image de base Ubuntu
FROM ubuntu:latest

# Met à jour les paquets et installe Python 3 et pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Installe Flask et flask-cors pour autoriser les requêtes cross-origin
RUN pip3 install flask flask-cors

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier de l’API dans le conteneur
COPY ./api.py /app/api.py

# Lance l’application Flask sur le port 5252
CMD ["python3", "api.py"]
