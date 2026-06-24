FROM nginx:alpine
LABEL maintainer="EcoVerde ADSO Team"
LABEL description="Imagen web institucional EcoVerde Antioquia S.A.S."
COPY app/ /usr/share/nginx/html/
EXPOSE 80
