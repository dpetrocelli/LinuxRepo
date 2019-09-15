# TUBERIAS FILE

#1 - Redireccionar la salida del comando ​ rpm -qa​ a un archivo llamado paquetes-rpm
rpm -qa > paquetes-rpm

# 3) Repetir el ejercicio 1) pero redireccionando el erro
rpm -qa 2> error-paquetes-rpm
'''
 5) Crear un paquete cpio con el comando find de todos los archivos con extensión 
# ​ .png​ del sistem
# CPIO
# cpio se usa actualmente para copiar ficheros en o desde el árbol de directorio o archivo cpio, 
# o bien copiar estructuras completas de directorios en unidades extraibles.
'''
#find / -name "*frame.png" 2>/dev/null | cpio -o > paquetecpio.cpio

# 6 - Descomprimir las cosas en el directorio actual
#cpio -i < paquetecpio.cpio
# 7 , reenviar passwd con errores
#find / -name "passwd" > salida.txt 2> errores.txt
# 8 , same file 
find / -name "passwd" &> todojunto
# 9 Comando shuff y restp 
ls -R /etc 2>/dev/null | shuf -n1
# 10  Corregir conceptualmente 
​cut -d":" -f6 /etc/passwd > salida | xargs ls -ld​
# NO IDEA

# QUE DEVUELVEN ?
# ls | cat -> lo mismo q ls pero hacia abajo
# ls > hola -> listado a archivo
# cat < /etc/passwd | less
# -> less se usa para paginar en pantalla -> es la evolución del more
# -> es lo mismo que hacer less /etc/passwd
# -> o esto echo "/etc/passwd" | xargs -n1 less
# ls |sort -> ordena la salida del ls de manera alfabética

# Que hace 
#cut -d: -f1,7 /etc/passwd | awk -F: '{ print "El usuario "$1" usa la shell "$2 }'
# -d -> delimitador
# -f -> los campios que qiuero (1 y 7), luego el file 
# awk -F: '{ print "El usuario "$1" usa la shell "$2 }' -> con awk le digo que tome los param 
# $1 y $2 que efini antes

# Que harias con este
# find ./VirtualBox\ VMs/ -name "*vdi" | xargs file
# find / -name "*vdi" 2>/dev/null | xargs -0 > test