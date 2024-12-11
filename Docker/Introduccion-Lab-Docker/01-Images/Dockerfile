# Sistema Operativo
FROM ubuntu:latest@sha256:99c35190e22d294cdace2783ac55effc69d32896daaa265f0bbedbcde4fbe3e5
# Software
RUN apt-get update -y && apt-get install nginx curl -y

# Aplicacion
WORKDIR /usr/share/nginx/html
RUN curl -L https://gitlab.com/linuxeroscolombia/docker/-/raw/main/univers.tar.gz -o univers.tar.gz
RUN tar -zxvf univers.tar.gz && rm -rf univers.tar.gz
RUN mv /usr/share/nginx/html/univers/* .
EXPOSE 80

# Ejecucion
CMD ["nginx", "-g", "daemon off;"]