# Usa una imagen base de Nginx
FROM nginx

# Copia los archivos HTML y CSS al directorio de trabajo de Nginx
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html

# Expone el puerto 80 (puerto por defecto de Nginx)
EXPOSE 80