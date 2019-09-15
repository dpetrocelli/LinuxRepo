#!/bin/bash

# echo carga los nombre de grupos
# xargs -n 1 -> build and execute command lines from standard input
# -n 1 -> max-args -> 1  

# STEP 1 - Agregar Grupos
echo developers testers auditors | xargs -n 1 sudo groupadd 2> /dev/null
# STEP 2 - Agregar usuarios
echo manager juan maria ferb | xargs -n 1 sudo useradd 2> /dev/null

# STEP 3 - Folders in repo (del and create)
sudo rm -R repo/stable repo/unstable repo/testing 2> /dev/null
sudo mkdir repo/stable repo/unstable repo/testing 2> /dev/null

# STEP 4 - Create files, copy destinations and remove originals
touch main.c readme
echo "repo/stable/ repo/unstable/ repo/testing/" | xargs -n 1 sudo cp main.c 
echo "repo/stable/ repo/unstable/ repo/testing/" | xargs -n 1 sudo cp readme 
rm main.c readme 

# STEP 5 - Change owners
# STABLE
sudo chown -R manager repo/stable
sudo chgrp -R auditors repo/stable

# TESTING
sudo chown -R manager repo/testing
sudo chgrp -R testers repo/testing

# UNSTABLE
sudo chown -R manager repo/unstable
sudo chgrp -R developers repo/unstable

# Agregar Juan dueño stable
# What is ACL ?
# Access control list (ACL) provides an additional, 
# more flexible permission mechanism for file systems.
# -> how can you do it without making user a member of group,
# ->  here comes in picture Access Control Lists, ACL helps us to do this trick.
sudo setfacl -m u:juan:rwx repo/stable/
sudo setfacl -m u:maria:rwx repo/testing/
sudo setfacl -m u:ferb:rwx repo/unstable/

# y esto? 
# Crear un directorio dentro /repo llamado notas en el cual absolutamente cualquier usuario pueda crear 
# archivos, pero sin borrar los de otro usuario.
mkdir notas
chmod o=wrx notas
# Le clavo el sticky bit 
# Significa que los elementos que hay en ese directorio sólo pueden ser renombrados o borrados 
# por el propietario del elemento, el propietario del directorio o el usuario root
chmod +t notas


