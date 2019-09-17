#!/bin/bash
''' Exercise 6 
Modificar los permisos de manera tal que todos los 
archivos generados a partir de ahora pertenezcan al grupo​ users​ .
'''

# STEP 1 - Validate group
var=$(cat /etc/group | grep grupoprueba)

if [ -z "$var" ]
then
    # if Vacio, creo
    echo " Group doesn't exists"
    echo -e "Eskl1bur" | sudo -S groupadd grupoprueba
    echo " Group has been created " 
    
    
else
    echo " User exists"
fi

# STEP 2 - Once group is ready, change folder owner (recursively) 
echo -e "Eskl1bur" | sudo -S chgrp grupoprueba -R repo/