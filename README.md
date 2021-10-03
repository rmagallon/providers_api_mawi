# Api Manejo de Proveedores

Esta es la api creada para consultar la disponibilidad en la agenda de los proveedores y sus servicios.

## Uso
1) Instalar mysql
2) Crear el usuario rmagallon con la contraseña 12345678
3) Dar todos los permisos al usuario creado con el siguiente comando
```bash
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';
```
4) Descargar el repositorio
5) Ingresar directorio donde esta alojado el proyecto
6) En la consola ejecutar el comando 
```bash
bundle exec rails s
```
7) Para acceder a las APIS mediante el URL utilizar las siguientes rutas:

  - /providers/id_del_proveedor/check_availability?fecha_llegada=fecha_de_llegada&hora_llegada=hora_de_llegada
   
    ejemplo: /providers/1/check_availability?fecha_llegada=2021-10-02&hora_llegada=12:00
  
  - /providers/id_del_proveedor/get_hours_per_month
    
     ejemplo: /providers/1/get_hours_per_month
  
  - /providers/id_del_proveedor/get_appointments_ordered
   
    ejemplo: /providers/1/get_appointments_ordered
   

# Creado por
Roberto Magallon Hernandez

2021
