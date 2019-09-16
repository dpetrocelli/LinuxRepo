#Ej 1) Crear un archivo de texto con el siguiente contenido, separando cada campo con tabulaciones
#Ej 2) Usar un comando que permita discernir si hay espacios o tabulaciones entre cada campo
# opcion 1) -> od -ta ej1 
# opcion 2) -> cat -A ej1

# 3. Utilizar un comando que permite mostrar al revés el archivo generado en el ejercicio 1.
# opcion 1) -> tac ej1

# 4 - ejemplo cargar y lueg


# 3)¿Para qué sirve el comando cut? ¿Cómo obtienen el cuarto campo del archivo /etc/passwd?
#cut -d: -f4 /etc/passwd

# 4) ¿Para qué sirve el comando sort?¿Cómo ordenan por tamaño con sort el listado de ls -l /etc?
# ls -l /etc | sort -nk 5 (si quiero revés -> -r)
