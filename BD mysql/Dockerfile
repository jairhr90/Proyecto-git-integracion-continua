# Usa la imagen oficial de MySQL
FROM mysql:8.0

# Establece las variables de entorno para la base de datos
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=tienda_virtual
ENV MYSQL_USER=tiendadmin
ENV MYSQL_PASSWORD=tiendapassword

# Copia el archivo de inicialización al contenedor Docker
COPY init.sql /docker-entrypoint-initdb.d/

# Exponer el puerto 3306 para acceso MySQL
EXPOSE 3306
