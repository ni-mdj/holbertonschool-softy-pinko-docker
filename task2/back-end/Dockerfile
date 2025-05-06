# Utilise la dernière version de l'image officielle Ubuntu comme base
FROM ubuntu:latest

# Met à jour la liste des paquets et met à niveau les paquets existants
RUN apt-get update && apt-get upgrade -y

# Installe Python3 et pip3
RUN apt-get install -y python3 python3-pip

# Supprime le fichier qui empêche parfois l'installation de paquets Python
RUN rm /usr/lib/python*/EXTERNALLY-MANAGED || true

# Installe Flask avec pip3 (et non apt-get)
RUN pip3 install flask

# Définit le dossier de travail à l'intérieur du conteneur
WORKDIR /app

# Copie le fichier api.py dans le conteneur, dans le dossier /app
COPY ./api.py /app/api.py

# Commande exécutée quand le conteneur démarre : lance le serveur Flask
CMD ["python3", "api.py"]
