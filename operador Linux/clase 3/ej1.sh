# Si le clavo -i -> in file -> lo vuelca
# Si no lo saco al archivo de salida
sed 's/false/nologin/' /etc/passwd | grep vboxadd > salida
# si quiero que sean todas -> le clavo global  (g)
sed 's/A/X/g' as

# -r -> para manejar expresiones un poco más complejas
# -n -> mostrame solo lo que pasa en la epxresion regular
sed -n -r '/(nologin|false)/p' /etc/passwd

# Borrar
sed '/bash$/d' /etc/passwd

# si quiero hacer múltiples sustituciones tengo que poner -e 

#Ej 3 
sed 's/a/u/g' /etc/passwd 

# ej 4 
sed '/^$/d' hola
# ej 5
find /home/educacionit -name *.jpg | xargs sed 's/\.jpg$/\.png/g'
'''
Expresiones regulares
a) Básicas -> con lagunos caraateres literal -> grep y sed
b) extendidas -> ? * etc
'''

