##Escanea la dir ip
import os
computadora = "200.33.171.77"
from subprocess import Popen, PIPE
process = Popen(['nmap', ' -sT', computadora], stdout=PIPE, stderr=PIPE)
stdout, stderr = process.communicate()
print(stdout)

##Guarda los resultados del escaneo
##cambiar la ruta del archivo para usarlo
fic = open("D:\oscar\OneDrive\Documentos\ITM\OCTAVO SEMESTRE\Progra Web\python\\res.txt", "w")
fic.write(str(stdout))
fic.close()


##PARTE QUE LEE EL ARCHIVO
##cambiar la ruta del archivo para usarlo
archivo = open ("D:\oscar\OneDrive\Documentos\ITM\OCTAVO SEMESTRE\Progra Web\python\\res.txt")
texto = ""
for linea in archivo.readlines():
    texto += linea
archivo.close()

#print(" ------------------ TEXTO NORMAL -----------------")
#print(texto)
x = texto.split('\\r\\n')
#print(" ------------------ TEXTO CON SPLIT -----------------")
#print(x)


## Se requiere importar para conectarse a MySQL
import mysql.connector as mysql

# Inicio del código
print ("Python conectándose a MySQL")

# Conectándose a MySQL
conexion = mysql.connect( host='localhost', user= 'root', passwd='', db='datospuertos' )
operacion = conexion.cursor()

##RECUPERA LOS DATOS DE LOS PUERTOS ÚNICAMENTE
for y in range(len(x)):
    datos = list(filter(None , x[y].split(" "))) 
    if y > 5 and y < (len(x)-3):
        print (datos)
        sql = ( "INSERT INTO datos (ip,puerto,estado,servicio) VALUES ('200.33.171.77',%s,%s,%s)")
        operacion.execute(sql,datos)
        conexion.commit()


conexion.close()