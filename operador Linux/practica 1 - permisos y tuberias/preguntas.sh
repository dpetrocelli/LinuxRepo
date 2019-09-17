# 1)¿Qué comando utilizamos para cambiar el grupo y usuario de un archivo al mismo tiempo?
# -> puedo hacer un pipe con chown + chgrp -> solo dejando uno o
# -> setfacl u: y g:

# 2)Cambiar el directorio bkp, para que le cambie el usuario dueño a root.
sudo chown root bkp

# 3)Cambiar el directorio test, para que el grupo le corresponda a root.

# 4)Cambiar el directorio bkp, para que recursivamente tenga como dueño root y grupo root.
sudo chown root bkp | sudo chgrp root bkp

# 1) ¿Qué tipo de redirecciones conocés?
# Redirecciones en linux:
# -> Redirecciones sobre la entrada, salida y error estandar -> < o >
# -> Tuberías, entrada proceso salida -> entrada a otro
#       -> Esto se hace haciendo que: 
                    # -> la salida estándar es la entrada estándar de otro
# 6) ¿Qué son los permisos especiales? ¿Cuáles son los permisos especiales existentes y para qué los usarían?
'''
* sticky bit
ficheros y directorios en sistemas UNIX 
ahora -> sticky bit se utiliza sobre directorios.
Cuando se le asigna a un directorio, significa que los elementos que hay en ese directorio 
solo pueden ser renombrados o borrados por su propietario o bien por root.

* SUID
 4XXX

 SUID sobre un fichero significa que el 
 que lo ejecute va a tener los mismos permisos que el que creó el archivo.

* SGID
El bit SGID es lo mismo que SUID, pero a nivel de grupo. Esto es, todo archivo que
tenga activo el SGID, al ser ejecutado, tendrás los privilegios del grupo al que pertenece.
El valor numérico es 2XXX. En cambio, cuando es establecido en un archivo, SGID permite a los 
usuarios ejecutar un programa como si ellos fueran el grupo propietario del archivo

'''
# 7) Buscar con el comando find los distintos archivos/directorios con permisos especiales
#  y en cada paso buscar uno diferente.
# sudo find / -perm 4000 2>/dev/null

# 12)¿Cuáles permisos se crean por defecto a los archivos y directorios? ¿Qué comando usamos para verificarlo?
# umask -> 0022 -> 022 -> por defecto el inverso and 755 (u=rwx,g=rx,o=rx)
# 13)¿Cómo cambiamos la máscara por defecto?
# umask y valor -> umask 0002
# 14) ¿Cómo hacemos para qué la máscara utilizada sea diferente?

