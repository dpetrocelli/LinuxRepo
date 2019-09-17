# -> Rta Punto 5 

# 0 ) Por si tenía algo voy a hacer el remove 

rm -R repo/ 2> /dev/null
# 1) crear repos
mkdir repo
mkdir repo/devs

# 2) cargar contenidos en repos
touch repo/file1 repo/file2 repo/file3

touch repo/devs/devs1 repo/devs/devs2 repo/devs/devs3

echo sarasa > repo/devs/devs1
#cat repo/devs/devs1
'''
var=$(echo "Eskl1bur" | sudo -S cat /etc/passwd | grep david)

if [ -z "$var" ]
then
    # Vacio, creo
    echo " User doesn-t exists"
    echo -e "Eskl1bur" | sudo -S useradd david
    echo -e "david\ndavid" | passwd david
    echo " User created " 
    
    
else
    #echo -e "Eskl1bur" | sudo userdel -r david
    echo " User exists"
fi
'''

# 4) Configurar los permisos, según enunciado
# Crear un directorio devs dentro /repo y modificar los permisos de manera tal que cualquiera pueda ingresar a /repo/devs pero sin permitir que “otros” pueda ver el contenido de /repo.

chmod o=x repo/