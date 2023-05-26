#Tamaño del archivo 

ls -lh ../data/Marra2014_data.fasta

## Creación de la copia Marra2014_data.fasta en el directorio sandbox
cp ../data/Marra2014_data.fasta my_file.fasta

#contigs que se clasifican como isogrupo00036
grep -c isogrup00036 my_file.fasta

## Separación del delimitador original de dos espacios con una coma
cat my_file.fasta | tr -s ' ' ',' | head -n 3

# Guardar y sobrescrito de archivo temporal
cat my_file.fasta | tr -s ' ' ',' > my_file.tmp

mv my_file.tmp my_file.fasta

#isogrupos únicos en el archivo
grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l

#contig con el mayor número de lectura

grep '>' my_file.fasta | cut -d ',' -f 1,3 | head -n 3

#Ordenar según el número de lee
grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n | head -n 5 
