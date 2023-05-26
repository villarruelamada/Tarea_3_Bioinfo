echo "Para la extracción del nombre de la columna"

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | head -n 1

echo "Número de valores distintos"

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l

echo "para obtener el Valor máximo"

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1

echo "Para obtener el Valor mínimo"

cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
