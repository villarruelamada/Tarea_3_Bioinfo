# veces en que fueron grabados los niveles de los individuos 3 y 27 

echo “cuantas veces fueron los niveles de los individuos 3 y 27"

head -n 3 ../data/Gesquiere2011_data.csv

echo "Eneste caso solo se va a utilizar la columna 1, para esto"

cut -f 1 ../data/Gesquiere2011_data.csv | head -n 3

echo "Para contar el número de ocurrencias"

#Identificación masculina 3

echo "Para saber la identificación masculina 3”

cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 3

#Identificación masculina 27

echo "Para la identificación masculina 27 “

cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 27



# veces en que fueron grabados los niveles de los individuos 3 y 27 

echo “cuantas veces fueron los niveles de los individuos 3 y 27"

head -n 3 ../data/Gesquiere2011_data.csv

echo "Eneste caso solo se va a utilizar la columna 1, para esto"

cut -f 1 ../data/Gesquiere2011_data.csv | head -n 3

echo "Para contar el número de ocurrencias"

#Identificación masculina 3

echo "Para saber la identificación masculina 3”

cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 3

#Identificación masculina 27

echo "Para la identificación masculina 27 “

cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 27

# 2. Escriba un script tomando como entrada el nombre del archivo y el DNI del individuo, y devolviendo el número de registros para esa ID.

echo "Script tomando como entrada el nombre del archivo y el ID del individuo"

bash Ejercicio1.10.2.2.sh ../data/Gesquiere2011_data.csv 27

# 3. Escriba un script que devuelva el número de vecees que se tomaron muestras de cada individuo

echo "Número de veces que se tomaron las muestras de cada individuo"

echo "Primero se obtienen las identificaciones únicas"

#Para leer la entrada del comando línea

cut -f 1 $1 | grep -c -w $2

myIDS=`tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $myIDS
do
    mycounts=`bash Ejercicio1.10.2.2.sh ../data/Gesquiere2011_data.csv $id`
    echo "ID:" $id "counts:" $mycounts
done
